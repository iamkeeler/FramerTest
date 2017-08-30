# Import file "SetonPrototype (WorkingFile)"
sketch = Framer.Importer.load("imported/SetonPrototype (WorkingFile)@2x", scale: 1.5)

# Define animation curve and time
sk.Menu.animationOptions =
	curve: Spring(0.85)
	time: 0.6
	
# Define states for content
sk.Menu.states = 
	show:
		x: -17
		options:
			time: 0.4
	hide:
		x: -307
		options:
			time: 0.2

# Initial state	of text
sk.Menu.stateSwitch("hide")

# Cycle states on click
sk.ButtonEx.onClick ->
	sk.Menu.stateCycle("show")
	
sk.Menu.onClick ->	
	sk.Menu.stateCycle("hide")

scroll = ScrollComponent.wrap(sk.screenContent)
scroll.scrollHorizontal = false
