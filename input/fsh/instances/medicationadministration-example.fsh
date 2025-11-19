Instance: medicationadministration-example
InstanceOf: HealthCareSurveysMedicationAdministration
Title: "MedicationAdministration - Lantus Subcutaneous"
Description: "Example medication administration of Lantus 20 Units subcutaneously before breakfast for healthcare surveys reporting."
Usage: #example
* status = #completed
* medicationCodeableConcept = $rxnorm#285018 "Lantus 100 UNT/ML Injectable Solution"
* subject = Reference(Patient/patient-ledner)
* effectivePeriod.start = "2015-01-15T04:30:00+01:00"
* effectivePeriod.end = "2015-01-15T14:30:00+01:00"
* performer.actor = Reference(Practitioner/practitioner-nichols)
* dosage.text = "20 Units SC before breakfast"
* dosage.route = $sct#263887005 "Subcutaneous (qualifier value)"
* dosage.dose = 20 'U' "U"