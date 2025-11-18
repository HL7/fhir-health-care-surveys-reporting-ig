// Pregnancy Intent Observation
Instance: observation-pregnancy-intent-example
InstanceOf: $us-core-observation-pregnancyintent
Title: "Pregnancy Intent Example"
Description: "An example of an Observation (Pregnancy Intent)"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-pregnancyintent"
* status = #final
* category[SocialHistory] = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = http://loinc.org#86645-9 "Pregnancy intention in the next year - Reported"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory) "Ambulatory Office Visit"
* effectiveDateTime = "2025-01-02"
* performer = Reference(Practitioner/practitioner-nichols)
* valueCodeableConcept = http://loinc.org#LA26683-5 "Not pregnant"
