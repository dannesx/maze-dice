extends KinematicBody

var vetor = Vector3(0,0,0)
const velocidade = 6
const velocidade_rotacao = velocidade

func _ready():
	pass
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_left"):
		vetor.x = 0
	elif Input.is_action_pressed("ui_right"):
		vetor.x = velocidade
		$MeshInstance.rotate_z(deg2rad(-velocidade_rotacao))
		 
	elif Input.is_action_pressed("ui_left"):
		vetor.x = -velocidade
		$MeshInstance.rotate_z(deg2rad(velocidade_rotacao))
	else:
		vetor.x = 0
		
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_down"):
		vetor.z = 0
	elif Input.is_action_pressed("ui_up"):
		vetor.z = -velocidade
		$MeshInstance.rotate_x(deg2rad(-velocidade_rotacao))
	elif Input.is_action_pressed("ui_down"):
		vetor.z = velocidade
		$MeshInstance.rotate_x(deg2rad(velocidade_rotacao))
	else:
		vetor.z = 0
	move_and_slide(vetor)
