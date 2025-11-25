Profile: HealthCareSurveysMedicationAdministration
Parent: MedicationAdministration
Id: hcs-medicationadministration
Title: "Health Care Surveys Medication Administration"
Description: "This is the MedicationAdmininstration Resource profile for the IG."
* . ^short = "HCS Medication Administration"
* . ^definition = "Sets expectations for supported capabilities for MedicationAdmininstration resource"
* . ^mustSupport = false
* statusReason MS
* medication[x] MS
* subject MS
* subject only Reference($us-core-patient)
* context MS
* context only Reference($us-core-encounter)
* effective[x] MS
* performer MS
* reasonCode MS
* reasonReference MS
* dosage MS