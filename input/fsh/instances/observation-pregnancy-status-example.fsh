// Pregnancy Status Observation
Instance: observation-pregnancy-status-example
InstanceOf: $us-core-observation-pregnancystatus
Title: "Pregnancy Status Example"
Description: "An example of an Observation (Pregnancy Status)"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-pregnancystatus"
* status = #final
* category[SocialHistory] = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = http://loinc.org#82810-3 "Pregnancy status"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory) "Ambulatory Office Visit"
* effectiveDateTime = "2025-01-02"
* performer = Reference(Practitioner/practitioner-nichols)
* valueCodeableConcept = http://snomed.info/sct#60001007 "Not pregnant"
