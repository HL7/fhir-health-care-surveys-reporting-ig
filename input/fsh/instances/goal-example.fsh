// Goal
Instance: goal-example
InstanceOf: $us-core-goal
Title: "Goal Example"
Description: "An example of a Goal"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-goal"
* lifecycleStatus = #active
* achievementStatus = http://terminology.hl7.org/CodeSystem/goal-achievement#in-progress
* description.text = "Resolve acute bronchitis within 2 weeks"
* subject = Reference(Patient/patient-ledner)
* startDate = "2025-01-02"
* target.dueDate = "2025-01-16"
* target.detailString = "Resolution of cough and other symptoms"
* target.measure = http://snomed.info/sct#431855005 "Chronic kidney disease stage 1 (disorder)"
* statusDate = "2025-01-02"
* statusReason = "Treatment initiated"
* expressedBy = Reference(Patient/patient-ledner)
* addresses = Reference(Condition/condition-problem-healthconcern-example)
* note.text = "Patient understands the plan and is committed to improved rest and hydration"
* note.time = "2025-01-02T10:30:00Z"
