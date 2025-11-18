// Heart Rate Observation
Instance: observation-heartrate-example
InstanceOf:  $us-core-heart-rate
Title: "Heart Rate Example"
Description: "An example of an Observation (Heart Rate)"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-heart-rate"
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8867-4 "Heart rate"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/practitioner-nichols)
* valueQuantity.value = 70
* valueQuantity.unit = "beats/minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
