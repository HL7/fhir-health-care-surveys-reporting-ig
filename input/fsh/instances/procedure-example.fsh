// Procedure
Instance: procedure-example
InstanceOf: $USCoreProcedureProfile
Title: "Procedure - Appendectomy"
Description: "Example procedure representing an appendectomy performed in 1995 for healthcare surveys reporting."
Usage: #example

* status = #completed
* code = http://snomed.info/sct#80146002 "Appendectomy"
* subject = Reference(Patient/patient-ledner)
* performedDateTime = "1995-06-12"
* recorder = Reference(Practitioner/practitioner-nichols)
* asserter = Reference(Patient/patient-ledner)
* location = Reference(Location/location-example)
