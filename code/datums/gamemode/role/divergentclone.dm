/**
    Divergent clone

    The cloning machine has malfunctioned, and now there's a copy of you claiming to be the original!
**/

/datum/role/divergentclone
    name = DIVERGENTCLONE
    id = DIVERGENTCLONE
    required_pref = DIVERGENTCLONE
    special_role = DIVERGENTCLONE
    logo_state = "divergentclone-logo"
    wikiroute = DIVERGENTCLONE
    default_admin_voice = "The Ancient Reptilian Brain"
    admin_voice_style = "bold"


/datum/role/divergentclone/Greet()
    to_chat(antag.current, "<b><span class='warning'>You are a divergent clone!</span></b>")
    to_chat(antag.current, "<span class='warning'>The cloning machine has malfunctioned in a freak accident and created a divergent copy of you!</span>")
    to_chat(antag.current, "<span class='warning'>You must prove the world that you are the original, or at the very least that you deserve to exist.</span>")

/datum/role/divergentclone/ForgeObjectives()
    AppendObjective(/datum/objective/freeform/prove_identity)
    AppendObjective(/datum/objective/acquire_personal_id)
