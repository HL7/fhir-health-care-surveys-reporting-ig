Instance: encounter-of-encounter-diagnosis
InstanceOf: USCoreConditionEncounterDiagnosisProfile
Title: "Encounter Diagnosis Example"
Description: "An example of an encounter diagnosis condition for HCS"
Usage: #example

* verificationStatus.coding.version = "4.0.0"
* verificationStatus.coding = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* clinicalStatus = $condition-clinical#active "Active"
* category[us-core] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[us-core].text = "Encounter Diagnosis"
* code.coding[0] = http://snomed.info/sct#10509002 "Acute bronchitis (disorder)"
* code.text = "Acute bronchitis"
* subject = Reference(1-of-Patient) "Amy Shaw"
* encounter = Reference(example-1) "Ambulatory Office Visit"
* onsetDateTime = "2023-01-02"
* recordedDate = "2023-01-02"
* recorder = Reference(1-of-Practitioner) "Nicholas Joseph"
* asserter = Reference(1-of-Practitioner) "Nicholas Joseph"