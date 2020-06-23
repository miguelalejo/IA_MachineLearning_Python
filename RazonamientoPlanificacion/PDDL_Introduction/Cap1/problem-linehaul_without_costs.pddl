(define (problem linehaul-example) (:domain linehaul_without_costs)
(:objects 
    ADoubleRef - refrigetared_truck
    BDouble - truck
    depot E BW GV - location
    n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 - quantity
)

(:init
    ;todo: put the initial state's facts and numeric values here
    (at ADoubleRef depot)
    (at BDouble depot)
    (free_capacity ADoubleRef n2)
    ;(free_capacity BDouble n3)
    (demanded_ambient_goods E n5)
    (demanded_ambient_goods BW n0)
    (demanded_ambient_goods GV n4)
    (dec n10 n9)
    (dec n9 n8)
    (dec n8 n7)
    (dec n7 n6)
    (dec n6 n5)
    (dec n5 n4)
    (dec n4 n3)
    (dec n3 n2)
    (dec n2 n1)
    (dec n1 n0)   

    (inc n0 n1)
    (inc n1 n2)
    (inc n2 n3)
    (inc n3 n4)
    (inc n4 n5)
    (inc n5 n6)
    (inc n6 n7)
    (inc n7 n8)
    (inc n8 n9)
    (inc n9 n10)
    (not(empty_truck  ADoubleRef))    
    ;(not(empty_truck  BDouble))
    (at_depot depot)
    (max_capacity ADoubleRef n2)    
    ;(max_capacity BDouble n3)
    (min_capacity n0)
)

(:goal (and
    ;todo: put the goal condition here
    (demanded_ambient_goods E n0)    
    
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
