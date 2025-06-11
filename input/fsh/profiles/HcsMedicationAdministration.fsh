Profile: HcsMedicationAdministration
Parent: MedicationAdministration
Id: hcs-medicationadministration
Title: "HCS Medication Administration"
Description: "This is the MedicationAdmininstration Resource profile for the IG."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #pher
* ^version = "1.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2023-06-01"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
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