Instance: Inline-Instance-for-reporting-bundle-example-1
InstanceOf: USPublicHealthMessageHeader
Usage: #inline
* id = "messageheader-example-reportheader"
* extension[0].url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-data-encrypted-extension"
* extension[=].valueBoolean = false
* extension[+].url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-report-initiation-type-extension"
* extension[=].valueCodeableConcept = $us-ph-report-initiation-types#subscription-notification
* extension[+].url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-message-processing-category-extension"
* extension[=].valueCode = http://hl7.org/fhir/message-significance-category#notification
* eventCoding = $us-ph-messageheader-message-types#healthcare-survey-report-message
* destination.name = "PHA endpoint"
* destination.endpoint = "http://example.org/pha-fhir"
* sender.reference = "Organization/organization-healthcare"
* source.name = "Healthcare Organization"
* source.software = "Backend Service App"
* source.version = "3.1.45.AABB"
* source.contact.system = #phone
* source.contact.value = "+1 (917) 123 4567"
* source.endpoint = "http://example.org/healthcare.org/fhir"
* reason = $us-ph-triggerdefinition-namedevents#encounter-close
* focus.reference = "http://example.org/fhir/Bundle/healthcare-surveys-content-bundle"