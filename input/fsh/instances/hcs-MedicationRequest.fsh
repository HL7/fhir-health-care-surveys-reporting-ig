Instance: hcs-MedicationRequest
InstanceOf: USCoreMedicationRequestProfile
Title: "MedicationRequest Example"
Description: "An example showing a MedicationRequest for HCS reporting."
Usage: #example
* status = #entered-in-error
* intent = #order
* medicationCodeableConcept = $sct#27658006 "Amoxicillin-containing product"
* subject = Reference(patient-ledner) "Dominique"
* authoredOn = "2015-11-01"
* requester = Reference(practitioner-1) "Dr. Smith"
* encounter = Reference(encounter-ambulatory)
* note.text = "Patient indicated that they thought it was Amoxicillin they were taking but it was really Erythromycin"