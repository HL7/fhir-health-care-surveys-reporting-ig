Instance: 1-of-Patient
InstanceOf: Patient
Title: "Patient 1 - Example"
Description: "An example showing a Patient"
Usage: #example
* id = "1"
* meta.versionId = "3"
* meta.lastUpdated = "2019-04-23T10:30:54.819-04:00"
* identifier.use = #official
* identifier.type = $v2-0203#MR "Medical Record Number"
* identifier.type.text = "Medical Record Number"
* identifier.system = "http://example.healthcare.org"
* identifier.value = "1213208"
* active = true
* name.use = #official
* name.family = "Ledner144"
* name.given = "Dominique369"
* telecom[0].system = #phone
* telecom[=].value = "800-504-7344"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "brian.gracia@example.healthcare.com"
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
* generalPractitioner = Reference(Practitioner/1)
* managingOrganization = Reference(example-healthcare-org) "Healthcare Example"