# Import file "SetonPrototype (WorkingFile)"
sk = Framer.Importer.load("imported/SetonPrototype (WorkingFile)@1x", scale:1)

# Define animation curve and time
sk.Menu.animationOptions =
	curve: Spring(0.85)
	time: 0.6
	
#Parents


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
			
sk.mobileExtended.states = 
	show:
		x: 0
		options:
			time: 0.4
			delay: 0.4
	hide:
		x: -360
		options:
			time: 0.5
			delay: 0

sk.mobileAssets.states = 
	show:
		x: 0
		options:
			time: 0.4
	hide:
		x: 360
		options:
			time: 0.5

# Initial state	of text
sk.Menu.stateSwitch("hide")
sk.mobileAssets.stateSwitch("hide")

# Cycle states on click
sk.ButtonEx.onClick ->
	sk.Menu.stateCycle("show")
	
sk.Menu.onClick ->	
	sk.Menu.stateCycle("hide")

scroll = ScrollComponent.wrap(sk.screenContent)
scroll.scrollHorizontal = false

sk.mobileExtended.onClick ->
	sk.mobileExtended.stateCycle("hide")
	sk.mobileAssets.stateCycle("show")
	
sk.mobileAssets.onClick ->
	sk.mobileExtended.stateCycle("show")
	sk.mobileAssets.stateCycle("hide")

