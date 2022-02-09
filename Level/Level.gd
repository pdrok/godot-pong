extends Node



func _on_Left_body_entered(body):
	 $Ball.position = Vector2(640, 360)


func _on_Rigth_body_entered(body):
	$Ball.position = Vector2(640, 360)
