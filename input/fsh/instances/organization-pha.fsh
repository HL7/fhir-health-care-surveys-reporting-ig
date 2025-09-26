Instance: organization-pha
InstanceOf: USCoreOrganizationProfile
Title: "Public Health Organization Example"
Description: "An example showing a Public Health Organization"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
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
* endpoint = Reference(ph-endpoint)