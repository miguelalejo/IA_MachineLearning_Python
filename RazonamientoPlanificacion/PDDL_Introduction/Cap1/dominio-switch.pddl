;Header and description

(define (domain domain_switch)

;remove requirements that are not needed
(:requirements :strips)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle

)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (switch_on)
    (switch_off)
)


(:functions ;todo: define numeric functions here
)
(:action turn_on
    :parameters ()
    :precondition (and 
        (switch_off)
    )
    :effect (and 
        (not(switch_off))
        (switch_on)
    )
)

(:action turn_off
    :parameters ()
    :precondition (and 
        (switch_on)
    )
    :effect (and 
        (not(switch_on))
        (switch_off)
    )
)
;define actions here

)