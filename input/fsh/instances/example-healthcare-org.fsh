Instance: example-healthcare-org
InstanceOf: Organization
Title: "Healthcare Organization Example"
Description: "An example showing a HealthCare Organization"
Usage: #example
* identifier.system = "http://example.healthcare.org/fhir"
* identifier.value = "1063494177"
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
* endpoint = Reference(example-healthcare-endpoint)