# Import file "SetonPrototype (WorkingFile)"
sk = Framer.Importer.load("imported/SetonPrototype (WorkingFile)@1x", scale: 1)

buttonHit = new Layer
	x: 7
	y: 38
	height: 40
	width: 39
	opacity: 0.00

# Define animation curve and time
sk.Menu.animationOptions =
	curve: Spring(0.85)
	time: 0.6
	
# Define states for content
sk.Menu.states = 
	show:
		options:
			time: 0.4
	hide:
		x: -290
		options:
			time: 0.2

# Initial state	of text
sk.Menu.stateSwitch("hide")

# Cycle states on click
sk.Butt.onClick ->
	sk.Menu.stateCycle()
	
sk.Menu.onClick ->	
	sk.Menu.stateCycle("hide")

scroll = ScrollComponent.wrap(sk.screenContent)
scroll.scrollHorizontal = false
