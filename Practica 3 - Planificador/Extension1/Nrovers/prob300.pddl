(define (problem prob300) (:domain peticionador)
(:objects
    r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19 r20 r21 r22 r23 r24 r25 r26 r27 r28 r29 r30 r31 r32 r33 r34 r35 r36 r37 r38 r39 r40 r41 r42 r43 r44 r45 r46 r47 r48 r49 r50 r51 r52 r53 r54 r55 r56 r57 r58 r59 r60 r61 r62 r63 r64 r65 r66 r67 r68 r69 r70 r71 r72 r73 r74 r75 r76 r77 r78 r79 r80 r81 r82 r83 r84 r85 r86 r87 r88 r89 r90 r91 r92 r93 r94 r95 r96 r97 r98 r99 r100 r101 r102 r103 r104 r105 r106 r107 r108 r109 r110 r111 r112 r113 r114 r115 r116 r117 r118 r119 r120 r121 r122 r123 r124 r125 r126 r127 r128 r129 r130 r131 r132 r133 r134 r135 r136 r137 r138 r139 r140 r141 r142 r143 r144 r145 r146 r147 r148 r149 r150 r151 r152 r153 r154 r155 r156 r157 r158 r159 r160 r161 r162 r163 r164 r165 r166 r167 r168 r169 r170 r171 r172 r173 r174 r175 r176 r177 r178 r179 r180 r181 r182 r183 r184 r185 r186 r187 r188 r189 r190 r191 r192 r193 r194 r195 r196 r197 r198 r199 r200 r201 r202 r203 r204 r205 r206 r207 r208 r209 r210 r211 r212 r213 r214 r215 r216 r217 r218 r219 r220 r221 r222 r223 r224 r225 r226 r227 r228 r229 r230 r231 r232 r233 r234 r235 r236 r237 r238 r239 r240 r241 r242 r243 r244 r245 r246 r247 r248 r249 r250 r251 r252 r253 r254 r255 r256 r257 r258 r259 r260 r261 r262 r263 r264 r265 r266 r267 r268 r269 r270 r271 r272 r273 r274 r275 r276 r277 r278 r279 r280 r281 r282 r283 r284 r285 r286 r287 r288 r289 r290 r291 r292 r293 r294 r295 r296 r297 r298 r299 - rover
    b2 - almacen
    b0 b1 - asentamiento
    p0 p1 p2 - peticion
)
(:init
    (= (peticiones-cerradas) 0)
    (camino b0 b1)
    (camino b0 b2)
    (camino b1 b2)
    (= (suministros-base b2) 3)
    (= (suministros-base b0) 0)
    (= (suministros-base b1) 0)
    (= (personal-base b0) 0)
    (= (personal-base b1) 0)
    (= (personal-base b2) 0)
    (= (suministros-rover r0) 0) (= (personal-rover r0) 0) (estacionado r0 b1)
    (= (suministros-rover r1) 0) (= (personal-rover r1) 0) (estacionado r1 b1)
    (= (suministros-rover r2) 0) (= (personal-rover r2) 0) (estacionado r2 b1)
    (= (suministros-rover r3) 0) (= (personal-rover r3) 0) (estacionado r3 b2)
    (= (suministros-rover r4) 0) (= (personal-rover r4) 0) (estacionado r4 b0)
    (= (suministros-rover r5) 0) (= (personal-rover r5) 0) (estacionado r5 b2)
    (= (suministros-rover r6) 0) (= (personal-rover r6) 0) (estacionado r6 b0)
    (= (suministros-rover r7) 0) (= (personal-rover r7) 0) (estacionado r7 b1)
    (= (suministros-rover r8) 0) (= (personal-rover r8) 0) (estacionado r8 b0)
    (= (suministros-rover r9) 0) (= (personal-rover r9) 0) (estacionado r9 b0)
    (= (suministros-rover r10) 0) (= (personal-rover r10) 0) (estacionado r10 b2)
    (= (suministros-rover r11) 0) (= (personal-rover r11) 0) (estacionado r11 b1)
    (= (suministros-rover r12) 0) (= (personal-rover r12) 0) (estacionado r12 b2)
    (= (suministros-rover r13) 0) (= (personal-rover r13) 0) (estacionado r13 b2)
    (= (suministros-rover r14) 0) (= (personal-rover r14) 0) (estacionado r14 b2)
    (= (suministros-rover r15) 0) (= (personal-rover r15) 0) (estacionado r15 b0)
    (= (suministros-rover r16) 0) (= (personal-rover r16) 0) (estacionado r16 b1)
    (= (suministros-rover r17) 0) (= (personal-rover r17) 0) (estacionado r17 b0)
    (= (suministros-rover r18) 0) (= (personal-rover r18) 0) (estacionado r18 b2)
    (= (suministros-rover r19) 0) (= (personal-rover r19) 0) (estacionado r19 b0)
    (= (suministros-rover r20) 0) (= (personal-rover r20) 0) (estacionado r20 b2)
    (= (suministros-rover r21) 0) (= (personal-rover r21) 0) (estacionado r21 b1)
    (= (suministros-rover r22) 0) (= (personal-rover r22) 0) (estacionado r22 b1)
    (= (suministros-rover r23) 0) (= (personal-rover r23) 0) (estacionado r23 b2)
    (= (suministros-rover r24) 0) (= (personal-rover r24) 0) (estacionado r24 b0)
    (= (suministros-rover r25) 0) (= (personal-rover r25) 0) (estacionado r25 b1)
    (= (suministros-rover r26) 0) (= (personal-rover r26) 0) (estacionado r26 b1)
    (= (suministros-rover r27) 0) (= (personal-rover r27) 0) (estacionado r27 b1)
    (= (suministros-rover r28) 0) (= (personal-rover r28) 0) (estacionado r28 b2)
    (= (suministros-rover r29) 0) (= (personal-rover r29) 0) (estacionado r29 b2)
    (= (suministros-rover r30) 0) (= (personal-rover r30) 0) (estacionado r30 b0)
    (= (suministros-rover r31) 0) (= (personal-rover r31) 0) (estacionado r31 b2)
    (= (suministros-rover r32) 0) (= (personal-rover r32) 0) (estacionado r32 b1)
    (= (suministros-rover r33) 0) (= (personal-rover r33) 0) (estacionado r33 b1)
    (= (suministros-rover r34) 0) (= (personal-rover r34) 0) (estacionado r34 b2)
    (= (suministros-rover r35) 0) (= (personal-rover r35) 0) (estacionado r35 b1)
    (= (suministros-rover r36) 0) (= (personal-rover r36) 0) (estacionado r36 b0)
    (= (suministros-rover r37) 0) (= (personal-rover r37) 0) (estacionado r37 b2)
    (= (suministros-rover r38) 0) (= (personal-rover r38) 0) (estacionado r38 b0)
    (= (suministros-rover r39) 0) (= (personal-rover r39) 0) (estacionado r39 b0)
    (= (suministros-rover r40) 0) (= (personal-rover r40) 0) (estacionado r40 b2)
    (= (suministros-rover r41) 0) (= (personal-rover r41) 0) (estacionado r41 b1)
    (= (suministros-rover r42) 0) (= (personal-rover r42) 0) (estacionado r42 b2)
    (= (suministros-rover r43) 0) (= (personal-rover r43) 0) (estacionado r43 b2)
    (= (suministros-rover r44) 0) (= (personal-rover r44) 0) (estacionado r44 b2)
    (= (suministros-rover r45) 0) (= (personal-rover r45) 0) (estacionado r45 b0)
    (= (suministros-rover r46) 0) (= (personal-rover r46) 0) (estacionado r46 b2)
    (= (suministros-rover r47) 0) (= (personal-rover r47) 0) (estacionado r47 b1)
    (= (suministros-rover r48) 0) (= (personal-rover r48) 0) (estacionado r48 b1)
    (= (suministros-rover r49) 0) (= (personal-rover r49) 0) (estacionado r49 b0)
    (= (suministros-rover r50) 0) (= (personal-rover r50) 0) (estacionado r50 b2)
    (= (suministros-rover r51) 0) (= (personal-rover r51) 0) (estacionado r51 b1)
    (= (suministros-rover r52) 0) (= (personal-rover r52) 0) (estacionado r52 b2)
    (= (suministros-rover r53) 0) (= (personal-rover r53) 0) (estacionado r53 b0)
    (= (suministros-rover r54) 0) (= (personal-rover r54) 0) (estacionado r54 b0)
    (= (suministros-rover r55) 0) (= (personal-rover r55) 0) (estacionado r55 b2)
    (= (suministros-rover r56) 0) (= (personal-rover r56) 0) (estacionado r56 b0)
    (= (suministros-rover r57) 0) (= (personal-rover r57) 0) (estacionado r57 b0)
    (= (suministros-rover r58) 0) (= (personal-rover r58) 0) (estacionado r58 b0)
    (= (suministros-rover r59) 0) (= (personal-rover r59) 0) (estacionado r59 b2)
    (= (suministros-rover r60) 0) (= (personal-rover r60) 0) (estacionado r60 b1)
    (= (suministros-rover r61) 0) (= (personal-rover r61) 0) (estacionado r61 b0)
    (= (suministros-rover r62) 0) (= (personal-rover r62) 0) (estacionado r62 b0)
    (= (suministros-rover r63) 0) (= (personal-rover r63) 0) (estacionado r63 b1)
    (= (suministros-rover r64) 0) (= (personal-rover r64) 0) (estacionado r64 b2)
    (= (suministros-rover r65) 0) (= (personal-rover r65) 0) (estacionado r65 b1)
    (= (suministros-rover r66) 0) (= (personal-rover r66) 0) (estacionado r66 b0)
    (= (suministros-rover r67) 0) (= (personal-rover r67) 0) (estacionado r67 b1)
    (= (suministros-rover r68) 0) (= (personal-rover r68) 0) (estacionado r68 b2)
    (= (suministros-rover r69) 0) (= (personal-rover r69) 0) (estacionado r69 b1)
    (= (suministros-rover r70) 0) (= (personal-rover r70) 0) (estacionado r70 b2)
    (= (suministros-rover r71) 0) (= (personal-rover r71) 0) (estacionado r71 b0)
    (= (suministros-rover r72) 0) (= (personal-rover r72) 0) (estacionado r72 b2)
    (= (suministros-rover r73) 0) (= (personal-rover r73) 0) (estacionado r73 b1)
    (= (suministros-rover r74) 0) (= (personal-rover r74) 0) (estacionado r74 b2)
    (= (suministros-rover r75) 0) (= (personal-rover r75) 0) (estacionado r75 b0)
    (= (suministros-rover r76) 0) (= (personal-rover r76) 0) (estacionado r76 b2)
    (= (suministros-rover r77) 0) (= (personal-rover r77) 0) (estacionado r77 b2)
    (= (suministros-rover r78) 0) (= (personal-rover r78) 0) (estacionado r78 b2)
    (= (suministros-rover r79) 0) (= (personal-rover r79) 0) (estacionado r79 b1)
    (= (suministros-rover r80) 0) (= (personal-rover r80) 0) (estacionado r80 b1)
    (= (suministros-rover r81) 0) (= (personal-rover r81) 0) (estacionado r81 b0)
    (= (suministros-rover r82) 0) (= (personal-rover r82) 0) (estacionado r82 b2)
    (= (suministros-rover r83) 0) (= (personal-rover r83) 0) (estacionado r83 b1)
    (= (suministros-rover r84) 0) (= (personal-rover r84) 0) (estacionado r84 b1)
    (= (suministros-rover r85) 0) (= (personal-rover r85) 0) (estacionado r85 b2)
    (= (suministros-rover r86) 0) (= (personal-rover r86) 0) (estacionado r86 b0)
    (= (suministros-rover r87) 0) (= (personal-rover r87) 0) (estacionado r87 b1)
    (= (suministros-rover r88) 0) (= (personal-rover r88) 0) (estacionado r88 b0)
    (= (suministros-rover r89) 0) (= (personal-rover r89) 0) (estacionado r89 b0)
    (= (suministros-rover r90) 0) (= (personal-rover r90) 0) (estacionado r90 b0)
    (= (suministros-rover r91) 0) (= (personal-rover r91) 0) (estacionado r91 b0)
    (= (suministros-rover r92) 0) (= (personal-rover r92) 0) (estacionado r92 b2)
    (= (suministros-rover r93) 0) (= (personal-rover r93) 0) (estacionado r93 b2)
    (= (suministros-rover r94) 0) (= (personal-rover r94) 0) (estacionado r94 b1)
    (= (suministros-rover r95) 0) (= (personal-rover r95) 0) (estacionado r95 b1)
    (= (suministros-rover r96) 0) (= (personal-rover r96) 0) (estacionado r96 b0)
    (= (suministros-rover r97) 0) (= (personal-rover r97) 0) (estacionado r97 b0)
    (= (suministros-rover r98) 0) (= (personal-rover r98) 0) (estacionado r98 b2)
    (= (suministros-rover r99) 0) (= (personal-rover r99) 0) (estacionado r99 b0)
    (= (suministros-rover r100) 0) (= (personal-rover r100) 0) (estacionado r100 b0)
    (= (suministros-rover r101) 0) (= (personal-rover r101) 0) (estacionado r101 b0)
    (= (suministros-rover r102) 0) (= (personal-rover r102) 0) (estacionado r102 b0)
    (= (suministros-rover r103) 0) (= (personal-rover r103) 0) (estacionado r103 b2)
    (= (suministros-rover r104) 0) (= (personal-rover r104) 0) (estacionado r104 b2)
    (= (suministros-rover r105) 0) (= (personal-rover r105) 0) (estacionado r105 b2)
    (= (suministros-rover r106) 0) (= (personal-rover r106) 0) (estacionado r106 b1)
    (= (suministros-rover r107) 0) (= (personal-rover r107) 0) (estacionado r107 b2)
    (= (suministros-rover r108) 0) (= (personal-rover r108) 0) (estacionado r108 b2)
    (= (suministros-rover r109) 0) (= (personal-rover r109) 0) (estacionado r109 b1)
    (= (suministros-rover r110) 0) (= (personal-rover r110) 0) (estacionado r110 b2)
    (= (suministros-rover r111) 0) (= (personal-rover r111) 0) (estacionado r111 b0)
    (= (suministros-rover r112) 0) (= (personal-rover r112) 0) (estacionado r112 b0)
    (= (suministros-rover r113) 0) (= (personal-rover r113) 0) (estacionado r113 b2)
    (= (suministros-rover r114) 0) (= (personal-rover r114) 0) (estacionado r114 b2)
    (= (suministros-rover r115) 0) (= (personal-rover r115) 0) (estacionado r115 b1)
    (= (suministros-rover r116) 0) (= (personal-rover r116) 0) (estacionado r116 b2)
    (= (suministros-rover r117) 0) (= (personal-rover r117) 0) (estacionado r117 b1)
    (= (suministros-rover r118) 0) (= (personal-rover r118) 0) (estacionado r118 b1)
    (= (suministros-rover r119) 0) (= (personal-rover r119) 0) (estacionado r119 b1)
    (= (suministros-rover r120) 0) (= (personal-rover r120) 0) (estacionado r120 b2)
    (= (suministros-rover r121) 0) (= (personal-rover r121) 0) (estacionado r121 b2)
    (= (suministros-rover r122) 0) (= (personal-rover r122) 0) (estacionado r122 b2)
    (= (suministros-rover r123) 0) (= (personal-rover r123) 0) (estacionado r123 b1)
    (= (suministros-rover r124) 0) (= (personal-rover r124) 0) (estacionado r124 b0)
    (= (suministros-rover r125) 0) (= (personal-rover r125) 0) (estacionado r125 b1)
    (= (suministros-rover r126) 0) (= (personal-rover r126) 0) (estacionado r126 b2)
    (= (suministros-rover r127) 0) (= (personal-rover r127) 0) (estacionado r127 b0)
    (= (suministros-rover r128) 0) (= (personal-rover r128) 0) (estacionado r128 b1)
    (= (suministros-rover r129) 0) (= (personal-rover r129) 0) (estacionado r129 b2)
    (= (suministros-rover r130) 0) (= (personal-rover r130) 0) (estacionado r130 b2)
    (= (suministros-rover r131) 0) (= (personal-rover r131) 0) (estacionado r131 b1)
    (= (suministros-rover r132) 0) (= (personal-rover r132) 0) (estacionado r132 b0)
    (= (suministros-rover r133) 0) (= (personal-rover r133) 0) (estacionado r133 b0)
    (= (suministros-rover r134) 0) (= (personal-rover r134) 0) (estacionado r134 b0)
    (= (suministros-rover r135) 0) (= (personal-rover r135) 0) (estacionado r135 b2)
    (= (suministros-rover r136) 0) (= (personal-rover r136) 0) (estacionado r136 b1)
    (= (suministros-rover r137) 0) (= (personal-rover r137) 0) (estacionado r137 b0)
    (= (suministros-rover r138) 0) (= (personal-rover r138) 0) (estacionado r138 b2)
    (= (suministros-rover r139) 0) (= (personal-rover r139) 0) (estacionado r139 b0)
    (= (suministros-rover r140) 0) (= (personal-rover r140) 0) (estacionado r140 b1)
    (= (suministros-rover r141) 0) (= (personal-rover r141) 0) (estacionado r141 b0)
    (= (suministros-rover r142) 0) (= (personal-rover r142) 0) (estacionado r142 b1)
    (= (suministros-rover r143) 0) (= (personal-rover r143) 0) (estacionado r143 b1)
    (= (suministros-rover r144) 0) (= (personal-rover r144) 0) (estacionado r144 b0)
    (= (suministros-rover r145) 0) (= (personal-rover r145) 0) (estacionado r145 b0)
    (= (suministros-rover r146) 0) (= (personal-rover r146) 0) (estacionado r146 b0)
    (= (suministros-rover r147) 0) (= (personal-rover r147) 0) (estacionado r147 b2)
    (= (suministros-rover r148) 0) (= (personal-rover r148) 0) (estacionado r148 b0)
    (= (suministros-rover r149) 0) (= (personal-rover r149) 0) (estacionado r149 b0)
    (= (suministros-rover r150) 0) (= (personal-rover r150) 0) (estacionado r150 b2)
    (= (suministros-rover r151) 0) (= (personal-rover r151) 0) (estacionado r151 b2)
    (= (suministros-rover r152) 0) (= (personal-rover r152) 0) (estacionado r152 b2)
    (= (suministros-rover r153) 0) (= (personal-rover r153) 0) (estacionado r153 b2)
    (= (suministros-rover r154) 0) (= (personal-rover r154) 0) (estacionado r154 b2)
    (= (suministros-rover r155) 0) (= (personal-rover r155) 0) (estacionado r155 b0)
    (= (suministros-rover r156) 0) (= (personal-rover r156) 0) (estacionado r156 b0)
    (= (suministros-rover r157) 0) (= (personal-rover r157) 0) (estacionado r157 b0)
    (= (suministros-rover r158) 0) (= (personal-rover r158) 0) (estacionado r158 b2)
    (= (suministros-rover r159) 0) (= (personal-rover r159) 0) (estacionado r159 b0)
    (= (suministros-rover r160) 0) (= (personal-rover r160) 0) (estacionado r160 b2)
    (= (suministros-rover r161) 0) (= (personal-rover r161) 0) (estacionado r161 b2)
    (= (suministros-rover r162) 0) (= (personal-rover r162) 0) (estacionado r162 b0)
    (= (suministros-rover r163) 0) (= (personal-rover r163) 0) (estacionado r163 b1)
    (= (suministros-rover r164) 0) (= (personal-rover r164) 0) (estacionado r164 b0)
    (= (suministros-rover r165) 0) (= (personal-rover r165) 0) (estacionado r165 b1)
    (= (suministros-rover r166) 0) (= (personal-rover r166) 0) (estacionado r166 b0)
    (= (suministros-rover r167) 0) (= (personal-rover r167) 0) (estacionado r167 b0)
    (= (suministros-rover r168) 0) (= (personal-rover r168) 0) (estacionado r168 b2)
    (= (suministros-rover r169) 0) (= (personal-rover r169) 0) (estacionado r169 b0)
    (= (suministros-rover r170) 0) (= (personal-rover r170) 0) (estacionado r170 b0)
    (= (suministros-rover r171) 0) (= (personal-rover r171) 0) (estacionado r171 b0)
    (= (suministros-rover r172) 0) (= (personal-rover r172) 0) (estacionado r172 b2)
    (= (suministros-rover r173) 0) (= (personal-rover r173) 0) (estacionado r173 b0)
    (= (suministros-rover r174) 0) (= (personal-rover r174) 0) (estacionado r174 b1)
    (= (suministros-rover r175) 0) (= (personal-rover r175) 0) (estacionado r175 b0)
    (= (suministros-rover r176) 0) (= (personal-rover r176) 0) (estacionado r176 b2)
    (= (suministros-rover r177) 0) (= (personal-rover r177) 0) (estacionado r177 b0)
    (= (suministros-rover r178) 0) (= (personal-rover r178) 0) (estacionado r178 b2)
    (= (suministros-rover r179) 0) (= (personal-rover r179) 0) (estacionado r179 b0)
    (= (suministros-rover r180) 0) (= (personal-rover r180) 0) (estacionado r180 b2)
    (= (suministros-rover r181) 0) (= (personal-rover r181) 0) (estacionado r181 b1)
    (= (suministros-rover r182) 0) (= (personal-rover r182) 0) (estacionado r182 b2)
    (= (suministros-rover r183) 0) (= (personal-rover r183) 0) (estacionado r183 b0)
    (= (suministros-rover r184) 0) (= (personal-rover r184) 0) (estacionado r184 b1)
    (= (suministros-rover r185) 0) (= (personal-rover r185) 0) (estacionado r185 b0)
    (= (suministros-rover r186) 0) (= (personal-rover r186) 0) (estacionado r186 b0)
    (= (suministros-rover r187) 0) (= (personal-rover r187) 0) (estacionado r187 b0)
    (= (suministros-rover r188) 0) (= (personal-rover r188) 0) (estacionado r188 b2)
    (= (suministros-rover r189) 0) (= (personal-rover r189) 0) (estacionado r189 b1)
    (= (suministros-rover r190) 0) (= (personal-rover r190) 0) (estacionado r190 b1)
    (= (suministros-rover r191) 0) (= (personal-rover r191) 0) (estacionado r191 b1)
    (= (suministros-rover r192) 0) (= (personal-rover r192) 0) (estacionado r192 b0)
    (= (suministros-rover r193) 0) (= (personal-rover r193) 0) (estacionado r193 b0)
    (= (suministros-rover r194) 0) (= (personal-rover r194) 0) (estacionado r194 b2)
    (= (suministros-rover r195) 0) (= (personal-rover r195) 0) (estacionado r195 b1)
    (= (suministros-rover r196) 0) (= (personal-rover r196) 0) (estacionado r196 b0)
    (= (suministros-rover r197) 0) (= (personal-rover r197) 0) (estacionado r197 b2)
    (= (suministros-rover r198) 0) (= (personal-rover r198) 0) (estacionado r198 b0)
    (= (suministros-rover r199) 0) (= (personal-rover r199) 0) (estacionado r199 b2)
    (= (suministros-rover r200) 0) (= (personal-rover r200) 0) (estacionado r200 b1)
    (= (suministros-rover r201) 0) (= (personal-rover r201) 0) (estacionado r201 b0)
    (= (suministros-rover r202) 0) (= (personal-rover r202) 0) (estacionado r202 b1)
    (= (suministros-rover r203) 0) (= (personal-rover r203) 0) (estacionado r203 b1)
    (= (suministros-rover r204) 0) (= (personal-rover r204) 0) (estacionado r204 b2)
    (= (suministros-rover r205) 0) (= (personal-rover r205) 0) (estacionado r205 b1)
    (= (suministros-rover r206) 0) (= (personal-rover r206) 0) (estacionado r206 b2)
    (= (suministros-rover r207) 0) (= (personal-rover r207) 0) (estacionado r207 b0)
    (= (suministros-rover r208) 0) (= (personal-rover r208) 0) (estacionado r208 b2)
    (= (suministros-rover r209) 0) (= (personal-rover r209) 0) (estacionado r209 b2)
    (= (suministros-rover r210) 0) (= (personal-rover r210) 0) (estacionado r210 b0)
    (= (suministros-rover r211) 0) (= (personal-rover r211) 0) (estacionado r211 b0)
    (= (suministros-rover r212) 0) (= (personal-rover r212) 0) (estacionado r212 b2)
    (= (suministros-rover r213) 0) (= (personal-rover r213) 0) (estacionado r213 b0)
    (= (suministros-rover r214) 0) (= (personal-rover r214) 0) (estacionado r214 b0)
    (= (suministros-rover r215) 0) (= (personal-rover r215) 0) (estacionado r215 b1)
    (= (suministros-rover r216) 0) (= (personal-rover r216) 0) (estacionado r216 b2)
    (= (suministros-rover r217) 0) (= (personal-rover r217) 0) (estacionado r217 b1)
    (= (suministros-rover r218) 0) (= (personal-rover r218) 0) (estacionado r218 b0)
    (= (suministros-rover r219) 0) (= (personal-rover r219) 0) (estacionado r219 b2)
    (= (suministros-rover r220) 0) (= (personal-rover r220) 0) (estacionado r220 b1)
    (= (suministros-rover r221) 0) (= (personal-rover r221) 0) (estacionado r221 b2)
    (= (suministros-rover r222) 0) (= (personal-rover r222) 0) (estacionado r222 b0)
    (= (suministros-rover r223) 0) (= (personal-rover r223) 0) (estacionado r223 b0)
    (= (suministros-rover r224) 0) (= (personal-rover r224) 0) (estacionado r224 b1)
    (= (suministros-rover r225) 0) (= (personal-rover r225) 0) (estacionado r225 b2)
    (= (suministros-rover r226) 0) (= (personal-rover r226) 0) (estacionado r226 b1)
    (= (suministros-rover r227) 0) (= (personal-rover r227) 0) (estacionado r227 b2)
    (= (suministros-rover r228) 0) (= (personal-rover r228) 0) (estacionado r228 b2)
    (= (suministros-rover r229) 0) (= (personal-rover r229) 0) (estacionado r229 b1)
    (= (suministros-rover r230) 0) (= (personal-rover r230) 0) (estacionado r230 b2)
    (= (suministros-rover r231) 0) (= (personal-rover r231) 0) (estacionado r231 b1)
    (= (suministros-rover r232) 0) (= (personal-rover r232) 0) (estacionado r232 b1)
    (= (suministros-rover r233) 0) (= (personal-rover r233) 0) (estacionado r233 b2)
    (= (suministros-rover r234) 0) (= (personal-rover r234) 0) (estacionado r234 b1)
    (= (suministros-rover r235) 0) (= (personal-rover r235) 0) (estacionado r235 b0)
    (= (suministros-rover r236) 0) (= (personal-rover r236) 0) (estacionado r236 b2)
    (= (suministros-rover r237) 0) (= (personal-rover r237) 0) (estacionado r237 b2)
    (= (suministros-rover r238) 0) (= (personal-rover r238) 0) (estacionado r238 b0)
    (= (suministros-rover r239) 0) (= (personal-rover r239) 0) (estacionado r239 b1)
    (= (suministros-rover r240) 0) (= (personal-rover r240) 0) (estacionado r240 b2)
    (= (suministros-rover r241) 0) (= (personal-rover r241) 0) (estacionado r241 b0)
    (= (suministros-rover r242) 0) (= (personal-rover r242) 0) (estacionado r242 b1)
    (= (suministros-rover r243) 0) (= (personal-rover r243) 0) (estacionado r243 b2)
    (= (suministros-rover r244) 0) (= (personal-rover r244) 0) (estacionado r244 b0)
    (= (suministros-rover r245) 0) (= (personal-rover r245) 0) (estacionado r245 b2)
    (= (suministros-rover r246) 0) (= (personal-rover r246) 0) (estacionado r246 b1)
    (= (suministros-rover r247) 0) (= (personal-rover r247) 0) (estacionado r247 b0)
    (= (suministros-rover r248) 0) (= (personal-rover r248) 0) (estacionado r248 b0)
    (= (suministros-rover r249) 0) (= (personal-rover r249) 0) (estacionado r249 b1)
    (= (suministros-rover r250) 0) (= (personal-rover r250) 0) (estacionado r250 b1)
    (= (suministros-rover r251) 0) (= (personal-rover r251) 0) (estacionado r251 b2)
    (= (suministros-rover r252) 0) (= (personal-rover r252) 0) (estacionado r252 b1)
    (= (suministros-rover r253) 0) (= (personal-rover r253) 0) (estacionado r253 b2)
    (= (suministros-rover r254) 0) (= (personal-rover r254) 0) (estacionado r254 b1)
    (= (suministros-rover r255) 0) (= (personal-rover r255) 0) (estacionado r255 b2)
    (= (suministros-rover r256) 0) (= (personal-rover r256) 0) (estacionado r256 b2)
    (= (suministros-rover r257) 0) (= (personal-rover r257) 0) (estacionado r257 b2)
    (= (suministros-rover r258) 0) (= (personal-rover r258) 0) (estacionado r258 b0)
    (= (suministros-rover r259) 0) (= (personal-rover r259) 0) (estacionado r259 b2)
    (= (suministros-rover r260) 0) (= (personal-rover r260) 0) (estacionado r260 b1)
    (= (suministros-rover r261) 0) (= (personal-rover r261) 0) (estacionado r261 b1)
    (= (suministros-rover r262) 0) (= (personal-rover r262) 0) (estacionado r262 b2)
    (= (suministros-rover r263) 0) (= (personal-rover r263) 0) (estacionado r263 b1)
    (= (suministros-rover r264) 0) (= (personal-rover r264) 0) (estacionado r264 b2)
    (= (suministros-rover r265) 0) (= (personal-rover r265) 0) (estacionado r265 b0)
    (= (suministros-rover r266) 0) (= (personal-rover r266) 0) (estacionado r266 b0)
    (= (suministros-rover r267) 0) (= (personal-rover r267) 0) (estacionado r267 b2)
    (= (suministros-rover r268) 0) (= (personal-rover r268) 0) (estacionado r268 b0)
    (= (suministros-rover r269) 0) (= (personal-rover r269) 0) (estacionado r269 b2)
    (= (suministros-rover r270) 0) (= (personal-rover r270) 0) (estacionado r270 b1)
    (= (suministros-rover r271) 0) (= (personal-rover r271) 0) (estacionado r271 b0)
    (= (suministros-rover r272) 0) (= (personal-rover r272) 0) (estacionado r272 b0)
    (= (suministros-rover r273) 0) (= (personal-rover r273) 0) (estacionado r273 b0)
    (= (suministros-rover r274) 0) (= (personal-rover r274) 0) (estacionado r274 b2)
    (= (suministros-rover r275) 0) (= (personal-rover r275) 0) (estacionado r275 b1)
    (= (suministros-rover r276) 0) (= (personal-rover r276) 0) (estacionado r276 b1)
    (= (suministros-rover r277) 0) (= (personal-rover r277) 0) (estacionado r277 b2)
    (= (suministros-rover r278) 0) (= (personal-rover r278) 0) (estacionado r278 b2)
    (= (suministros-rover r279) 0) (= (personal-rover r279) 0) (estacionado r279 b2)
    (= (suministros-rover r280) 0) (= (personal-rover r280) 0) (estacionado r280 b1)
    (= (suministros-rover r281) 0) (= (personal-rover r281) 0) (estacionado r281 b0)
    (= (suministros-rover r282) 0) (= (personal-rover r282) 0) (estacionado r282 b1)
    (= (suministros-rover r283) 0) (= (personal-rover r283) 0) (estacionado r283 b2)
    (= (suministros-rover r284) 0) (= (personal-rover r284) 0) (estacionado r284 b2)
    (= (suministros-rover r285) 0) (= (personal-rover r285) 0) (estacionado r285 b1)
    (= (suministros-rover r286) 0) (= (personal-rover r286) 0) (estacionado r286 b2)
    (= (suministros-rover r287) 0) (= (personal-rover r287) 0) (estacionado r287 b2)
    (= (suministros-rover r288) 0) (= (personal-rover r288) 0) (estacionado r288 b0)
    (= (suministros-rover r289) 0) (= (personal-rover r289) 0) (estacionado r289 b0)
    (= (suministros-rover r290) 0) (= (personal-rover r290) 0) (estacionado r290 b1)
    (= (suministros-rover r291) 0) (= (personal-rover r291) 0) (estacionado r291 b0)
    (= (suministros-rover r292) 0) (= (personal-rover r292) 0) (estacionado r292 b1)
    (= (suministros-rover r293) 0) (= (personal-rover r293) 0) (estacionado r293 b2)
    (= (suministros-rover r294) 0) (= (personal-rover r294) 0) (estacionado r294 b0)
    (= (suministros-rover r295) 0) (= (personal-rover r295) 0) (estacionado r295 b1)
    (= (suministros-rover r296) 0) (= (personal-rover r296) 0) (estacionado r296 b2)
    (= (suministros-rover r297) 0) (= (personal-rover r297) 0) (estacionado r297 b1)
    (= (suministros-rover r298) 0) (= (personal-rover r298) 0) (estacionado r298 b2)
    (= (suministros-rover r299) 0) (= (personal-rover r299) 0) (estacionado r299 b2)
    (peticion-abierta p0 b0) (peticion-suministros p0)
    (peticion-abierta p1 b0) (peticion-suministros p1)
    (peticion-abierta p2 b1) (peticion-suministros p2)
)
(:goal
    (= (peticiones-cerradas) 3)
)
)