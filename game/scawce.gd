extends CharacterBody2D
@onready var target_position=self.position
var following = true
var following_dist=(100)
var speed=100
func _physics_process(_delta: float) -> void:
	if following:
		$AnimatedSprite2D.play("walk to me")
		
		var player_pos = AllwaysActive.player.position
		var direction = (player_pos-position).normalized()
		target_position=player_pos-direction*following_dist
		
		direction=(target_position-self.position).normalized()
		velocity=direction*speed 
		move_and_slide()
	
