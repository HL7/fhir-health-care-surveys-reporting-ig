// Diagnostic Report - Lab
Instance: diagnosticreport-lab-example
InstanceOf: $us-core-diagnosticreport-lab
Title: "DiagnosticReport - CBC Panel Laboratory"
Description: "Example laboratory diagnostic report for a complete blood count (CBC) panel with automated count."
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
* result = Reference(Observation/observation-lab-example)
* conclusion = "CBC within normal limits"
