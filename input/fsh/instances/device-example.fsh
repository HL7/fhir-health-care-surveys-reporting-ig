// Device Example
Instance: device-example
InstanceOf:  USCoreImplantableDeviceProfile
Title: "Device - Cardiac Pacemaker"
Description: "Example implantable cardiac pacemaker device (Model X1000) for healthcare surveys reporting."
Usage: #example
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
