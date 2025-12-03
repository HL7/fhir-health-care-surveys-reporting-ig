// Pregnancy Status Observation
Instance: observation-pregnancy-status-example
InstanceOf: USCoreObservationPregnancyStatusProfile
Title: "Observation - Pregnancy Status"
Description: "Example pregnancy status observation indicating patient is not pregnant for healthcare surveys reporting."
Usage: #example

* status = #final
* category[SocialHistory] = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = http://loinc.org#82810-3 "Pregnancy status"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory) "Ambulatory Office Visit"
* effectiveDateTime = "2025-01-02"
* performer = Reference(Practitioner/practitioner-nichols)
* valueCodeableConcept = http://snomed.info/sct#60001007 "Not pregnant"
