(define (problem thanio) (:domain torres-hanoi)
(:objects 
    
    d1 d2 d3 - disco
    t1 t2 t3 - torre
)

(:init
    (es-menor d1 t1)
    (es-menor d2 t1)
    (es-menor d3 t1)

    (es-menor d1 t2)
    (es-menor d2 t2)
    (es-menor d3 t2)

    (es-menor d1 t3)
    (es-menor d2 t3)
    (es-menor d3 t3)

    (es-menor d1 d2)
    (es-menor d2 d3)
    (es-menor d1 d3)

    (esta-libre d1 t1)
    (esta-libre t2 t2)
    (esta-libre t3 t3)
    (esta-sobre d1 d2 t1)(esta-sobre d2 d3 t1)(esta-sobre d3 t1 t1)
)

(:goal (and
   ;(esta-sobre d1 t2 t2)
   ;(not(esta-sobre d1 d2 t1))
   ;(esta-sobre d2 t3 t3)
   ;(not(esta-sobre d2 d3 t1)) 
   (esta-libre d1 t3)  
   (esta-sobre d1 d2 t3)
   (esta-sobre d2 d3 t3)  
))

;un-comment the following line if metric is needed
;(:metric minimize (???))
)
