Profile: HcsMedicationRequest
Parent: USCoreMedicationRequestProfile|6.1.0
Id: hcs-medicationrequest
Title: "HCS Medication Request"
Description: "This is the MedicationStatement Resource profile for the IG."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #pher
* ^version = "1.0.1"
* ^experimental = false
//* ^extension[$compliesWithProfile][+].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest|6.1.0"
* ^date = "2023-06-01"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
* . ^short = "HCS Medication Request"
* . ^definition = "Sets expectations for supported capabilities for MedicationStatement resource in Health Care Surveys Content IG."
* . ^mustSupport = false
* status 1..1 MS
* medication[x] 1..1 MS
* subject 1..1 MS
* subject only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient|6.1.0)
* encounter 0..1 MS
* encounter only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter|6.1.0)
* authoredOn 1..1 MS
* dosageInstruction 0..1 MS