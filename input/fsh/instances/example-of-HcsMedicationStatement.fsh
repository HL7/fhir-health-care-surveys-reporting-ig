Instance: example-of-HcsMedicationStatement
InstanceOf: HcsMedicationStatement
Title: "MedicationStatement Example"
Description: "An example showing a MedciationStatement for HCS reporting."
Usage: #example
* id = "example"
* status = #entered-in-error
* medicationCodeableConcept = $sct#27658006 "Amoxicillin-containing product"
* subject = Reference(Patient/1) "Dominique"
* effectiveDateTime = "2015-11-01"
* dateAsserted = "2015-11-01"
* informationSource = Reference(Patient/1)
* note.text = "Patient indicated that they thought it was Amoxicillin they were taking but it was really Erythromycin"