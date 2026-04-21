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
		target_position = player_pos-direction*following_dist
		
		var error = (target_position-self.position)
		
		if AllwaysActive.player.walking:
			$AnimatedSprite2D.play("walk to me")
		else:
			$AnimatedSprite2D.play("stand front")
		
		if error.length()>10:
			velocity=error.normalized()*speed
		else:
			velocity=Vector2.ZERO
			
		
		move_and_slide()
		
		#if error.length()>10:
			#pass
		
	
