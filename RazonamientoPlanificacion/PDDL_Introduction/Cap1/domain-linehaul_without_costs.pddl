;Header and description

(define (domain linehaul_without_costs)

;remove requirements that are not needed
(:requirements :strips :negative-preconditions :typing)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    truck location quantity - object
    refrigetared_truck - truck
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
    (at ?t - truck ?l - location)
    (free_capacity ?t - truck ?q - quantity)
    (demanded_ambient_goods ?l - location ?q - quantity)    
    (demanded_chilly_goods ?l - location ?q - quantity) 
    (inc ?q1 ?q2 - quantity)
    (dec ?q1 ?q2 - quantity)
    (empty_truck ?t - truck)       
    (at_depot ?l - location)
    (at_depot_truck ?t - truck ?l - location)
    (max_capacity ?t - truck ?q - quantity)    
    (min_capacity ?q - quantity)
)


(:functions ;todo: define numeric functions here
)

;define actions here
(:action drive
    :parameters (?t - truck ?from - location ?to - location)
    :precondition (and 
        (at ?t ?from)
        (not(empty_truck ?t))
    )
    :effect (and 
        (not(at ?t ?from))
        (at ?t ?to)
    )
)

(:action deliver_ambient
    :parameters (?t - truck ?l - location ?c ?c_less_one - quantity ?d ?d_less_one - quantity)
    :precondition (and 
        (at ?t ?l)
        (free_capacity ?t ?c)
        (not(empty_truck ?t))
        (demanded_ambient_goods ?l ?d) 
        (dec ?c ?c_less_one)
        (dec ?d ?d_less_one)
    )
    :effect (and 
        (not(free_capacity ?t ?c))
        (not(demanded_ambient_goods ?l ?d))
        (free_capacity ?t ?c_less_one)
        (demanded_ambient_goods ?l ?d_less_one)      
    )
)

(:action is_empty_truck
    :parameters (?t - truck  ?c - quantity)
    :precondition (and         
        (free_capacity ?t ?c)
        (min_capacity ?c)
    )
    :effect (and 
        (empty_truck ?t)        
    )
)

(:action drive_depot
    :parameters (?t - truck ?from ?to - location)
    :precondition (and 
        (at ?t ?from)        
        (empty_truck ?t) 
        (at_depot ?to)        
    )
    :effect (and 
        (not(at ?t ?from))
        (at ?t ?to) 
        (at_depot_truck ?t ?to)       
    )
)

(:action fill_empty_truck
    :parameters (?t - truck ?l - location ?c ?c_inc_one  - quantity)
    :precondition (and 
        (empty_truck ?t) 
        (at_depot_truck ?t ?l)         
        (free_capacity ?t ?c)
        (inc ?c ?c_inc_one)  
        (not(max_capacity ?t ?c))            
    )
    :effect (and 
        (free_capacity ?t ?c_inc_one)        
    )
)

(:action full_truck
    :parameters (?t - truck ?l - location ?c - quantity)
    :precondition (and 
        (empty_truck ?t) 
        (at_depot_truck ?t ?l) 
        (max_capacity ?t ?c)            
        (free_capacity ?t ?c)
    )
    :effect (and         
        (not(empty_truck ?t))
    )
)

)