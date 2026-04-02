extends CharacterBody2D
@onready var target_position=self.position
var following = true
var following_dist=(150)
var speed=200
func _physics_process(_delta: float) -> void:
	var player_pos = AllwaysActive.player.position
	if following && (position.distance_to(player_pos)>following_dist):
		$AnimatedSprite2D.play("walk to me")
		
		var direction = (player_pos-position).normalized()
		target_position=player_pos-direction*following_dist
		
		direction=(target_position-self.position).normalized()
		velocity=direction*speed 
		move_and_slide()
	
