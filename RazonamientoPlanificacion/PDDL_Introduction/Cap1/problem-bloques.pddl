(define (problem pro1) (:domain bloques_examen_mesa)
(:objects 
    A B - bloque
)

(:init
    ;todo: put the initial state's facts and numeric values here
    ;  sobre(B, A) ^ libre(B) ^ sobre(A, M)
    (sobre B A)
    (libre B)
    (sobreMesa A)
)

(:goal (and
    ;todo: put the goal condition here
    ;el bloque A sobre B.
    (sobre A B)
    (sobreMesa B)
    (libre A)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
