(define (domain domain_name)

(:requirements :adl :fluents :typing)


(:types
    rover base peticion - object
    asentamiento almacen - base
)

(:predicates
    (estacionado ?r - rover ?b - base)                  ;El rover se encuentra estacionado en esa base
    (camino ?b1 - base ?b2 - base)                      ; Existe un camino entre ambas bases
    (peticion-abierta ?p - peticion ?a - asentamiento)  ; Petición realizada por un asentamiento
    (peticion-subministros ?p - peticion)               ; La petición es un subministro
    (peticion-personal ?p - peticion)                   ; La petición es personal
)

(:functions
    (subministros-rover ?r - rover)             ; Subministros que está transportando el rover
    (personal-rover ?r - rover)                 ; Personal que está transportando el rover
    (subministros-almacen ?b - almacen)         ; Subministros en el almacén
    (personal-asentamiento ?b - asentamiento)   ; Personal disponible en el asentamiento
    (peticiones-cerradas)                       ; Número de peticiones cerradas
)

(:action mover ; Mueve el rover de una base a otra
    :parameters (?r - rover ?origen - base ?destino - base)
    :precondition (and 
        (estacionado ?r ?origen)
        (or (camino ?origen ?destino) (camino ?destino ?origen))
    )
    :effect (and 
        (not (estacionado ?r ?origen))
        (estacionado ?r ?destino)
    )
)

(:action cargar-subministros ; Carga al rover todos los subministros disponibles en el almacén
    :parameters (?r - rover ?a - almacen)
    :precondition (and 
        (estacionado ?r ?a)
        (> (subministros-almacen ?a) 0)
        (= (subministros-rover ?r) 0)
        (= (personal-rover ?r) 0)
    )
    :effect (and 
        (increase (subministros-rover ?r) 1)
        (decrease (subministros-almacen ?a) 1)
    )
)

(:action embarcar-personal ; Embarca al rover todo el personal disponible en el asentamiento
    :parameters (?r - rover ?a - asentamiento)
    :precondition (and 
        (estacionado ?r ?a)
        (> (personal-asentamiento ?a) 0)
        (< (personal-rover ?r) 2)
        (= (subministros-rover ?r) 0)
    )
    
    :effect (and 
        (when
            (and (= (personal-rover ?r) 0) (>= (personal-asentamiento ?a) 1))
            (and (increase (personal-rover ?r) 1) (decrease (personal-asentamiento ?a) 1))
        )
        (increase (personal-rover ?r) 1) 
        (decrease (personal-asentamiento ?a) 1)
    )
)

(:action satisfacer-peticion-subministros ; Satisface las peticiones de subministros de los asentamientos
    :parameters (?r - rover ?a - asentamiento ?p - peticion)
    :precondition (and 
        (estacionado ?r ?a)
        (peticion-abierta ?p ?a)
        (peticion-subministros ?p)
        (> (subministros-rover ?r) 0)
    )
    :effect (and
        (decrease (subministros-rover ?r) 1)
        (not (peticion-abierta ?p ?a))
        (increase (peticiones-cerradas) 1)
    )
)

(:action satisfacer-peticion-personal ; Satisface las peticiones de personal de los asentamientos
    :parameters (?r - rover ?a - asentamiento ?p - peticion)
    :precondition (and 
        (estacionado ?r ?a)
        (peticion-abierta ?p ?a)
        (peticion-personal ?p)
        (> (personal-rover ?r) 0)
    )
    :effect (and 
        (decrease (personal-rover ?r) 1)
        (not (peticion-abierta ?p ?a))
        (increase (peticiones-cerradas) 1)
    )
)
)