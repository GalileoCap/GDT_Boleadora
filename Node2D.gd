extends Node2D

var screen_size

func aparabola(hmax, xhmax, xcayo):
	var r = hmax/(xhmax*xhmax - xhmax * xcayo)
	return(r)

func bparabola(aparabola, xcayo):
	return(-aparabola * xcayo)

func _ready():
	screen_size = get_viewport_rect().size
  #  pad_size = get_node("left").get_texture().get_size()
	print(screen_size)
	position.x = 0
	position.y = 600

func _process(delta):
# En general le sumo uno a x, le sumo f'(x) a y
# Para una linea:
# y = f(x) = mx+b => f'(x) = m
# Para una parabola:
# y = f(x) = ax^2 + bx + c => f'(x) = 2ax + b
# Para calcular a y b, despejamos b en funcion de a. Y despues despejamos a "a" sabiendo valores qe qeriamos qe de
# (El punto maximo y los ceros)
	var hmax = 600.0
	var xhmax = 500.0
	var xcayo = 1000.0
	var a = aparabola(hmax, xhmax, xcayo) #OJO, qe si no tienen decimales, redondea
	var b = bparabola(a, xcayo)
	# print(a, b)
	position.x += 1
	position.y -= (2 * a * position.x) + b
	if position.x == xcayo:
		position.x = 0