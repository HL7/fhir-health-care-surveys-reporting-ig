Profile: HcsMedicationRequest
Parent: USCoreMedicationRequestProfile|6.1.0
Id: hcs-medicationrequest
Title: "HCS Medication Request"
Description: "This is the MedicationStatement Resource profile for the IG."
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
* . ^short = "HCS Medication Request"
* . ^definition = "Sets expectations for supported capabilities for MedicationStatement resource in Health Care Surveys Content IG."
* . ^mustSupport = false
// TODO - need to look at these constraints and remove any that are not needed (I think status, medication, subject, enocunter need to be remvoed) - is there a reason dosageInstruction is changed from the us core constraint of 0..* to 0..1?
* status 1..1 MS
* medication[x] 1..1 MS
* subject 1..1 MS
* subject only Reference($us-core-patient)
* encounter 0..1 MS
* encounter only Reference($us-core-encounter)
* authoredOn 1..1 MS
* dosageInstruction 0..1 MS