// Body Temperature Observation
Instance: observation-temperature-example
InstanceOf: $USCoreBodyTemperatureProfile
Title: "Observation - Body Temperature"
Description: "Example body temperature observation (37.0 C) for healthcare surveys reporting."
Usage: #example

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8310-5 "Body temperature"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/practitioner-nichols)
* valueQuantity.value = 37.0
* valueQuantity.unit = "C"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Cel
