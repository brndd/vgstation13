/datum/digsite
	var/digsite_ID //The ID of this digsite. E.G: DIGSITE_GARDEN, DIGSITE_ANIMAL
	var/list/find_types = list() //List of IDs, as a weighted list.
	var/gen_large_artifacts = TRUE

/datum/digsite/proc/gen_find(var/exc_req)
	var/choice = archaeo_types[pickweight(find_types)]
	var/datum/find/F = new choice(exc_req)
	return F

/datum/digsite/garden
	digsite_ID = DIGSITE_GARDEN
	gen_large_artifacts = FALSE
	find_types = list(
			ARCHAEO_PLANT=100,
			ARCHAEO_SHELL=25,
			ARCHAEO_FOSSIL=25,
			ARCHAEO_REMAINS_XENO=5,
			ARCHAEO_BEARTRAP=5
			)

/datum/digsite/animal
	digsite_ID = DIGSITE_ANIMAL
	gen_large_artifacts = FALSE
	find_types = list(
			ARCHAEO_FOSSIL=100,
			ARCHAEO_EGG=100,
			ARCHAEO_SHELL=50,
			ARCHAEO_PLANT=50,
			ARCHAEO_BEARTRAP=25,
			ARCHAEO_REMAINS_XENO=5
			)

/datum/digsite/house
	digsite_ID = DIGSITE_HOUSE
	find_types = list(
			ARCHAEO_BOWL=100,
			ARCHAEO_URN=100,
			ARCHAEO_CUTLERY=100,
			ARCHAEO_STATUETTE=100,
			ARCHAEO_INSTRUMENT=100,
			ARCHAEO_PEN=100,
			ARCHAEO_LIGHTER=100,
			ARCHAEO_BOX=100,
			ARCHAEO_DICE=75,
			ARCHAEO_COIN=75,
			ARCHAEO_UNKNOWN=75,
			ARCHAEO_GUITAR=50,
			ARCHAEO_SHARD=50,
			ARCHAEO_RODS=50,
			ARCHAEO_TOY=50,
			ARCHAEO_METAL=25,
			ARCHAEO_REMAINS_HUMANOID=5
			)

/datum/digsite/technical
	digsite_ID = DIGSITE_TECHNICAL
	find_types = list(
			ARCHAEO_METAL=100,
			ARCHAEO_GASTANK=100,
			ARCHAEO_TELEBEACON=100,
			ARCHAEO_TOOL=100,
			ARCHAEO_STOCKPARTS=100,
			ARCHAEO_SHARD=75,
			ARCHAEO_RODS=75,
			ARCHAEO_UNKNOWN=75,
			ARCHAEO_HANDCUFFS=50,
			ARCHAEO_BEARTRAP=50,
			ARCHAEO_SUPERSHARD=30,
			ARCHAEO_SPACESUIT=25,
			ARCHAEO_ROBOT=10,
			ARCHAEO_REMAINS_ROBOT=5
			)

/datum/digsite/temple
	digsite_ID = DIGSITE_TEMPLE
	find_types = list(
			ARCHAEO_CULTROBES=200,
			ARCHAEO_URN=100,
			ARCHAEO_BOWL=100,
			ARCHAEO_KNIFE=100,
			ARCHAEO_CRYSTAL=100,
			ARCHAEO_MASK=75,
			ARCHAEO_SASH=75,
			ARCHAEO_CULTBLADE=75,
			ARCHAEO_SOULSTONE=50,
			ARCHAEO_UNKNOWN=50,
			ARCHAEO_HANDCUFFS=25,
			ARCHAEO_BEARTRAP=25,
			ARCHAEO_KATANA=10,
			ARCHAEO_CLAYMORE=10,
			ARCHAEO_CHAOS=10,
			ARCHAEO_SHARD=10,
			ARCHAEO_RODS=10,
			ARCHAEO_METAL=10,
			ARCHAEO_LARGE_CRYSTAL=5
			)

/datum/digsite/war
	digsite_ID = DIGSITE_WAR
	find_types = list(
			ARCHAEO_GUN=100,
			ARCHAEO_KNIFE=100,
			ARCHAEO_LASER=75,
			ARCHAEO_KATANA=75,
			ARCHAEO_CLAYMORE=75,
			ARCHAEO_LANCE=75,
			ARCHAEO_UNKNOWN=50,
			ARCHAEO_ROULETTE=50,
			ARCHAEO_CULTROBES=50,
			ARCHAEO_CULTBLADE=50,
			ARCHAEO_HANDCUFFS=25,
			ARCHAEO_BEARTRAP=25,
			ARCHAEO_TOOL=25,
			ARCHAEO_CHAOS=10,
			ARCHAEO_ROBOT=10,
			ARCHAEO_REMAINS_ROBOT=5
			)