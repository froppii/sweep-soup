extends Node2D

const GRAVITY = -9.81
var health = 100

func _ready():
	$Label.text = "Hello, world!"
	$Label.modulate = Color.GREEN
	
	var players = {
		"croc": 1,
		"cowboy": 3,
		"me": 	{"level": 30, "health": 500},
	}
	
	players["cookie"] = 40
	players["mook"] = 970
	
	for username in players:
		print(username + ": " + str(players[username]))
	
	print(players["me"]["health"])
	
	var glass := 0.0
	
	while glass < 0.5:
		glass += randf_range(0.01, 0.2)
		
		if glass > 0.2:
			break
		print(glass)
	print("the glass is almost full")
	
	var items: Array[String] = ["thing1", "thing2", "thing3"]
	
	items[1] = "anotherthing2"
	items[2] = "anotherthing3"
	
	for item in items:
		if item.length() > 6:
			print(item)
	
	var player_height = randi_range(130, 0)
	print("you are " + str(player_height) + "cm")
	
	var roll = randf()
	if roll <= 0.8:
		print("its common!")
	else:
		print("woahza its rare")
	
	var result = add(1, 3)
	result = add(result, 10)
	print(result)
	
	health = 40
	print(health)
	
	# my code is shit
	if health <= 0:
		health = 0
		print("YOU DIED")
	elif health < 50:
		print("INJURED")
	else:
		print("YOURE ALIVE")
	
# im learning,,
func _input(event):
	if event.is_action_pressed("thing"):
		$Label.modulate = Color.RED
		jump()
	if event.is_action_released("thing"):
		$Label.modulate = Color.GREEN   
		
func jump():
	print("BOINGOINGOIGN")

func add(num1: int, num2: int) -> int:
	var result = num1 + num2
	return result
