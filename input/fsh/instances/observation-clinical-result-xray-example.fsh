// Lab Observation
Instance: observation-clinical-result-xray-example
InstanceOf: $us-core-observation-clinical-result
Title: "Observation - Chest X-ray Clinical Result"
Description: "Example radiology observation of chest x-ray showing clear lungs with no acute abnormality."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-clinical-result"
* status = #final
* category[us-core] = http://terminology.hl7.org/CodeSystem/observation-category#imaging "Imaging"
* code = http://loinc.org#18782-3 "Radiology Study observation (narrative)"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory) "Ambulatory Office Visit"
* effectiveDateTime = "2025-01-02"
* issued = "2025-01-02T10:30:00Z"
* performer = Reference(Practitioner/practitioner-nichols)
* valueString = "LINES AND TUBES: None.\n LUNGS AND PLEURA:\n Clear lungs. Normal pulmonary vascularity.\n No pleural effusion.\n No pneumothorax.\n HEART, MEDIASTINUM AND HILA:\n Heart is normal in size.\n Normal mediastinal and hilar contour.\n BONES AND SOFT TISSUES:\n No acute abnormality.\n"
