Instance: practitioner-nichols
InstanceOf: USCorePractitionerProfile
Title: "Practitioner Example"
Description: "An example showing a Practitioner"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* identifier.use = #official
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339100"
* active = true
* name.use = #official
* name.family = "Nichols"
* name.given[0] = "Joseph"
* name.given[+] = "P"
* name.suffix = "MD"
* telecom[0].system = #phone
* telecom[=].value = "800-277-1993"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "joseph.shaw@example.com"
* address.use = #home
* address.line = "53 Sunset AveApt 9"
* address.city = "Tulsa"
* address.state = "OK"
* address.postalCode = "74126"
* address.country = "USA"
* gender = #male
* birthDate = "1963-12-14"