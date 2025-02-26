Profile: HealthcareSurveysContentBundle
Parent: Bundle
Id: hcs-content-bundle
Title: "Health Care Surveys Content Bundle"
Description: "Bundle Resource profile for health care surveys report content. This bundle is always part of the Health Care Surveys Reporting Bundle and organizes the information using a Composition resource and will contain all the resources referenced from a Composition resource."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #pher
* ^version = "1.0.1"
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
* entry contains composition 1..1 MS
* entry[composition].resource only HcsComposition