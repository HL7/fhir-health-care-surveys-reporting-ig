Instance: organization-pha
InstanceOf: $USCoreOrganizationProfile
Title: "Organization - Example Public Health Agency"
Description: "Example public health agency organization that receives and processes healthcare survey reports."
Usage: #example

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
* endpoint = Reference(Endpoint/endpoint-pha-example)