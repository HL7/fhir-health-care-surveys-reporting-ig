// Location
Instance: location-example
InstanceOf: USCoreLocation
Title: "Location - General Hospital Main Campus"
Description: "Example hospital location representing the main campus of General Hospital for healthcare surveys reporting."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-location"
* identifier.system = "http://www.acme.org/location"
* identifier.value = "29"
* status = #active
* name = "General Hospital - Main Campus"
* description = "Main Hospital Campus"
* mode = #instance
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HOSP "Hospital"
* telecom[0].system = #phone
* telecom[0].value = "555-555-5555"
* telecom[0].use = #work
* address.line = "123 Main St"
* address.city = "Anytown"
* address.state = "CA"
* address.postalCode = "12345"
* address.country = "US"
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/organization-example)
