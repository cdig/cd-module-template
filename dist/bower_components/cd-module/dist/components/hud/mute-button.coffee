Take ["cdHUD", "PageAudio", "MuteButtonGraphic"], (cdHUD, PageAudio, Graphic)->
	
	button = document.createElement("mute-button")
	button.addEventListener "click", PageAudio.toggle
	button.innerHTML = Graphic
	cdHUD.addElement(button)
	
	PageAudio.onUpdate (enabled)->
		if enabled
			button.firstChild.classList.remove("muted")
		else
			button.firstChild.classList.add("muted")


Make "MuteButtonGraphic",
	'<svg height="1.5em" width="1.5em" viewBox="0 0 64 64" version="1.1" xmlns="http://www.w3.org/2000/svg">
		<path d="m 37.991813,22.751636 -3.083782,3.083783 c 1.588254,1.572528 2.571897,3.753462 2.571897,6.164853 0,2.410848 -0.983643,4.592324 -2.571897,6.16431 l 3.083782,3.083782 c 2.364757,-2.368011 3.82775,-5.637242 3.82775,-9.248093 0,-3.611392 -1.462993,-6.880083 -3.82775,-9.248636 z" transform="matrix(1,0,0,1,0,0)"></path>
		<path d="m 50.496123,32 c 0,-6.005432 -2.440672,-11.440956 -6.383379,-15.369023 L 41.05987,19.68385 c 3.149937,3.15319 5.097703,7.506925 5.097703,12.31615 0,4.808682 -1.948309,9.162417 -5.097703,12.31615 l 3.052874,3.052873 C 48.055451,43.440956 50.496123,38.005431 50.496123,32 z" transform="matrix(1,0,0,1,0,0)"></path>
		<path d="m 59.173768,32.000271 c 0,-8.402181 -3.412386,-16.006711 -8.925453,-21.505137 l -3.068057,3.068056 c 4.72843,4.713247 7.654417,11.233274 7.654417,18.437081 0,7.203264 -2.925987,13.723833 -7.654417,18.436538 l 3.068057,3.068057 c 5.513067,-5.497884 8.925453,-13.102957 8.925453,-21.504595 z" transform="matrix(1,0,0,1,0,0)"></path>
		<polygon points="21.085,66 44,87.208 44,12.791 21.517,34 0,34 0,66 " transform="matrix(0.57539192,0,0,0.57539192,3.3431808,3.2306919)"></polygon>
	</svg>'
