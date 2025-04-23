extends Node2D

signal obj_desabilitado(nombre: String)

@onready var sprite = preload("res://Assets/xywe8lz19ufe1.webp")
@onready var pj: Sprite2D = $pj
@onready var nombre_pj: Label = %nombre_pj



@export var nombre = ""
@export var color_spite = Color("#ffffff")

var contador: int = 0

func _ready():
	nombre_pj.text = nombre
	pj.modulate = color_spite
	pj.texture = sprite
	%nombre_pj
	
func cambiar_nombre(nuevo_nombre: String):
	nombre = nuevo_nombre


func _on_button_pressed():
	print("pressed " + nombre + str(contador))
	contador += 1
	if contador == 3:
		$Button.disabled = true
		obj_desabilitado.emit(nombre)
