Instance: encounter-ambulatory
InstanceOf: USCoreEncounterProfile
Title: "Encounter Example"
Description: "An Encounter example for HCS reporting."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $sct#177184002 "Normal delivery procedure (procedure)"
* type.text = "Office Visit"
* subject = Reference(Patient/patient-ledner)
* period.start = "2025-11-01T17:00:14-05:00"
* period.end = "2025-11-01T18:00:14-05:00"