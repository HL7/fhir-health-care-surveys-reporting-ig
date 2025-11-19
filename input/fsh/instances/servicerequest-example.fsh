// Service Request
Instance: servicerequest-example
InstanceOf: $us-core-servicerequest
Title: "ServiceRequest - CT Chest Evaluation"
Description: "Example service request for a CT chest evaluation procedure for acute viral pharyngitis."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-servicerequest"
* status = #active
* intent = #order
* category =  http://snomed.info/sct#386053000 "Evaluation procedure (procedure)"
* priority = #routine
* code = http://loinc.org#24627-2 "CT Chest"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory)
* occurrenceDateTime = "2025-01-03T10:00:00Z"
* authoredOn = "2025-01-02"
* requester = Reference(Practitioner/practitioner-nichols)
* reasonCode = http://snomed.info/sct#195662009 "Acute viral pharyngitis"
