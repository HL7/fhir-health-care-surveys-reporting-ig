// Weight Observation
Instance: observation-weight-example
InstanceOf:  $us-core-body-weight
Title: "Body Weight Example"
Description: "An example of an Observation (Body Weight)"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-weight"
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#29463-7 "Body weight"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/practitioner-nichols)
* valueQuantity.value = 68
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg
