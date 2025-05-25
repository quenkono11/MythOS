extends Control

@onready var timer: Timer = $Timer



func extractKnowledge():
	if $ProgressBar.value < 100.0:
		var random_increment = randf_range(0.01, 6.0)
		$ProgressBar.value += random_increment
		print("Added: ", random_increment, " | Total Value: ", $ProgressBar.value)
		if $ProgressBar.value >= 100.0:
			print("Reached or exceeded 100. Stopping.")
			timer.stop()
	else:
		timer.stop()


func _on_timer_timeout() -> void:
	extractKnowledge()


func _on_button_pressed() -> void:
	$Button.hide()
	timer.start()
	$"Extraction Progess Label".show()
	$ProgressBar.show()
