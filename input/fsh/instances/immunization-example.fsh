// Immunization
Instance: immunization-example
InstanceOf: $USCoreImmunizationProfile
Title: "Immunization - Influenza Vaccine"
Description: "Example influenza vaccination administered via intramuscular route to left upper arm in October 2024."
Usage: #example

* status = #completed
* vaccineCode = http://hl7.org/fhir/sid/cvx#158 "Influenza, split virus, quadrivalent, preservative"
* patient = Reference(Patient/patient-ledner)
* occurrenceDateTime = "2024-10-15"
* primarySource = true
* location = Reference(Location/location-example)
* manufacturer = Reference(Organization/organization-example)
* lotNumber = "123456A"
* expirationDate = "2025-06-30"
* site = http://snomed.info/sct#368208006 "Left upper arm structure"
* route = http://snomed.info/sct#78421000 "Intramuscular route"
* doseQuantity.value = 0.5
* doseQuantity.unit = "mL"
* performer.actor = Reference(Practitioner/practitioner-nichols)
* isSubpotent = false
* education.documentType = "VIS"
* education.presentationDate = "2024-10-15"
* education.publicationDate = "2024-08-01"
