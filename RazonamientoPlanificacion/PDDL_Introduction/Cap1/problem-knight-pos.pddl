(define (problem knights-all) (:domain knights-tour-pos)
(:objects 
    ;Cols
    A B C D E
    ;Fils
    N1 N2 N3 N4 N5
)

(:init
    (at N1 A)
    (visited N1 A)
    (inc_two_square N1 N3)
    (inc_two_square N3 N1)
    (inc_two_square N2 N4)
    (inc_two_square N2 N4)
    (inc_two_square N3 N5)
    (inc_two_square N5 N3)
    
    (inc_one_square A B)
    (inc_one_square B A)
    (inc_one_square B C)
    (inc_one_square C B)
    (inc_one_square C D)
    (inc_one_square D C)
    (inc_one_square D E)
    (inc_one_square E D)

    (inc_two_square A C)
    (inc_two_square C A)
    (inc_two_square B D)
    (inc_two_square D B)
    (inc_two_square C E)
    (inc_two_square E C)
    (inc_one_square N1 N2)
    (inc_one_square N2 N1)
    (inc_one_square N2 N3)
    (inc_one_square N3 N2)
    (inc_one_square N3 N4)
    (inc_one_square N4 N3)
    (inc_one_square N4 N5)
    (inc_one_square N5 N4)

    ;todo: put the initial state's facts and numeric values here
)

(:goal (and
    (visited N1 A)
    (visited N2 A)
    (visited N3 A)
    (visited N4 A)
    (visited N5 A)
    (visited N1 B)
    (visited N2 B)
    (visited N3 B)
    (visited N4 B)
    (visited N5 B)
    (visited N1 C)
    (visited N2 C)
    (visited N3 C)
    (visited N4 C)
    (visited N5 C)
    (visited N1 D)
    (visited N2 D)
    (visited N3 D)
    (visited N4 D)
    (visited N5 D)
    (visited N1 E)
    (visited N2 E)
    (visited N3 E)
    (visited N4 E)
    (visited N5 E)
   
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
