Instance: observation-clinical-result-example
InstanceOf: USCoreBodyTemperatureProfile
Title: "Clinical Observation Example"
Description: "An example of an Observation (Body Temperature – Alternate Profile)"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-temperature"
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8310-5 "Body temperature"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* issued = "2025-01-02T09:35:00Z"
* performer = Reference(Practitioner/practitioner-nichols)
* valueQuantity.value = 37.8
* valueQuantity.unit = "C"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Cel
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
