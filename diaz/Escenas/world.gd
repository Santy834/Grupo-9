extends Node2D

var contador: int = 0
@onready var objetos: Node2D = $objetos


func _ready():
	$Label.text = str(contador)
	for objeto in objetos.get_children():
		objeto.obj_desabilitado.connect(_on_obj_desabilitado)
		
	
	
func aumentar_cont():
	contador += 1
	$Label.text = str(contador)

func _on_obj_desabilitado(nombre: String):
	print(nombre + " desabilitado")
	aumentar_cont()
	
