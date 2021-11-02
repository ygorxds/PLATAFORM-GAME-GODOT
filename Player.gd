extends KinematicBody2D

const UP = Vector2(0, -1)
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = -550
var motion = Vector2() #essa variável permite armazenar informações de um eixo x e y

func _physics_process(delta):
	
	motion.y += GRAVITY
	
	
	
	#essa sequencia diz a posição do eixo x ou seja o movimento para frente e para trás do nosso personagem
	if Input.is_action_pressed("ui_right"): 
		motion.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
	else:
		motion.x = 0
		
		
	if is_on_floor(): 
		print("ESTÁ NO CHÃO")
		if Input.is_action_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
		
	motion = move_and_slide(motion,UP)
		
