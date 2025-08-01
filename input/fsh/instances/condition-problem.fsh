Instance: condition-problem
InstanceOf: USCoreConditionProblemsHealthConcernsProfile
Title: "Condition Example"
Description: "An example showing a Condition for HCS reporting."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns|6.1.0"
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category[us-core] = $condition-category#problem-list-item "Problem List Item"
* category[us-core].text = "Problem"
* code = $sct#442311008 "Liveborn born in hospital"
* code.text = "Single liveborn, born in hospital"
* subject = Reference(Patient/patient-ledner) "Amy V. Shaw"
* onsetDateTime = "2016-08-10"