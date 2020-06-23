;Header and description

(define (domain knights-tour)

;remove requirements that are not needed
(:requirements :strips :negative-preconditions)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (at ?square)
    (visited ?square)
    (valid_move ?square_from ?square_to)
)



(:functions ;todo: define numeric functions here
)

;define actions here
(:action move
    :parameters (?from ?to)
    :precondition (and 
        (at ?from)
        (valid_move ?from ?to)
        (not(visited ?to))
    )
    :effect (and 
        (not(at ?from))
        (at ?to)
        (visited ?to)        
    )
)

)