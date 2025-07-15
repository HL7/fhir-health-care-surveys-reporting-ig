Instance: healthcare-endpoint
InstanceOf: USPublicHealthEndpoint
Title: "Healthcare Organization Endpoint example"
Description: "An example showing a Healthcare Organization Endpoint"
Usage: #example
* identifier.system = "http://example.org/healthcare.org/enpoint-identifier"
* identifier.value = "healthcare-endpoint-id"
* status = #active
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "HealthCareSenderAndReceiver"
* managingOrganization = Reference(Organization/organization-healthcare)
* contact.system = #email
* contact.value = "endpointmanager@example.healthcare.org"
* contact.use = #work
* period.start = "2020-11-20"
* payloadType = $resource-types#Bundle
* payloadMimeType[0] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* address = "http://example.org/healthcare.org/fhir"