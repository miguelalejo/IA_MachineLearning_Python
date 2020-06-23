;; Cesar Augusto Guzman Alvarez
;; Curso Razonamiento y Planificación Automática

(define (domain strips-puzzle)

  (:requirements :strips)
 
  (:types 
	pieza posicion - object
  )

  (:predicates

   (localizada ?p - pieza ?fila - posicion ?columna - posicion)
   (blank ?fila - posicion ?columna - posicion)
   (inc ?x1 - posicion ?x2 - posicion) 
   (dec ?x2 - posicion ?x1 - posicion))

  (:action mover-abajo
    :parameters (?pieza - pieza ?filaActual - posicion ?colActual - posicion ?filaDestino - posicion)
    :precondition (and
	(inc ?filaActual ?filaDestino) 
	(blank ?filaDestino ?colActual) 
	(localizada ?pieza ?filaActual ?colActual))
    :effect (and 
	(not (blank ?filaDestino ?colActual)) 
	(not (localizada ?pieza ?filaActual ?colActual))
	(blank ?filaActual ?colActual) 
	(localizada ?pieza ?filaDestino ?colActual)))

  (:action mover-arriba
    :parameters (?pieza - pieza ?filaActual - posicion ?colActual - posicion ?filaDestino - posicion)
    :precondition (and
	(dec ?filaActual ?filaDestino) 
	(blank ?filaDestino ?colActual) 
	(localizada ?pieza ?filaActual ?colActual))
    :effect (and 
	(not (blank ?filaDestino ?colActual)) 
	(not (localizada ?pieza ?filaActual ?colActual))
	(blank ?filaActual ?colActual) 
	(localizada ?pieza ?filaDestino ?colActual)))


  (:action mover-derecha
    :parameters (?pieza - pieza ?filaActual - posicion ?colActual - posicion ?colDestino - posicion)
    :precondition (and
	(inc ?colActual ?colDestino) 
	(blank ?filaActual ?colDestino) 
	(localizada ?pieza ?filaActual ?colActual))
    :effect (and 
	(not (blank ?filaActual ?colDestino)) 
	(not (localizada ?pieza ?filaActual ?colActual))
	(blank ?filaActual ?colActual) 
	(localizada ?pieza ?filaActual ?colDestino)))


  (:action mover-izquierda
    :parameters (?pieza - pieza ?filaActual - posicion ?colActual - posicion ?colDestino - posicion)
    :precondition (and
	(dec ?colActual ?colDestino) 
	(blank ?filaActual ?colDestino) 
	(localizada ?pieza ?filaActual ?colActual))
    :effect (and 
	(not (blank ?filaActual ?colDestino)) 
	(not (localizada ?pieza ?filaActual ?colActual))
	(blank ?filaActual ?colActual) 
	(localizada ?pieza ?filaActual ?colDestino)))
  )
