Instance: condition-problem-liveborn-example
InstanceOf: $USCoreConditionProblemsHealthConcernsProfile
Title: "Condition - Single Liveborn in Hospital"
Description: "Example condition representing a single liveborn birth in hospital for healthcare surveys reporting."
Usage: #example
* clinicalStatus = $condition-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category[us-core] = $condition-category#problem-list-item "Problem List Item"
* category[us-core].text = "Problem"
* code = $sct#442311008 "Liveborn born in hospital"
* code.text = "Single liveborn, born in hospital"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory) "Ambulatory Office Visit"
* onsetDateTime = "2016-08-10"