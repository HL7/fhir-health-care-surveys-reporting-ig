Instance: organization-healthcare
InstanceOf: USPublicHealthOrganization
Title: "Healthcare Organization Example"
Description: "An example showing a HealthCare Organization"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-organization"
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
* endpoint = Reference(Endpoint/endpoint-healthcare-example)