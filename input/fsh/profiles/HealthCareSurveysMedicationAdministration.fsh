Profile: HealthCareSurveysMedicationAdministration
Parent: MedicationAdministration
Id: hcs-medicationadministration
Title: "HCS Medication Administration"
Description: "This is the MedicationAdmininstration Resource profile for the IG."
* . ^short = "HCS Medication Administration"
* . ^definition = "Sets expectations for supported capabilities for MedicationAdmininstration resource"
* . ^mustSupport = false
* statusReason 0..1 MS
* medication[x] 1..1 MS
* subject 1..1 MS
* subject only Reference($us-core-patient)
* context 0..1 MS
* context only Reference($us-core-encounter)
* effective[x] 1..1 MS
* performer 0..* MS
* dosage 0..1 MS