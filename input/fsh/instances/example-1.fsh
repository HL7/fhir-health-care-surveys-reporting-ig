Instance: example-1
InstanceOf: Encounter
Title: "Encounter Example"
Description: "An Encounter example for HCS reporting."
Usage: #example
* meta.lastUpdated = "2017-05-26T11:56:57.250-04:00"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $sct#177184002 "Normal delivery procedure (procedure)"
* type.text = "Office Visit"
* subject = Reference(Patient/example)
* period.start = "2015-11-01T17:00:14-05:00"
* period.end = "2015-11-01T18:00:14-05:00"