;Header and description

(define (domain bloques_examen_mesa)

;remove requirements that are not needed
(:requirements :strips :typing :negative-preconditions)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    bloque - object
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates hereç
    (libre ?b - bloque)
    (sobre ?b1 ?b2 - bloque)
    (sobreMesa ?b - bloque)
)


(:action MoverSobre
    :parameters (?b1 ?b2 - bloque)
    :precondition (and 
        (libre ?b1)
        (libre ?b2)   
    )
    :effect (and 
        (sobre ?b1 ?b2)
        (not (libre ?b2))
    )
)
(:action MoverSobreMesa
    :parameters (?b1 ?b2 - bloque)
    :precondition (and
        (libre ?b1)
        (sobre ?b1 ?b2)
        (sobreMesa ?b2)
     )
    :effect (and         
        (libre ?b2)
        (not(sobre ?b1 ?b2))
        (sobreMesa ?b1)
    )
)



;define actions here

)