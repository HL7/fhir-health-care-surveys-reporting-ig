// Diagnostic Report - Lab
Instance: diagnosticreport-example
InstanceOf: USCoreDiagnosticReportProfileLaboratoryReporting
Title: "Diagnostic CBC Report Laboratory Example"
Description: "An example of a DiagnosticReport (Laboratory – Profile Alternate)"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab"
* status = #final
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* code = http://loinc.org#58410-2 "CBC panel - Blood by Automated count"
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory)
* effectiveDateTime = "2025-01-02"
* issued = "2025-01-02T11:00:00Z"
* performer = Reference(Practitioner/practitioner-nichols)
* result = Reference(observation-lab-example)
* conclusion = "CBC within normal limits"
