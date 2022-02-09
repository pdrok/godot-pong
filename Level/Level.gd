extends Node

var PlayerScore = 0
var OpponentScore = 0

func _on_Left_body_entered(body):
	score_achieved()
	OpponentScore += 1
	

func _on_Rigth_body_entered(body):
	score_achieved()
	PlayerScore += 1
	
func _process(delta):
	$PlayerScore.text = str(PlayerScore)
	$OpponentScore.text = str(OpponentScore)
	$CountDownLabel.text = str(int($CountDownTimer.time_left) + 1)

func _on_CountDownTImer_timeout():
	get_tree().call_group("BallGroup", "restart_ball")
	$CountDownLabel.visible = false

func score_achieved():
	$Ball.position = Vector2(640, 360)
	get_tree().call_group("BallGroup", "stop_ball")
	$CountDownTimer.start()
	$CountDownLabel.visible = true
