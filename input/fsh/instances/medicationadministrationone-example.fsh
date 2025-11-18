// Medication Administration - Ibuprofen
Instance: medicationadministrationone-example
InstanceOf: HealthCareSurveysMedicationAdministration
Title: "Medication Administration Example"
Description: "An example of a MedicationAdministration"
Usage: #example
* status = #completed
* medicationCodeableConcept = $rxnorm#285018 "Lantus 100 UNT/ML Injectable Solution"
* subject = Reference(Patient/patient-ledner)
* effectiveDateTime = "2025-01-02T09:00:00Z"
* performer.actor = Reference(Practitioner/practitioner-nichols)
* reasonCode = http://snomed.info/sct#43724002 "Shivering"
* dosage.text = "400 mg orally"
* dosage.route = http://snomed.info/sct#26643006 "Oral route"
* dosage.dose.value = 400
* dosage.dose.unit = "mg"
