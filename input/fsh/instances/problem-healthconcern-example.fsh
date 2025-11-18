// Problem - Health Concern
Instance: problem-healthconcern-example
InstanceOf: $us-core-condition-problems-health-concerns
Description: "An example of a Condition (Health Concern)"
Title: "Health Concern Example"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = http://snomed.info/sct#195662009 "Acute viral pharyngitis"
* subject = Reference(Patient/patient-ledner)
* onsetDateTime = "2025-01-01"
* recordedDate = "2025-01-02"
* recorder = Reference(Practitioner/practitioner-nichols)
