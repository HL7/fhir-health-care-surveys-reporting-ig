Instance: MedicationRequest-example
InstanceOf: $USCoreMedicationRequestProfile
Title: "MedicationRequest - Amoxicillin (Entered in Error)"
Description: "Example medication request entered in error, originally documented as Amoxicillin but corrected to Erythromycin."
Usage: #example
* status = #entered-in-error
* intent = #order
* medicationCodeableConcept = $sct#27658006 "Amoxicillin-containing product"
* subject = Reference(patient-ledner)
* authoredOn = "2025-11-01"
* requester = Reference(Practitioner/practitioner-nichols)
* encounter = Reference(Encounter/encounter-ambulatory)
* note.text = "Patient indicated that they thought it was Amoxicillin they were taking but it was really Erythromycin"
