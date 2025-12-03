// Pregnancy Intent Observation
Instance: observation-pregnancy-intent-example
InstanceOf: $USCoreObservationPregnancyIntentProfile
Title: "Observation - Pregnancy Intent"
Description: "Example pregnancy intention observation indicating patient is not pregnant for healthcare surveys reporting."
Usage: #example

* status = #final
* category[SocialHistory] = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = http://loinc.org#86645-9 "Pregnancy intention in the next year - Reported"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory) "Ambulatory Office Visit"
* effectiveDateTime = "2025-01-02"
* performer = Reference(Practitioner/practitioner-nichols)
* valueCodeableConcept = http://loinc.org#LA26683-5 "Not pregnant"
