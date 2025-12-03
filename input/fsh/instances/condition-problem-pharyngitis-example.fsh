// Problem - Health Concern
Instance: condition-problem-pharyngitis-example
InstanceOf: USCoreConditionProblemsHealthConcernsProfile
Title: "Condition - Acute Viral Pharyngitis"
Description: "Example condition representing active acute viral pharyngitis health concern."
Usage: #example
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = http://snomed.info/sct#195662009 "Acute viral pharyngitis"
* subject = Reference(Patient/patient-ledner)
* onsetDateTime = "2025-01-01"
* recordedDate = "2025-01-02"
* recorder = Reference(Practitioner/practitioner-nichols)
