Instance: condition-encounter-diagnosis-example
InstanceOf: USCoreConditionEncounterDiagnosisProfile
Title: "Condition - Acute Bronchitis (Encounter Diagnosis)"
Description: "Example encounter diagnosis of acute bronchitis confirmed during ambulatory office visit."
Usage: #example
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* clinicalStatus = $condition-clinical#active "Active"
* category[us-core] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[us-core].text = "Encounter Diagnosis"
* code.coding[0] = http://snomed.info/sct#10509002 "Acute bronchitis (disorder)"
* code.text = "Acute bronchitis"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory) "Ambulatory Office Visit"
* onsetDateTime = "2023-01-02"
* recordedDate = "2023-01-02"
* recorder = Reference(Practitioner/practitioner-nichols)
* asserter = Reference(Practitioner/practitioner-nichols)