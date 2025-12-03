// Smoking Status Observation
Instance: observation-smoking-example
InstanceOf: USCoreSmokingStatusProfile
Title: "Observation - Smoking Status"
Description: "Example smoking status observation indicating patient never smoked tobacco for healthcare surveys reporting."
Usage: #example

* status = #final
* category[SocialHistory] = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = http://loinc.org#72166-2 "Tobacco smoking status"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory) "Ambulatory Office Visit"
* effectiveDateTime = "2025-01-02"
* performer = Reference(Practitioner/practitioner-nichols)
* valueCodeableConcept = http://snomed.info/sct#266919005 "Never smoked tobacco"
