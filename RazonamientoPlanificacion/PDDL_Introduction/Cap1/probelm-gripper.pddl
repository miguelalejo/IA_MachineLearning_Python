(define (problem problem_name) (:domain domain_gripper)
(:objects 
    ball1 ball2 ball3 ball4
    rooma roomb
    left right
)

(:init
    (room rooma) (room roomb)
    (ball ball1) (ball ball2) (ball ball3) (ball ball4)
    (gripper left)(gripper right)
    (free left) (free right)
    (at-ball ball1 rooma) (at-ball ball2 rooma) (at-ball ball3 rooma) (at-ball ball4 rooma)
    (at-robby roomb)
)

(:goal (and
    (at-ball ball1 roomb) (at-ball ball2 roomb) (at-ball ball3 roomb) (at-ball ball4 roomb)
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
