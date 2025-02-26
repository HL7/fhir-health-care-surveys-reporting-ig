Instance: example-healthcare-endpoint
InstanceOf: USPublicHealthEndpoint
Title: "Healthcare Organization Endpoint example"
Description: "An example showing a Healthcare Organization Endpoint"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-11-29T02:03:28.045+00:00"
* identifier.system = "http://example.healthcare.org/enpoint-identifier"
* identifier.value = "healthcare-endpoint-id"
* status = #active
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "HealthCareSenderAndReceiver"
* managingOrganization = Reference(example-healthcare-org)
* contact.system = #email
* contact.value = "endpointmanager@example.healthcare.org"
* contact.use = #work
* period.start = "2020-11-20"
* payloadType = $resource-types#Bundle
* payloadMimeType[0] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* address = "http://example.healthcare.org/fhir"