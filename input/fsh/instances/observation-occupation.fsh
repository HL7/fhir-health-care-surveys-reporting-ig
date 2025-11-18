Instance: observation-occupation-example
InstanceOf: $us-core-observation-occupation
Title: "Occupation Example"
Description: "An example of an Occupation observation conforming to US Core."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-example"
* status = #final
* category[socialhistory] = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = http://loinc.org#11341-5 "History of Occupation"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/practitioner-nichols)
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/PHOccupationalDataForHealthODH#31-1014.00.007136 "Certified Nursing Assistant (CNA) [Nursing Assistants]"
* component[0].code = http://loinc.org#86188-0 "History of Occupation Industry"
* component[0].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/PHOccupationalDataForHealthODH#621610.008495 "Home nursing services"