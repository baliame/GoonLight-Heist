/atom/movable/lighting_overlay
	name          = ""

	icon          = 'Lighting/icon.png'
	color         = LIGHTING_BASE_MATRIX

	mouse_opacity = 0
	layer         = LIGHTING_LAYER
	invisibility  = INVISIBILITY_LIGHTING

	blend_mode    = BLEND_MULTIPLY

/atom/movable/lighting_overlay/New(var/atom/loc)
	. = ..()
	verbs.Cut()
	global.all_lighting_overlays += src

	var/turf/T         = loc // If this runtimes atleast we'll know what's creating overlays in things that aren't turfs.
	T.lighting_overlay = src
	// T.luminosity       = 0

/atom/movable/lighting_overlay/Destroy()
	var/turf/T = loc
	if(istype(T))
		T.lighting_overlay = null

	..()
