Instance: hcs-diagnosticreport
InstanceOf: USCoreDiagnosticReportProfileNoteExchange
Description: "Example of a DiagnosticReport resource"
Usage: #example

* status = #final
* category[us-core] = http://loinc.org#LP29684-5 "Radiology"
* code = http://loinc.org#42272-5 "XR Chest PA and Lateral"
* subject = Reference(Patient/patient-baxter)
* effectiveDateTime = "2023-06-01T10:00:00Z"
