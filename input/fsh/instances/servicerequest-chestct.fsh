Instance: servicerequest-chestct
InstanceOf: USCoreServiceRequestProfile
Title: "ServiceRequest - Chest CT Order"
Description: "Example service request for a chest CT imaging procedure for healthcare surveys reporting."
Usage: #example
* id = "example"

* status = #active
* intent = #original-order
* category = $sct#363679005 "Imaging (procedure)"
* category.text = "Diagnostics Procedure"
* code = $loinc#24627-2
* code.text = "Chest CT"
* subject = Reference(Patient/patient-ledner)
* occurrenceDateTime = "2013-05-08T09:33:27+07:00"
* requester = Reference(Practitioner/practitioner-nichols)