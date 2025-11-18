// Smoking Status Observation
Instance: observation-smoking-example
InstanceOf: $us-core-smokingstatus
Title: "Smoking Status Example"
Description: "An example of an Observation (Smoking Status)"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus"
* status = #final
* category[SocialHistory] = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = http://loinc.org#72166-2 "Tobacco smoking status"
* subject = Reference(Patient/patient-ledner)
* effectiveDateTime = "2025-01-02"
* performer = Reference(Practitioner/practitioner-nichols)
* valueCodeableConcept = http://snomed.info/sct#266919005 "Never smoked tobacco"
