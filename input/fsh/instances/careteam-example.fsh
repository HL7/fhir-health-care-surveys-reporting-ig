// Care Team
Instance: careteam-example
InstanceOf: $us-core-careteam
Title: "Care Team Example"
Description: "An example of a CareTeam"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam"
* status = #active
* name = "Respiratory Care Team"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory)
* period.start = "2025-01-02"
* participant[0].role = http://snomed.info/sct#446050000 "Primary care physician (occupation)"
* participant[0].member = Reference(Practitioner/practitioner-nichols)
* participant[0].period.start = "2025-01-02"
* participant[0].onBehalfOf = Reference(organization-example)
* participant[1].role = http://snomed.info/sct#309343006 "Physician"
* participant[1].member = Reference(Practitioner/practitioner-nichols)
* participant[1].period.start = "2025-01-02"
* participant[1].onBehalfOf = Reference(organization-example)
// Remove the problematic note.author line
