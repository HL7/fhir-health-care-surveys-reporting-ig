Instance: patient-ledner
InstanceOf: USCorePatientProfile
Title: "Patient 1 - Example"
Description: "An example showing a Patient"
Usage: #example
* identifier.system = "urn:system"
* identifier.value = "patient-ledner"
* name.family = "Ledner144"
* name.given = "Dominique369"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient|6.1.0"
* identifier[0].system = "urn:oid:2.16.840.1.113883.4.3.6"
* identifier[=].value = "patient-OakleyAnnie"
* identifier[+].use = #usual
* identifier[=].type.text = "SHID"
* identifier[=].system = "http://hospital.smarthealthit.org"
* identifier[=].value = "12446"
* identifier[+].use = #usual
* identifier[=].type.text = "FHIR"
* identifier[=].system = "http://example.com/FHIR/StructureDefinition/patient-fhir-id"
* identifier[=].value = "66574567"
* identifier[+].use = #usual
* identifier[=].type.text = "MRN"
* identifier[=].system = "urn:oid:2.16.840.1.113883.4.3.2"
* identifier[=].value = "abc123"
* telecom[0].system = #phone
* telecom[=].value = "1-(303)555-1212"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "annie.oakley@example.com"
* gender = #female
* birthDate = "1965-06-22"
* deceasedBoolean = false
* address.use = #home
* address.line = "25 Church St"
* address.city = "Bixby"
* address.state = "OK"
* address.postalCode = "74008"
* address.country = "USA"
* maritalStatus.coding[0] = $sct#36629006 "Legally married"
* maritalStatus.coding[+] = $v3-MaritalStatus#M
* communication.language = urn:ietf:bcp:47#en "English"
* communication.preferred = true
* generalPractitioner = Reference(Practitioner/practitioner-1)
* managingOrganization = Reference(organization-healthcare) "Healthcare Example"