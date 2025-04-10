Instance: example-pha-org
InstanceOf: Organization
Title: "Public Health Organization Example"
Description: "An example showing a Public Health Organization"
Usage: #example
* identifier.system = "http://example.pha.org/fhir"
* identifier.value = "1063494177"
* active = true
* name = "Example PHA Organization"
* telecom.system = #phone
* telecom.value = "(816)932-2000"
* telecom.use = #work
* address.text = "3300 Washtenaw Avenue, Suite 227 Altanta GA"
* address.line = "4401 Wornall Rd,"
* address.city = "Atlanta"
* address.state = "GA"
* address.postalCode = "81452"
* endpoint = Reference(example-ph-endpoint)