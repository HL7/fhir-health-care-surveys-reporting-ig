// Respiratory Rate Observation
Instance: observation-resprate-example
InstanceOf: $USCoreRespiratoryRateProfile
Title: "Observation - Respiratory Rate"
Description: "Example respiratory rate observation (16 breaths/minute) for healthcare surveys reporting."
Usage: #example

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9279-1 "Respiratory rate"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/practitioner-nichols)
* valueQuantity.value = 16
* valueQuantity.unit = "breaths/minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min
