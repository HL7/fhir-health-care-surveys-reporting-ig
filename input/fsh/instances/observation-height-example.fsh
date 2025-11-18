// Height Observation
Instance: observation-height-example
InstanceOf: $us-core-body-height
Title: "Body Height Example"
Description: "An example of an Observation (Body Height)"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-height"
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8302-2 "Body height"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/practitioner-nichols)
* valueQuantity.value = 170
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm
