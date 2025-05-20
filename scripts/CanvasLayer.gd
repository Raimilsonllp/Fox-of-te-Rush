extends CanvasLayer

@onready var rotuloMoedas = $Label
@onready var timer1s = $Timer1s  


func _process(delta):
	if %GameManager:
		rotuloMoedas.text = str(%GameManager.score, " / ", %GameManager.objetivo)

func _on_button_pressed() -> void:
	get_tree().paused = true
	$Pause_menu.visible = true
	print("TESTE")

func _on_Timer1s_timeout() -> void:
	Globais.segundos += 1
	print("Segundos: ", Globais.segundos)
