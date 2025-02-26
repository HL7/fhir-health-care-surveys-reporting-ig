Profile: HealthcareSurveysReportingBundle
Parent: Bundle
Id: hcs-reporting-bundle
Title: "Health Care Surveys Reporting Bundle"
Description: "Bundle Resource profile for exchanging health care surveys report. This bundle contains the MessageHeader resource used for routing and the Health Care Surveys Content Bundle specifying the content."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #pher
* ^version = "1.0.1"
* ^status = #draft
* ^experimental = false
* ^date = "2019-09-01"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
* entry ..* MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    sliceMessageHeader 1..1 MS and
    contentBundle 1..1 MS
* entry[sliceMessageHeader].resource only USPublicHealthMessageHeader
* entry[contentBundle].resource only HealthcareSurveysContentBundle