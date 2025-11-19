// Procedure
Instance: procedure-example
InstanceOf: $us-core-procedure
Title: "Procedure - Appendectomy"
Description: "Example procedure representing an appendectomy performed in 1995 for healthcare surveys reporting."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure"
* status = #completed
* code = http://snomed.info/sct#80146002 "Appendectomy"
* subject = Reference(Patient/patient-ledner)
* performedDateTime = "1995-06-12"
* recorder = Reference(Practitioner/practitioner-nichols)
* asserter = Reference(Patient/patient-ledner)
* location = Reference(Location/location-example)
