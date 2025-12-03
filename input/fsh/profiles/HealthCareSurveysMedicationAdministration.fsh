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
* subject only Reference(USCorePatientProfile)
* context MS
* context only Reference(USCoreEncounterProfile)
* effective[x] MS
* performer MS
* reasonCode MS
* reasonReference MS
* dosage MS