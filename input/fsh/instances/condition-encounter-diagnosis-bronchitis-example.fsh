Instance: condition-encounter-diagnosis-example
InstanceOf: USCoreConditionEncounterDiagnosisProfile
Title: "Encounter Diagnosis Example"
Description: "An example of an encounter diagnosis condition for HCS"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis-example"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* clinicalStatus = $condition-clinical#active "Active"
* category[us-core] = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category[us-core].text = "Encounter Diagnosis"
* code.coding[0] = http://snomed.info/sct#10509002 "Acute bronchitis (disorder)"
* code.text = "Acute bronchitis"
* subject = Reference(Patient/patient-ledner) "Amy Shaw"
* encounter = Reference(Encounter/encounter-ambulatory) "Ambulatory Office Visit"
* onsetDateTime = "2023-01-02"
* recordedDate = "2023-01-02"
* recorder = Reference(Practitioner/practitioner-nichols) "Nicholas Joseph"
* asserter = Reference(Practitioner/practitioner-nichols) "Nicholas Joseph"