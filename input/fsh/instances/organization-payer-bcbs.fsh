// Organization - Payer
Instance: organization-payer-bcbs
InstanceOf: $USCoreOrganizationProfile
Title: "Payer Organization Example - Blue Cross Blue Shield"
Description: "An example of an Organization (Payer - Blue Cross Blue Shield)"
Usage: #example

* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1234567893"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#pay "Payer"
* name = "Blue Cross Blue Shield"
* telecom[0].system = #phone
* telecom[0].value = "800-555-1234"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "contact@bcbs.example.com"
* telecom[1].use = #work
* address.line = "456 Insurance Ave"
* address.city = "Anytown"
* address.state = "CA"
* address.postalCode = "12345"
* address.country = "US"
