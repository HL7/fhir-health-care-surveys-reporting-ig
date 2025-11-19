// Diagnostic Report - Note
Instance: diagnosticreport-note-example
InstanceOf:  $us-core-diagnosticreport-note
Title: "Diagnostic Report Note Example"
Description: "An example of a DiagnosticReport (Note/Radiology)"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note"
* status = #final
* category[us-core] = http://loinc.org#LP29684-5 "Radiology"
* code = http://loinc.org#42272-5 "XR Chest PA and Lateral"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory)
* effectiveDateTime = "2025-01-02T10:00:00Z"
* issued = "2025-01-02T11:30:00Z"
* performer = Reference(Practitioner/practitioner-nichols)
* result = Reference(Observation/observation-clinical-result-xray-example)
* conclusion = "No acute radiographic abnormality"
