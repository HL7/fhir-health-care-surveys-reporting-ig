// Service Request
Instance: servicerequest-example
InstanceOf: $USCoreServiceRequestProfile
Title: "ServiceRequest - CT Chest Evaluation"
Description: "Example service request for a CT chest evaluation procedure for acute viral pharyngitis."
Usage: #example

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
