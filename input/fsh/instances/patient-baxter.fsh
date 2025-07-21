Instance: patient-baxter
InstanceOf: USCorePatientProfile
Title: "Patient Example"
Description: "An example showing a Patient for HCS reporting."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient|6.1.0"
/*
* extension[race].extension[ombCategory].url = "ombCategory"
* extension[race].extension[ombCategory].valueCoding = $raceEthnicity#2106-3 "White"
* extension[race].extension[text].url = "text"
* extension[race].extension[text].valueString = "White"
* extension[race].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[ethnicity].extension[ombCategory].url = "ombCategory"
* extension[ethnicity].extension[ombCategory].valueCoding = $raceEthnicity#2186-5 "Not Hispanic or Latino"
* extension[ethnicity].extension[text].url = "text"
* extension[ethnicity].extension[text].valueString = "Not Hispanic or Latino"
* extension[ethnicity].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
*/
* extension[birthsex].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension[birthsex].valueCode = #F
* extension[tribalAffiliation].extension[tribalAffiliation].url = "tribalAffiliation"
* extension[tribalAffiliation].extension[tribalAffiliation].valueCodeableConcept = $v3-TribalEntityUS#91 "Fort Mojave Indian Tribe of Arizona, California & Nevada"
* extension[tribalAffiliation].extension[isEnrolled].url = "isEnrolled"
* extension[tribalAffiliation].extension[isEnrolled].valueBoolean = true
* extension[tribalAffiliation].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-tribal-affiliation"
* identifier.use = #usual
* identifier.type = $v2-0203#MR "Medical Record Number"
* identifier.type.text = "Medical Record Number"
* identifier.system = "http://example.org/hospital.smarthealth"
* identifier.value = "1032702"
* active = true
* name[0].family = "Shaw"
* name[=].given[0] = "Amy"
* name[=].given[+] = "V."
* name[=].period.start = "2016-12-06"
* name[=].period.end = "2020-07-22"
* name[+].family = "Baxter"
* name[=].given[0] = "Amy"
* name[=].given[+] = "V."
* name[=].suffix = "PharmD"
* name[=].period.start = "2020-07-22"
* telecom[0].system = #phone
* telecom[=].value = "555-555-5555"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "amy.shaw@example.com"
* gender = #female
* birthDate = "1987-02-20"
* address[0].line = "49 Meadow St"
* address[=].city = "Mounds"
* address[=].state = "OK"
* address[=].postalCode = "74047"
* address[=].country = "US"
* address[=].period.start = "2016-12-06"
* address[=].period.end = "2020-07-22"
* address[+].line = "183 Mountain View St"
* address[=].city = "Mounds"
* address[=].state = "OK"
* address[=].postalCode = "74048"
* address[=].country = "US"
* address[=].period.start = "2020-07-22"