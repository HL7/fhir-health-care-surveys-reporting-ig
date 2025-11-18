// Organization - Provider
Instance: organization-example
InstanceOf:  $us-core-organization
Title: "Organization Example"
Description: "An example of an Organization (Provider)"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1234567893"
* active = true
* name = "General Hospital"
* telecom[0].system = #phone
* telecom[0].value = "555-555-5555"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "contact@generalhospital.example.com"
* telecom[1].use = #work
* address.line = "123 Main St"
* address.city = "Anytown"
* address.state = "CA"
* address.postalCode = "12345"
* address.country = "US"
