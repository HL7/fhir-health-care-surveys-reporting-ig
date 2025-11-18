// Device Example
Instance: device-example
InstanceOf:  $us-core-implantable-device
Title: "Implantable Device Example"
Description: "An example of a Device (Implantable)"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device"
* status = #active
* manufacturer = "Device Manufacturer Inc."
* manufactureDate = "2023-01-15"
* expirationDate = "2028-01-15"
* lotNumber = "LOT123456"
* serialNumber = "SER987654"
* deviceName.name = "Pacemaker Model X1000"
* deviceName.type = #user-friendly-name
* type = http://snomed.info/sct#56961003 "Cardiac transvenous pacemaker"
* patient = Reference(Patient/patient-ledner)
