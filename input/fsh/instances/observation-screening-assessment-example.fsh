// Screening Assessment
Instance: observation-screening-assessment-example
InstanceOf: USCoreObservationScreeningAssessmentProfile
Title: "Observation - PHQ-9 Screening (Alternate Profile)"
Description: "Example PHQ-9 depression screening assessment using the alternate US Core screening assessment profile."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-screening-assessment"
* status = #final
* category[survey] = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = http://loinc.org#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory)
* effectiveDateTime = "2025-01-02T09:15:00Z"
* issued = "2025-01-02T09:20:00Z"
* performer = Reference(Practitioner/practitioner-nichols)
* valueInteger = 3
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
