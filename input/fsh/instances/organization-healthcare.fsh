Instance: organization-healthcare
InstanceOf: USCoreOrganizationProfile
Title: "Healthcare Organization Example"
Description: "An example showing a HealthCare Organization"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization|6.1.0"
* identifier.system = "http://example.healthcare.org/fhir"
* identifier.value = "1234567898"
* active = true
* name = "Example Healthcare Organization"
* telecom.system = #phone
* telecom.value = "(917)932-2000"
* telecom.use = #work
* address.text = "3300 Mayland Avenue, Suite 227 Altanta GA"
* address.line = "4401 Peach Rd,"
* address.city = "Atlanta"
* address.state = "GA"
* address.postalCode = "81452"
* endpoint = Reference(healthcare-endpoint)