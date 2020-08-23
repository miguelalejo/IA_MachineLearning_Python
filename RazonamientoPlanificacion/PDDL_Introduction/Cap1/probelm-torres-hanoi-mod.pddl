(define (problem thanio2) (:domain torres-hanoi-mod)
(:objects 
    ;na sin disco
    na d1 d2 d3 - disco
    t1 t2 t3 - torre
)

(:init  

    (es-menor d1 d2)
    (es-menor d2 d3)
    (es-menor d1 d3)    
    (es-menor d1 na)
    (es-menor d2 na)
    (es-menor d3 na)

    (esta-encima d1 t1)
    (esta-encima na t2)
    (esta-encima na t3)
    (esta-sobre d1 d2 t1)(esta-sobre d2 d3 t1)(esta-sobre d3 na t1)
)

(:goal (and
   ;(esta-sobre d1 t2 t2)
   ;(not(esta-sobre d1 d2 t1))
   ;(esta-sobre d2 t3 t3)
   ;(not(esta-sobre d2 d3 t1)) 
   (esta-encima d1 t3)  
   (esta-sobre d1 d2 t3)
   (esta-sobre d2 d3 t3)  
   (esta-sobre d3 na t3) 
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
