;Header and description

(define (domain torres-hanoi)

;remove requirements that are not needed
(:requirements :strips :typing :negative-preconditions)

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    disco - object
    torre - disco
)

; un-comment following line if constants are needed
;(:constants )

(:predicates ;todo: define predicates here
   (es-menor ?d1 ?d2 - disco)
   (esta-libre ?d - disco ?t - torre)
   (esta-sobre ?d1 ?d2 - disco ?t - torre)
)

(:action mover_disco
    :parameters (?dsup ?dinf ?ddest - disco ?tori - torre ?tdes - torre)
    :precondition (and  
        (esta-sobre ?dsup ?dinf ?tori)
        (esta-libre ?dsup ?tori)
        (esta-libre ?ddest ?tdes)
        (es-menor ?dsup ?ddest)
    )
    :effect (and         
        (not(esta-sobre ?dsup ?dinf ?tori))
        (not(esta-libre ?dsup ?tori))
        (not(esta-libre ?ddest ?tdes))
        (esta-sobre ?dsup ?ddest ?tdes)    
        (esta-libre ?dinf ?tori)    
        (esta-libre ?dsup ?tdes)    
    )
)


)