Instance: self-tylenol
InstanceOf: MedicationRequest
Title: "MedicationRequest Example"
Description: "An example showing a MedciationRequest for HCS reporting."
Usage: #example
* identifier.use = #official
* identifier.system = "http://acme.org/prescriptions"
* identifier.value = "12345689"
* status = #active
* intent = #plan
* reportedBoolean = true
* medicationCodeableConcept = $rxnorm#1187314 "Tylenol PM Pill"
* medicationCodeableConcept.text = "Tylenol PM Pill"
* subject = Reference(Patient/example) "Amy V. Shaw"
* encounter = Reference(example-1) "Office Visit"
* authoredOn = "2019-06-24"
* requester = Reference(Patient/example) "**self-prescribed**"
* dosageInstruction.text = "Takes 1-2 tablets once daily at bedtime as needed for restless legs"