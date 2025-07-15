Instance: ph-endpoint
InstanceOf: USPublicHealthEndpoint
Title: "Public Health Organization Endpoint example"
Description: "An example showing a Public Health Organization Endpoint"
Usage: #example
* identifier.system = "http://example.org/pha/enpoint-identifier"
* identifier.value = "pha-endpoint-id"
* status = #active
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "PHAReceiver"
* managingOrganization = Reference(Organization/organization-pha)
* contact.system = #email
* contact.value = "endpointmanager@example.pha.org"
* contact.use = #work
* period.start = "2020-11-20"
* payloadType = $resource-types#Bundle
* payloadMimeType[0] = #application/fhir+xml
* payloadMimeType[+] = #application/fhir+json
* address = "http://example.org/pha-fhir"