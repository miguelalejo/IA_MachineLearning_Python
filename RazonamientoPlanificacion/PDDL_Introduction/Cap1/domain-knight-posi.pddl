;Header and description

(define (domain knights-tour-pos)

;remove requirements that are not needed
(:requirements :strips :negative-preconditions)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (at ?row ?col)
    (visited ?row ?col)
    (inc_two_square ?x ?y )
    (inc_one_square ?x ?y )    
)



(:functions ;todo: define numeric functions here
)

;define actions here
(:action move_2row_1col
    :parameters (?from_row ?from_col ?to_row ?to_col)
    :precondition (and 
        (at ?from_row ?from_col)
        (inc_two_square ?from_row ?to_row)
        (inc_one_square ?from_col ?to_col)
        (not (visited ?to_row ?to_col))
    )
    :effect (and 
        (not(at ?from_row ?from_col))
        (at ?to_row ?to_col)        
        (visited ?to_row ?to_col)
    )
)

(:action move_2col_1row
    :parameters (?from_row ?from_col ?to_row ?to_col)
    :precondition (and 
        (at ?from_row ?from_col)
        (inc_one_square ?from_row ?to_row)
        (inc_two_square ?from_col ?to_col)
        (not (visited ?to_row ?to_col))
    )
    :effect (and 
        (not(at ?from_row ?from_col))
        (at ?to_row ?to_col)     
        (visited ?to_row ?to_col)   
    )
)

)