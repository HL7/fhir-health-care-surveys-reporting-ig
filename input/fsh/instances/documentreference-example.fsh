// Document Reference
Instance: documentreference-example
InstanceOf: $us-core-documentreference
Title: "Document Reference Example"
Description: "An example of a DocumentReference"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference"
* status = #current
* type = http://loinc.org#11488-4 "Consult note"
* category[uscore] = http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category#clinical-note "Clinical Note"
* subject = Reference(Patient/patient-ledner)
* date = "2025-01-02T10:30:00Z"
* author = Reference(Practitioner/practitioner-nichols)
* custodian = Reference(Organization/organization-example)
* content.attachment.contentType = #text/plain
* content.attachment.language = #en-US
* content.attachment.data = "UGF0aWVudCBwcmVzZW50ZWQgd2l0aCBvbmUgd2VlayBoaXN0b3J5IG9mIGNvdWdoIGFuZCBsb3ctZ3JhZGUgZmV2ZXIuIEx1bmdzIGNsZWFyIG9uIGV4YW1pbmF0aW9uLiBObyBseW1waGFkZW5vcGF0aHkuIERpYWdub3NpczogeEFjdXRlIGJyb25jaGl0aXMuIA=="
* content.attachment.title = "Consultation Note"
* context.encounter = Reference(Encounter/encounter-ambulatory)
* context.period.start = "2025-01-02T09:00:00Z"
* context.period.end = "2025-01-02T10:00:00Z"
