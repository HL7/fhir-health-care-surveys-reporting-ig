Instance: organization-healthcare
InstanceOf: USPublicHealthOrganization
Title: "Organization - Example Healthcare Organization"
Description: "Example healthcare organization that submits survey data to public health agencies."
Usage: #example

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