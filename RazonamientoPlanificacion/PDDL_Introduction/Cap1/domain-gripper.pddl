;Header and description

(define (domain domain_gripper)

;remove requirements that are not needed
(:requirements :strips)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (ball ?x)
    (room ?x)
    (gripper ?x)
    (at-robby ?x)
    (at-ball ?x ?y)
    (free ?x)
    (carry ?x ?y)
)


(:functions ;todo: define numeric functions here
)
(:action move
    :parameters (?x ?y)
    :precondition (and 
        (room ?x)
        (room ?y)
        (at-robby ?x)     
    )
    :effect (and
        (not (at-robby ?x))
        (at-robby ?y)
    )
)

(:action pick-up
    :parameters (?x ?y ?z)
    :precondition (and 
        (gripper ?x)        
        (ball ?y)      
        (room ?z)  
        (free ?x)   
        (at-ball ?y ?z) 
        (at-robby ?z)
    )
    :effect (and        
        (not(free ?x))        
        (not(at-ball ?y ?z))
        (carry ?x ?y)
    )
)

(:action drop
    :parameters (?x ?y ?z)
    :precondition (and 
        (gripper ?x)        
        (ball ?y)      
        (room ?z)      
        (carry ?x ?y)
        (at-robby ?z)        
    )
    :effect (and                        
        (not(carry ?x ?y))
        (free ?x)
        (at-ball ?y ?z)
        
    )
)
;define actions here

)