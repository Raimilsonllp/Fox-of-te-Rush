extends Label

@onready var rotuloMoedas = $Label
@onready var timer1s = $Timer1s
@onready var tempoLabel = $TempoLabel  
var minutos = 0
var segundos = 0

func _ready() -> void:
	minutos = int(Globais.tempo / 60)
	segundos = Globais.tempo % 60
	var minutosDezenas = int(minutos/10)
	var minutosUnidades = int(minutos%10)
	var segundosDezenas = int(segundos/10)
	var segundosUnidades = int(segundos%10)
	self.text = str(minutosDezenas,minutosUnidades,":",segundosDezenas,segundosUnidades)


func _on_timer_timeout() -> void:
	Globais.tempo += 1
	minutos = int(Globais.tempo / 60)
	segundos = Globais.tempo % 60
	var minutosDezenas = int(minutos/10)
	var minutosUnidades = int(minutos%10)
	var segundosDezenas = int(segundos/10)
	var segundosUnidades = int(segundos%10)
	self.text = str(minutosDezenas,minutosUnidades,":",segundosDezenas,segundosUnidades)
