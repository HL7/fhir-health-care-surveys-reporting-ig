// Respiratory Rate Observation
Instance: observation-resprate-example
InstanceOf:  $us-core-respiratory-rate
Title: "Respiratory Rate Example"
Description: "An example of an Observation (Respiratory Rate)"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-respiratory-rate"
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9279-1 "Respiratory rate"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/practitioner-nichols)
* valueQuantity.value = 16
* valueQuantity.unit = "breaths/minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
