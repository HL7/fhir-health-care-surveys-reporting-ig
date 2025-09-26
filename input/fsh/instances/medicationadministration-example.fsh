Instance: medicationadministration-example
InstanceOf: HealthCareSurveysMedicationAdministration
Title: "HCS Medication Administration Example"
Description: "An example showing a Medication Administration resource"
Usage: #example
* status = #completed
* medicationCodeableConcept = $rxnorm#285018 "Lantus 100 UNT/ML Injectable Solution"
* subject = Reference(Patient/patient-ledner) "Donald Duck"
* effectivePeriod.start = "2015-01-15T04:30:00+01:00"
* effectivePeriod.end = "2015-01-15T14:30:00+01:00"
* performer.actor = Reference(Practitioner/practitioner-1)
* dosage.text = "20 Units SC before breakfast"
* dosage.route = $sct#263887005 "Subcutaneous (qualifier value)"
* dosage.dose = 20 'U' "U"