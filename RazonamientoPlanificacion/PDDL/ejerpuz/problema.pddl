(define (problem random2)
  (:domain strips-puzzle)
  (:objects 

	p1 p2 p3 p4 p5 p6 p7 p8 - pieza 

	col1 col2 col3 fila1 fila2 fila3 - posicion 
  )
  (:init
   	(inc col1 col2) (inc col2 col3) 
	(dec col3 col2) (dec col2 col1)

   	(inc fila1 fila2) (inc fila2 fila3) 
	(dec fila3 fila2) (dec fila2 fila1)
   	
	(blank fila1 col1) 		(localizada p1 fila1 col2) (localizada p2 fila1 col3) 
	(localizada p3 fila2 col1) 	(localizada p4 fila2 col2) (localizada p5 fila2 col3) 
	(localizada p6 fila3 col1) 	(localizada p7 fila3 col2) (localizada p8 fila3 col3))
  (:goal
   (and (localizada p4 fila1 col1) (localizada p1 fila1 col2) (localizada p7 fila1 col3)
	(localizada p8 fila2 col1) (localizada p3 fila2 col2) (localizada p5 fila2 col3)
	(localizada p6 fila3 col1) (localizada p2 fila3 col2)))
  )
