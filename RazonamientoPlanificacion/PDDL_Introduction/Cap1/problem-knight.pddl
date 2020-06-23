(define (problem knights-all) (:domain knights-tour)
(:objects 
    A8 A7 A6
    B8 B7 B6
    C8 C7 C6
)

(:init
    (at A8)
    (visited A8)
    (valid_move A8 B6)
    (valid_move A8 C7)
    (valid_move B6 A8)
    (valid_move B6 C8)
    (valid_move C8 A7)
    (valid_move C8 B6)    
    (valid_move A7 C8)
    (valid_move A7 C6)
    (valid_move C6 B8)
    (valid_move C6 A7)
    (valid_move B8 A6)
    (valid_move B8 C6)
    (valid_move A6 B8)
    (valid_move A6 C7)

    ;todo: put the initial state's facts and numeric values here
)

(:goal (and
    (visited A8)
    (visited A7)
    (visited A6)
    (visited B8)    
    (visited B6)
    (visited C8)
    (visited C7)
    (visited C6)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
