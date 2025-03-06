Profile: HcsDiagnosticReport
Parent: DiagnosticReport
Id: hcs-diagnosticreport
Title: "Health Care Survey Report Diagnostic Report"
Description: "This Diagnostic Report profile is for healthcare survey report content."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #pher
* ^version = "1.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2023-06-01"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/diagnostic-report-status
* status ^comment = "[USC01] registered | partial | preliminary | final | amended | corrected | appended"

* category 1..* MS
* category only CodeableConcept
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains us-core 0..* MS
* category[us-core] from http://hl7.org/fhir/us/core/ValueSet/us-core-diagnosticreport-category (required)

* category 1..* MS
* category from http://hl7.org/fhir/ValueSet/diagnostic-service-sections (required)
* category from http://hl7.org/fhir/us/core/ValueSet/us-core-diagnosticreport-category (required)

* code 1..1 MS
* code only CodeableConcept
* code from http://hl7.org/fhir/us/core/ValueSet/us-core-diagnosticreport-report-and-note-codes (extensible)
* code ^comment = "(USCDI) US Core Report Code"

* subject 1..1 MS
* subject only Reference(USCorePatientProfile)
* subject ^comment = "(USCDI) The subject of the report - usually, but not always, the patient"


* encounter 0..1 MS
* encounter only Reference(USCoreEncounterProfile)
* encounter ^comment = "(USCDI)Health care event when test ordered"

* effective[x] 0..1 MS
* effective[x] ^constraint[1].key = "C"
* effective[x] ^comment = "(USCDI) Diagnostically relevant time (typically the time of the procedure)"
* effectiveDateTime MS
* effectivePeriod MS

* issued 0..1 MS
* issued only instant
* issued ^comment = "(USCDI) DateTime this version was made"

* performer 0..* MS
* performer ^comment = "(USCDI) Responsible Diagnostic Service"
* performer only Reference(USCorePractitionerProfile or USCorePractitionerRoleProfile or USCoreOrganizationProfile or USCoreCareTeam)

* result 0..* MS
* result ^comment = "(USCDI) Observations"
* result only Reference(USCoreLaboratoryResultObservationProfile or USCoreObservationClinicalResultProfile or Observation)

* presentedForm 0..* MS