;;; ---------------------------------------------------------
;;; ontoFinal.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontoFinal.owl
;;; :Date 05/12/2022 10:48:06

(defclass Fase
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot contiene
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Calentamiento
    (is-a Fase)
    (role concrete)
    (pattern-match reactive)
)

(defclass Ej_Principal
    (is-a Fase)
    (role concrete)
    (pattern-match reactive)
)

(defclass Recuperamiento
    (is-a Fase)
    (role concrete)
    (pattern-match reactive)
)

(defclass Ejercicio
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot aire_libre
        (type SYMBOL)
        (create-accessor read-write))
    (slot en_casa
        (type SYMBOL)
        (create-accessor read-write))
    (slot frecuencia
        (type INTEGER)
        (create-accessor read-write))
    (slot gimnasio
        (type SYMBOL)
        (create-accessor read-write))
    (slot intensidad
        (type STRING)
        (create-accessor read-write))
)

(defclass Aerobico
    (is-a Ejercicio)
    (role concrete)
    (pattern-match reactive)
    (slot duracion_aerobico
        (type INTEGER)
        (create-accessor read-write))
)

(defclass bailar
    (is-a Aerobico)
    (role concrete)
    (pattern-match reactive)
)

(defclass bici
    (is-a Aerobico)
    (role concrete)
    (pattern-match reactive)
)

(defclass caminar
    (is-a Aerobico)
    (role concrete)
    (pattern-match reactive)
)

(defclass correr
    (is-a Aerobico)
    (role concrete)
    (pattern-match reactive)
)

(defclass nadar
    (is-a Aerobico)
    (role concrete)
    (pattern-match reactive)
)

(defclass Ejs_Calentamiento
    (is-a Ejercicio)
    (role concrete)
    (pattern-match reactive)
)

(defclass Equilibrio
    (is-a Ejercicio)
    (role concrete)
    (pattern-match reactive)
    (slot duracion_equilibrio
        (type INTEGER)
        (create-accessor read-write))
)

(defclass andar_de_puntillas
    (is-a Equilibrio)
    (role concrete)
    (pattern-match reactive)
)

(defclass extension_de_cadera
    (is-a Equilibrio)
    (role concrete)
    (pattern-match reactive)
)

(defclass flexion_de_cadera
    (is-a Equilibrio)
    (role concrete)
    (pattern-match reactive)
)

(defclass levantamiento_lateral_pierna
    (is-a Equilibrio)
    (role concrete)
    (pattern-match reactive)
)

(defclass tai_chi
    (is-a Equilibrio)
    (role concrete)
    (pattern-match reactive)
)

(defclass Estiramientos
    (is-a Ejercicio)
    (role concrete)
    (pattern-match reactive)
)

(defclass Flexibilidad
    (is-a Ejercicio)
    (role concrete)
    (pattern-match reactive)
    (slot duracion_flexibilidad
        (type INTEGER)
        (create-accessor read-write))
)

(defclass estiramientos_cuadriceps
    (is-a Flexibilidad)
    (role concrete)
    (pattern-match reactive)
)

(defclass estiramientos_muneca
    (is-a Flexibilidad)
    (role concrete)
    (pattern-match reactive)
)

(defclass estiramientos_pantorrillas
    (is-a Flexibilidad)
    (role concrete)
    (pattern-match reactive)
)

(defclass estiramientos_tendones_muslo
    (is-a Flexibilidad)
    (role concrete)
    (pattern-match reactive)
)

(defclass estiramientos_tobillos
    (is-a Flexibilidad)
    (role concrete)
    (pattern-match reactive)
)

(defclass estiramientos_triceps
    (is-a Flexibilidad)
    (role concrete)
    (pattern-match reactive)
)

(defclass rotacion_cadera
    (is-a Flexibilidad)
    (role concrete)
    (pattern-match reactive)
)

