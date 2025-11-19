// Lab Observation
Instance: observation-lab-example
InstanceOf: USCoreLaboratoryResultObservationProfile
Title: "Observation - Leukocytes Laboratory Result"
Description: "Example laboratory observation of leukocytes (white blood cells) in blood for healthcare surveys reporting."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab"
* status = #final
* category[us-core] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#26464-8 "Leukocytes [#/volume] in Blood"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory) "Ambulatory Office Visit"
* effectiveDateTime = "2025-01-02"
* issued = "2025-01-02T10:30:00Z"
* performer = Reference(Practitioner/practitioner-nichols)
* valueQuantity.value = 6.8
* valueQuantity.unit = "10^3/uL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #10^3/uL
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
