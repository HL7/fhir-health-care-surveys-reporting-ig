// Blood Pressure Observation
Instance: observation-bp-example
InstanceOf: $USCoreBloodPressureProfile
Title: "Observation - Blood Pressure"
Description: "Example blood pressure observation (120/80 mmHg) for healthcare surveys reporting."
Usage: #example

* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/practitioner-nichols)
* component[systolic].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[systolic].valueQuantity.value = 120
* component[systolic].valueQuantity.unit = "mmHg"
* component[systolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[systolic].valueQuantity.code = #mm[Hg]
* component[diastolic].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[diastolic].valueQuantity.value = 80
* component[diastolic].valueQuantity.unit = "mmHg"
* component[diastolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[diastolic].valueQuantity.code = #mm[Hg]
