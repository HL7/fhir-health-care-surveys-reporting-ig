Profile: HcsServiceRequest
Parent: ServiceRequest
Id: hcs-servicerequest
Title: "HCS Service Request"
Description: "This is the ServiceRequest Resource profile for the IG."
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
* . ^short = "HCS Service Request"
* . ^definition = "Sets expectations for supported capabilities for ServiceRequest resource in Health Care Surveys Content IG."
* . ^mustSupport = false
* status 1..1 MS
* intent 1..1 MS
* category 1..1 MS
* code 1..1
* code from $us-core-procedure-code (extensible)
* code ^mustSupport = false
* code ^binding.description = "The set of procedure codes to be used for orders"
* subject 1..1 MS
* subject only Reference($us-core-patient)
* occurrence[x] 0..1 MS
* authoredOn 0..1 MS
* requester 0..1 MS
* requester only Reference($us-core-practitioner)