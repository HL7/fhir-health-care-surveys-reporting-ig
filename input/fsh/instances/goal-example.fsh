// Goal
Instance: goal-example
InstanceOf: $USCoreGoalProfile
Title: "Goal - Resolution of Acute Bronchitis"
Description: "Example patient goal to resolve acute bronchitis within 2 weeks with improved rest and hydration."
Usage: #example

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
* addresses = Reference(Condition/condition-encounter-diagnosis-example)
* note.text = "Patient understands the plan and is committed to improved rest and hydration"
* note.time = "2025-01-02T10:30:00Z"
