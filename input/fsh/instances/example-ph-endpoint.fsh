Instance: example-ph-endpoint
InstanceOf: USPublicHealthEndpoint
Title: "Public Health Organization Endpoint example"
Description: "An example showing a Public Health Organization Endpoint"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2020-11-29T02:03:28.045+00:00"
* identifier.system = "http://example.pha.org/enpoint-identifier"
* identifier.value = "pha-endpoint-id"
* status = #active
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "PHAReceiver"
* managingOrganization = Reference(example-pha-org)
* contact.system = #email
* contact.value = "endpointmanager@example.pha.org"
* contact.use = #work
* period.start = "2020-11-20"
* payloadType = $resource-types#Bundle
* payloadMimeType[0] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* address = "http://example.pha.org/fhir"