(defclass rotacion_hombros
    (is-a Flexibilidad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Musculacion
    (is-a Ejercicio)
    (role concrete)
    (pattern-match reactive)
    (slot peso_ejercicio
        (type FLOAT)
        (create-accessor read-write))
    (slot repeticiones
        (type INTEGER)
        (create-accessor read-write))
)

(defclass curl_biceps
    (is-a Musculacion)
    (role concrete)
    (pattern-match reactive)
)

(defclass elevacion_piernas_lados
    (is-a Musculacion)
    (role concrete)
    (pattern-match reactive)
)

(defclass extension_rodilla
    (is-a Musculacion)
    (role concrete)
    (pattern-match reactive)
)

(defclass extension_triceps
    (is-a Musculacion)
    (role concrete)
    (pattern-match reactive)
)

(defclass flexion_hombros
    (is-a Musculacion)
    (role concrete)
    (pattern-match reactive)
)

(defclass flexion_plantar
    (is-a Musculacion)
    (role concrete)
    (pattern-match reactive)
)

(defclass levantar_brazos
    (is-a Musculacion)
    (role concrete)
    (pattern-match reactive)
)

(defclass levantarse_silla
    (is-a Musculacion)
    (role concrete)
    (pattern-match reactive)
)

(defclass CondicionFisica
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot ahoga_subir_escalera
        (type SYMBOL)
        (create-accessor read-write))
    (slot bebe_alcohol
        (type SYMBOL)
        (create-accessor read-write))
    (slot caidas_frecuentemente
        (type SYMBOL)
        (create-accessor read-write))
    (slot cansancio_rapido
        (type SYMBOL)
        (create-accessor read-write))
    (slot comida_basura
        (type SYMBOL)
        (create-accessor read-write))
    (slot compra_con_frecuencia
        (type SYMBOL)
        (create-accessor read-write))
    (slot corre_con_frecuencia
        (type SYMBOL)
        (create-accessor read-write))
    (slot deporte_con_frecuencia
        (type SYMBOL)
        (create-accessor read-write))
    (slot dieta_variada
        (type SYMBOL)
        (create-accessor read-write))
    (slot dolor_articulaciones_tronco_inferior
        (type SYMBOL)
        (create-accessor read-write))
    (slot dolor_articulaciones_tronco_superior
        (type SYMBOL)
        (create-accessor read-write))
    (slot duerme_bien
        (type SYMBOL)
        (create-accessor read-write))
    (slot fuma
        (type SYMBOL)
        (create-accessor read-write))
    (slot operaciones_recientes
        (type SYMBOL)
        (create-accessor read-write))
    (slot pasea_con_frecuencia
        (type SYMBOL)
        (create-accessor read-write))
    (slot tirones_frecuentemente
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Enfermedades
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot artritis
        (type SYMBOL)
        (create-accessor read-write))
    (slot artrosis
        (type SYMBOL)
        (create-accessor read-write))
    (slot depresion
        (type SYMBOL)
        (create-accessor read-write))
    (slot diabetes
        (type SYMBOL)
        (create-accessor read-write))
    (slot enfermedades_cardiovasculares
        (type SYMBOL)
        (create-accessor read-write))
    (slot enfermedades_coronarias
        (type SYMBOL)
        (create-accessor read-write))
    (slot falta_equilibrio
        (type SYMBOL)
        (create-accessor read-write))
    (slot fibromialgia
        (type SYMBOL)
        (create-accessor read-write))
    (slot hipertension
        (type SYMBOL)
        (create-accessor read-write))
    (slot ictus
        (type SYMBOL)
        (create-accessor read-write))
    (slot obesidad
        (type SYMBOL)
        (create-accessor read-write))
    (slot osteoporosis
        (type SYMBOL)
        (create-accessor read-write))
    (slot parkinson
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Persona
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot padece_de
        (type INSTANCE)
        (create-accessor read-write))
    (slot tiene
        (type INSTANCE)
        (create-accessor read-write))
    (slot altura
        (type SYMBOL)
        (create-accessor read-write))
    (slot edad
        (type INTEGER)
        (create-accessor read-write))
    (slot mobilidad_reducida
        (type SYMBOL)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
    (slot peso
        (type SYMBOL)
        (create-accessor read-write))
    (slot preferencia_intensidad
        (type INTEGER)
        (create-accessor read-write))
    (slot sexo
        (type STRING)
        (create-accessor read-write))
)

(defclass Plan
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot compuesto_por
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Sesion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot formado_por
        (type INSTANCE)
        (create-accessor read-write))
    (slot dia
        (type STRING)
        (create-accessor read-write))
)

(definstances instances
    ([Marta] of Persona
         (tiene  [Media])
         (altura  167)
         (edad  70)
         (nombre  "Marta")
         (peso  70)
         (sexo  "F")
    )

    ([Media] of CondicionFisica
         (ahoga_subir_escalera  "true")
         (bebe_alcohol  "true")
         (caidas_frecuentemente  "false")
         (cansancio_rapido  "false")
         (comida_basura  "false")
         (compra_con_frecuencia  "true")
         (corre_con_frecuencia  "false")
         (deporte_con_frecuencia  "true")
         (dieta_variada  "true")
         (duerme_bien  "true")
         (fuma  "true")
         (operaciones_recientes  "false")
         (pasea_con_frecuencia  "true")
         (tirones_frecuentemente  "false")
    )

)