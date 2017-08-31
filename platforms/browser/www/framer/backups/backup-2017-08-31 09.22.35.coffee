# Import file "SetonPrototype (WorkingFile)"
sk = Framer.Importer.load("imported/SetonPrototype (WorkingFile)@3x", scale: 1)
# Import file "SetonPrototype (WorkingFile)"
#sk = Framer.Importer.load("imported/SetonPrototype (WorkingFile)@2x", scale:1)

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
			
sk.mobileExtended.states = 
	show:
		x: 0
		options:
			time: 0.4
	hide:
		x: -360
		options:
			time: 0.5

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

sk.NH1ex.onClick ->
	sk.mobileExtended.stateCycle("hide")
	sk.mobileAssets.stateCycle("show")
	
sk.mobileAssets.onClick ->
	sk.mobileExtended.stateCycle("show")
	sk.mobileAssets.stateCycle("hide")
	
scroll1 = ScrollComponent.wrap(sk.screenContent)
scroll1.scrollHorizontal = false

sk.NH1
