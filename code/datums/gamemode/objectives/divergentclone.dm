/datum/objective/freeform/prove_identity
    explanation_text = "Convince the world that you are the prime version of <person>."

/datum/objective/freeform/prove_identity/format_explanation()
    return "Convince the world that you are the prime version of [owner.name]."

/datum/objective/freeform/prove_identity/PostAppend()
    explanation_text = format_explanation()
    return TRUE

/datum/objective/acquire_personal_id
    explanation_text = "Acquire an ID card matching your identity and DNA."
    name = "Acquire personal ID card"

/datum/objective/acquire_personal_id/IsFulfilled()
    if(..())
        return TRUE
    
    if(!owner || !owner.current)
        return FALSE
    
    for(var/obj/O in get_contents_in_object(owner.current))
        if(istype(O, /obj/item/weapon/card/id))
            var/obj/item/weapon/card/id/I = O
            var/datum/dna/D = owner.current.dna
            if(I.dna_hash == D.unique_enzymes && I.fingerprint_hash == md5(D.uni_identity))
                return TRUE
    return FALSE
        



