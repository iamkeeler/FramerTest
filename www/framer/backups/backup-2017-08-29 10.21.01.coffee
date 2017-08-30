# Import file "SetonPrototype (WorkingFile)"
sk = Framer.Importer.load("imported/SetonPrototype (WorkingFile)@1x", scale:1)

# Set up FlowComponent
flow = new FlowComponent
flow.showNext(sk.mobileExtended)

# Switch on click
sk.mobileExtended.onClick ->
	flow.showNext(sk.mobileAssets)

sk.mobileAssets.onClick ->
	flow.showPrevious()

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



flow.header = sk.TopContent