Instance: servicerequest-chestct
InstanceOf: USCoreServiceRequestProfile
Title: "ServiceRequest Example"
Description: "An example showing a ServiceRequest for HCS reporting."
Usage: #example
* id = "example"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-servicerequest"
* status = #active
* intent = #original-order
* category = $sct#363679005 "Imaging (procedure)"
* category.text = "Diagnostics Procedure"
* code = $loinc#24627-2
* code.text = "Chest CT"
* subject = Reference(Patient/patient-ledner)
* occurrenceDateTime = "2013-05-08T09:33:27+07:00"
* requester = Reference(Practitioner/practitioner-1)