Instance: example-of-HcsMedicationRequest
InstanceOf: HcsMedicationRequest
Title: "MedicationRequest Example"
Description: "An example showing a MedicationRequest for HCS reporting."
Usage: #example
* id = "example"
* status = #entered-in-error
* intent = #order
* medicationCodeableConcept = $sct#27658006 "Amoxicillin-containing product"
* subject = Reference(1-of-Patient) "Dominique"
* authoredOn = "2015-11-01"
* requester = Reference(1-of-Practitioner) "Dr. Smith"
* encounter = Reference(example-1)
* note.text = "Patient indicated that they thought it was Amoxicillin they were taking but it was really Erythromycin"