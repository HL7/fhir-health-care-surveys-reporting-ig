// Diagnostic Report - Note
Instance: diagnosticreport-note-example
InstanceOf:  USCoreDiagnosticReportProfileNoteExchange
Title: "DiagnosticReport - Chest X-ray Radiology Note"
Description: "Example radiology diagnostic report for chest PA and lateral x-ray showing no acute abnormality."
Usage: #example
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
