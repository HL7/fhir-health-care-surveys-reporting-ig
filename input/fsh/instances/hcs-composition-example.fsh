Instance: hcs-composition-example
InstanceOf: HcsComposition
Title: "Composition Example"
Description: "An example showing a Composition for HCS"
Usage: #example

* identifier.value = "c03eab8c-11e8-4d0c-ad2a-b385395e27db"
* status = #final
* type = $loinc#75619-7
* subject = Reference(Patient/example) "Amy Shaw"
* encounter = Reference(example-1) "Ambulatory Office Visit"
* date = "2023-01-02T22:13:23Z"
* author = Reference(Practitioner/1) "Nicholas Joseph"
* title = "National Health Care Surveys report"

/* Reason for Visit Section (sliceReasonForVisitSection) */
* section[sliceReasonForVisitSection].title = "Reason for Visit Section"
* section[sliceReasonForVisitSection].code = $loinc#29299-5 "Reason for visit Narrative"
* section[sliceReasonForVisitSection].text.status = #generated
* section[sliceReasonForVisitSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Reason for Visit: Bad cough</p>
</div>
"""

/* Problems Section (sliceProblemSection) */
* section[sliceProblemSection].title = "Problems Section"
* section[sliceProblemSection].code = $loinc#11450-4 "Problem list - Reported"
* section[sliceProblemSection].text.status = #generated
* section[sliceProblemSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Single liveborn, born in hospital</p>
  <p>Acute bronchitis</p>
</div>
"""
* section[sliceProblemSection].entry[sliceProblemsHealthConcerns] = Reference(Condition/example-of-Condition)
* section[sliceProblemSection].entry[sliceEncounterDiagnosis] = Reference(Condition/example-of-encounter-diagnosis)


/* Allergies Section (sliceAllergiesSection) */
* section[sliceAllergiesSection].title = "Allergies Section"
* section[sliceAllergiesSection].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sliceAllergiesSection].text.status = #generated
* section[sliceAllergiesSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Allergy to Sulfonide</p>
</div>
"""
* section[sliceAllergiesSection].entry = Reference(AllergyIntolerance/example)

/* Medications Section (sliceMedicationsSection) */
* section[sliceMedicationsSection].title = "Medications Section"
* section[sliceMedicationsSection].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sliceMedicationsSection].text.status = #generated
* section[sliceMedicationsSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Taking Lantus
</div>
"""
* section[sliceMedicationsSection].entry[sliceMedicationAdministration] = Reference(medicationadministrationone-example)

/* Medications Administered Section (sliceMedicationsAdministeredSection) - Optional */
* section[sliceMedicationsAdministeredSection].code = $loinc#29549-3 "Medications Administered"
* section[sliceMedicationsAdministeredSection].text.status = #generated
* section[sliceMedicationsAdministeredSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Ibuprofen 400mg administered orally at 9:00AM</p>
</div>
"""
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration] = Reference(medicationadministrationone-example)
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationReferences] = Reference(medication-ibuprofen-example)

/* Admission Medications Section (sliceAdmissionMedicationsSection) - Optional */
* section[sliceAdmissionMedicationsSection].code = $loinc#42346-7 "Medications on Admission"
* section[sliceAdmissionMedicationsSection].text.status = #generated
* section[sliceAdmissionMedicationsSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Patient reported taking Lisinopril 10mg daily prior to admission</p>
</div>
"""
* section[sliceAdmissionMedicationsSection].entry[sliceMedicationRequest] = Reference(medicationrequest-admission-example)
* section[sliceAdmissionMedicationsSection].entry[sliceMedicationReferences] = Reference(medication-lisinopril-example)

/* Medications Section (sliceMedicationsSection) - Optional */
* section[sliceMedicationsSection].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sliceMedicationsSection].text.status = #generated
* section[sliceMedicationsSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Taking Lantus
</div>
"""
* section[sliceMedicationsSection].entry[sliceMedicationAdministration] = Reference(medicationadministration-lantus-example)
* section[sliceMedicationsSection].entry[sliceMedicationRequest] = Reference(medicationrequest-lantus-example)
* section[sliceMedicationsSection].entry[sliceMedicationDispense] = Reference(medicationdispense-example)
* section[sliceMedicationsSection].entry[sliceMedicationReferences] = Reference(medication-lantus-example)

/* Results Section (sliceResultsSection) - Optional */
* section[sliceResultsSection].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data Narrative"
* section[sliceResultsSection].text.status = #generated
* section[sliceResultsSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>CBC Results: WBC 6.8, RBC 4.2, Hgb 14.0, Hct 41.0, Plt 210</p>
  <p>CMP Results: Glucose 98, BUN 14, Cr 0.8, Na 140, K 3.8, Cl 102</p>
</div>
"""
* section[sliceResultsSection].entry[sliceLabResultEntry] = Reference(observation-lab-example)
* section[sliceResultsSection].entry[sliceDiagnosticResultEntry] = Reference(diagnosticreport-lab-example)
* section[sliceResultsSection].entry[sliceClinicalResultEntry] = Reference(observation-clinical-example)
* section[sliceResultsSection].entry[sliceScreeningAssessmentEntry] = Reference(observation-screening-example)

/* Notes Section (sliceNotesSection) - Optional */
* section[sliceNotesSection].code = $loinc#28650-0 "Provider Notes"
* section[sliceNotesSection].text.status = #generated
* section[sliceNotesSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Patient presented with one week history of cough and low-grade fever. Lungs clear on examination. No lymphadenopathy.</p>
</div>
"""
* section[sliceNotesSection].entry[sliceDocumentReferenceEntry] = Reference(documentreference-example)
* section[sliceNotesSection].entry[sliceDiagnosticReportEntry] = Reference(diagnosticreport-note-example)

/* Plan of Treatment Section (slicePlanOfTreatmentSection) - Optional */
* section[slicePlanOfTreatmentSection].code = $loinc#18776-5 "Plan of Treatment"
* section[slicePlanOfTreatmentSection].text.status = #generated
* section[slicePlanOfTreatmentSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Continue symptomatic treatment. Return if symptoms worsen or fail to improve within 5 days.</p>
</div>
"""
* section[slicePlanOfTreatmentSection].entry[sliceMedicationRequest] = Reference(medicationrequest-plan-example)
* section[slicePlanOfTreatmentSection].entry[sliceMedicationReferences] = Reference(medication-plan-example)
* section[slicePlanOfTreatmentSection].entry[sliceProcedureOrders] = Reference(servicerequest-example)
* section[slicePlanOfTreatmentSection].entry[sliceCarePlanEntries] = Reference(careplan-example)

/* Immunizations Section (sliceImmunizationsSection) - Optional */
* section[sliceImmunizationsSection].code = $loinc#11369-6 "History of Immunization Narrative"
* section[sliceImmunizationsSection].text.status = #generated
* section[sliceImmunizationsSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Influenza vaccine administered 10/15/2024</p>
  <p>COVID-19 vaccine: Last dose received 06/20/2024</p>
</div>
"""
* section[sliceImmunizationsSection].entry = Reference(immunization-example)

/* Procedures Section (sliceProceduresSection) - Optional */
* section[sliceProceduresSection].code = $loinc#47519-4 "History of Procedures Document"
* section[sliceProceduresSection].text.status = #generated
* section[sliceProceduresSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Appendectomy (1995)</p>
  <p>Colonoscopy (2020)</p>
</div>
"""
* section[sliceProceduresSection].entry = Reference(procedure-example)

/* Vital Signs Section (sliceVitalSignsSection) - Optional */
* section[sliceVitalSignsSection].code = $loinc#8716-3 "Vital signs"
* section[sliceVitalSignsSection].text.status = #generated
* section[sliceVitalSignsSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>BP: 120/80 mmHg</p>
  <p>HR: 70 bpm</p>
  <p>Temp: 37.0 C</p>
  <p>RR: 16</p>
  <p>SpO2: 98%</p>
  <p>Weight: 68 kg</p>
  <p>Height: 170 cm</p>
  <p>BMI: 23.5 kg/m²</p>
</div>
"""
* section[sliceVitalSignsSection].entry[sliceBloodPressureEntry] = Reference(observation-bp-example)
* section[sliceVitalSignsSection].entry[sliceBodyWeightEntry] = Reference(observation-weight-example)
* section[sliceVitalSignsSection].entry[sliceBodyHeightEntry] = Reference(observation-height-example)
* section[sliceVitalSignsSection].entry[sliceHeartRateEntry] = Reference(observation-heartrate-example)
* section[sliceVitalSignsSection].entry[slicePulseOximetryEntry] = Reference(observation-oximetry-example)
* section[sliceVitalSignsSection].entry[sliceBMIEntry] = Reference(observation-bmi-example)
* section[sliceVitalSignsSection].entry[sliceBodyTemperatureEntry] = Reference(observation-temperature-example)
* section[sliceVitalSignsSection].entry[sliceRespiratoryRateEntry] = Reference(observation-resprate-example)

/* Social History Section (sliceSocialHistorySection) - Optional */
* section[sliceSocialHistorySection].code = $loinc#29762-2 "Social History Narrative"
* section[sliceSocialHistorySection].text.status = #generated
* section[sliceSocialHistorySection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Patient is a non-smoker</p>
  <p>Occupation: Teacher</p>
  <p>Lives with spouse and two children</p>
</div>
"""
* section[sliceSocialHistorySection].entry = Reference(observation-smoking-example)

/* Medical Equipment Section (sliceMedicalEquipmentSection) - Optional */
* section[sliceMedicalEquipmentSection].code = $loinc#46264-8 "Medical Equipment"
* section[sliceMedicalEquipmentSection].text.status = #generated
* section[sliceMedicalEquipmentSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>No implantable devices</p>
</div>
"""
* section[sliceMedicalEquipmentSection].entry = Reference(device-example)

/* Care Team Section (sliceCareTeamSection) - Optional */
* section[sliceCareTeamSection].code = $loinc#85847-2 "Care team Information"
* section[sliceCareTeamSection].text.status = #generated
* section[sliceCareTeamSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Primary Care Provider: Dr. Nicholas Joseph</p>
  <p>Pulmonologist: Dr. Sarah Chen</p>
</div>
"""
* section[sliceCareTeamSection].entry = Reference(careteam-example)

/* Goals Section (sliceGoalsSection) - Optional */
* section[sliceGoalsSection].code = $loinc#61146-7 "Goals"
* section[sliceGoalsSection].text.status = #generated
* section[sliceGoalsSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Resolve acute bronchitis</p>
  <p>Improve sleep quality</p>
</div>
"""
* section[sliceGoalsSection].entry = Reference(goal-example)

/* Pregnancy Section (slicePregnancySection) - Optional */
* section[slicePregnancySection].code = $loinc#90767-5 "Pregnancy Status"
* section[slicePregnancySection].text.status = #generated
* section[slicePregnancySection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Patient is not currently pregnant</p>
</div>
"""
* section[slicePregnancySection].entry[slicePregnancyStatusObservation] = Reference(observation-pregnancy-status-example)
* section[slicePregnancySection].entry[slicePregnancyIntent] = Reference(observation-pregnancy-intent-example)

/* Coverage Section (sliceCoverageSection) - Optional */
* section[sliceCoverageSection].code = $loinc#48768-6 "Payment sources Document"
* section[sliceCoverageSection].text.status = #generated
* section[sliceCoverageSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Primary Insurance: Blue Cross Blue Shield</p>
  <p>ID: XYZ123456789</p>
  <p>Group: ABC987</p>
</div>
"""
* section[sliceCoverageSection].entry = Reference(coverage-example)


// Problem - Health Concern
Instance: problem-healthconcern-example
InstanceOf: $us-core-condition-problems-health-concerns
Title: "Health Concern Example"
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = http://snomed.info/sct#195662009 "Acute bronchitis"
* subject = Reference(Patient/1)
* onsetDateTime = "2025-01-01"
* recordedDate = "2025-01-02"
* recorder = Reference(Practitioner/1)

// Medication Administration - Ibuprofen
Instance: medicationadministrationone-example
InstanceOf: HcsMedicationAdministration
Title: "Medication Administration Example"
Usage: #example
* status = #completed
* medicationReference = Reference(medication-ibuprofen-example)
* subject = Reference(Patient/1)
* effectiveDateTime = "2025-01-02T09:00:00Z"
* performer.actor = Reference(1-of-Practitioner)
* reasonCode = http://snomed.info/sct#43724002 "Cough"
* dosage.text = "400 mg orally"
* dosage.route = http://snomed.info/sct#26643006 "Oral route"
* dosage.dose.value = 400
* dosage.dose.unit = "mg"

// Medication - Ibuprofen
Instance: medication-ibuprofen-example
InstanceOf: $us-core-medication
Title: "Medication - Ibuprofen Example"
Usage: #example
* code = http://www.nlm.nih.gov/research/umls/rxnorm#1049589 "Ibuprofen 200 MG Oral Tablet"
* status = #active
* form = http://snomed.info/sct#385055001 "Tablet"

// Medication Request - Admission (Lisinopril)
Instance: medicationrequest-admission-example
InstanceOf: HcsMedicationRequest
Title: "Admission Medication Request Example"
Usage: #example
* status = #active
* intent = #order
* medicationReference = Reference(medication-lisinopril-example)
* subject = Reference(Patient/1)
* authoredOn = "2025-01-02"
* requester = Reference(Practitioner/1)
* dosageInstruction.text = "10 mg once daily"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.route = http://snomed.info/sct#26643006 "Oral route"
* dosageInstruction.doseAndRate.doseQuantity.value = 10
* dosageInstruction.doseAndRate.doseQuantity.unit = "mg"

// Medication - Lisinopril
Instance: medication-lisinopril-example
InstanceOf: $us-core-medication
Title: "Medication - Lisinopril Example"
Usage: #example
* code = http://www.nlm.nih.gov/research/umls/rxnorm#314076 "Lisinopril 10 MG Oral Tablet"
* status = #active
* form = http://snomed.info/sct#385055001 "Tablet"

// Medication Administration - Lantus
Instance: medicationadministration-lantus-example
InstanceOf: HcsMedicationAdministration
Title: "Medication Administration - Lantus Example"
Usage: #example
* status = #completed
* medicationReference = Reference(medication-lantus-example)
* subject = Reference(Patient/1)
* effectiveDateTime = "2025-01-02T08:00:00Z"
* performer.actor = Reference(Patient/1)
* dosage.text = "10 units subcutaneously"
* dosage.route = http://snomed.info/sct#34206005 "Subcutaneous route"
* dosage.dose.value = 10
* dosage.dose.unit = "units"

// Medication Request - Lantus
Instance: medicationrequest-lantus-example
InstanceOf: USCoreMedicationRequestProfile
Title: "Medication Request - Lantus Example"
Usage: #example
* status = #active
* intent = #order
* medicationReference = Reference(medication-lantus-example)
* subject = Reference(Patient/1)
* authoredOn = "2024-12-15"
* requester = Reference(Practitioner/1)
* dosageInstruction.text = "10 units subcutaneously once daily at bedtime"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.route = http://snomed.info/sct#34206005 "Subcutaneous route"
* dosageInstruction.doseAndRate.doseQuantity.value = 10
* dosageInstruction.doseAndRate.doseQuantity.unit = "units"

// Medication Dispense
Instance: medicationdispense-example
InstanceOf: USCoreMedicationDispenseProfile
Title: "Medication Dispense Example"
Usage: #example
* status = #completed
* medicationReference = Reference(medication-lantus-example)
* subject = Reference(Patient/1)
* performer.actor = Reference(Practitioner/1)
* authorizingPrescription = Reference(medicationrequest-lantus-example)
* quantity.value = 1
* quantity.unit = "vial"
* daysSupply.value = 30
* daysSupply.unit = "days"
* whenHandedOver = "2024-12-15"

// Medication - Lantus
Instance: medication-lantus-example
InstanceOf: USCoreMedicationProfile
Title: "Medication - Lantus Example"
Usage: #example
* code = http://www.nlm.nih.gov/research/umls/rxnorm#847232 "3 ML insulin glargine 100 UNT/ML Pen Injector [Lantus]"
* status = #active
* form = http://snomed.info/sct#385219001 "Injection solution"


// Lab Observation
Instance: observation-lab-example
InstanceOf: USCoreLaboratoryResultObservationProfile
Title: "Laboratory Observation Example"
Usage: #example
* status = #final
* category[us-core] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#26464-8 "White blood cells [#/volume] in Blood"
* subject = Reference(Patient/1)
* effectiveDateTime = "2025-01-02"
* issued = "2025-01-02T10:30:00Z"
* performer = Reference(Practitioner/1)
* valueQuantity.value = 6.8
* valueQuantity.unit = "10^3/uL"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #10^3/uL
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"

// Diagnostic Report - Lab
Instance: diagnosticreport-lab-example
InstanceOf: $us-core-diagnosticreport-lab
Title: "Diagnostic Report Laboratory Example"
Usage: #example
* status = #final
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* code = http://loinc.org#58410-2 "Complete blood count panel - Blood"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* effectiveDateTime = "2025-01-02"
* issued = "2025-01-02T11:00:00Z"
* performer = Reference(Practitioner/1)
* result = Reference(observation-lab-example)
* conclusion = "CBC within normal limits"

// Clinical Observation
Instance: observation-clinical-example
InstanceOf: $us-core-observation-clinical-result
Title: "Clinical Observation Example"
Usage: #example
* status = #final
* category[us-core] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8310-5 "Body temperature"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* issued = "2025-01-02T09:35:00Z"
* performer = Reference(Practitioner/1)
* valueQuantity.value = 37.8
* valueQuantity.unit = "C"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Cel
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"

// Screening Assessment
Instance: observation-screening-example
InstanceOf: $us-core-observation-screening-assessment
Title: "Screening Assessment Example"
Usage: #example
* status = #final
* category[survey] = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = http://loinc.org#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* effectiveDateTime = "2025-01-02T09:15:00Z"
* issued = "2025-01-02T09:20:00Z"
* performer = Reference(Practitioner/1)
* valueInteger = 3
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"

// Document Reference
Instance: documentreference-example
InstanceOf: $us-core-documentreference
Title: "Document Reference Example"
Usage: #example
* status = #current
* type = http://loinc.org#11488-4 "Consult note"
* category[uscore] = http://loinc.org#11488-4 "Consult note"
* subject = Reference(Patient/1)
* date = "2025-01-02T10:30:00Z"
* author = Reference(Practitioner/1)
* custodian = Reference(organization-example)
* content.attachment.contentType = #text/plain
* content.attachment.language = #en-US
* content.attachment.data = "UGF0aWVudCBwcmVzZW50ZWQgd2l0aCBvbmUgd2VlayBoaXN0b3J5IG9mIGNvdWdoIGFuZCBsb3ctZ3JhZGUgZmV2ZXIuIEx1bmdzIGNsZWFyIG9uIGV4YW1pbmF0aW9uLiBObyBseW1waGFkZW5vcGF0aHkuIERpYWdub3NpczogeEFjdXRlIGJyb25jaGl0aXMuIA=="
* content.attachment.title = "Consultation Note"
* context.encounter = Reference(Encounter/example-1)
* context.period.start = "2025-01-02T09:00:00Z"
* context.period.end = "2025-01-02T10:00:00Z"

// Diagnostic Report - Note
Instance: diagnosticreport-note-example
InstanceOf:  $us-core-diagnosticreport-note
Title: "Diagnostic Report Note Example"
Usage: #example
* status = #final
* category[us-core] = http://loinc.org#LP29684-5 "Radiology"
* code = http://loinc.org#42272-5 "Chest X-ray 2 Views"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* effectiveDateTime = "2025-01-02T10:00:00Z"
* issued = "2025-01-02T11:30:00Z"
* performer = Reference(Practitioner/1)
* conclusion = "No acute radiographic abnormality"

// Medication Request - Plan
Instance: medicationrequest-plan-example
InstanceOf: $us-core-medicationrequest
Title: "Medication Request Plan Example"
Usage: #example
* status = #active
* intent = #plan
* medicationReference = Reference(medication-plan-example)
* subject = Reference(Patient/1)
* authoredOn = "2025-01-02"
* requester = Reference(Practitioner/1)
* dosageInstruction.text = "Benzonatate 200mg three times daily as needed for cough"
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.asNeededBoolean = true
* dosageInstruction.route = http://snomed.info/sct#26643006 "Oral route"
* dosageInstruction.doseAndRate.doseQuantity.value = 200
* dosageInstruction.doseAndRate.doseQuantity.unit = "mg"

// Medication - Plan Example
Instance: medication-plan-example
InstanceOf:  $us-core-medication
Title: "Medication Plan Example"
Usage: #example
* code = http://www.nlm.nih.gov/research/umls/rxnorm#1870196 "Benzonatate 200 MG Oral Capsule"
* status = #active
* form = http://snomed.info/sct#385059009 "Capsule"

// Service Request
Instance: servicerequest-example
InstanceOf: $us-core-servicerequest
Title: "Service Request Example"
Usage: #example
* status = #active
* intent = #order
* category[us-core] = http://terminology.hl7.org/CodeSystem/service-category#diagnostics
* priority = #routine
* code = http://loinc.org#24627-2 "Chest X-ray PA and Lateral"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* occurrenceDateTime = "2025-01-03T10:00:00Z"
* authoredOn = "2025-01-02"
* requester = Reference(Practitioner/1)
* reasonCode = http://snomed.info/sct#195662009 "Acute bronchitis"

// Care Plan
Instance: careplan-example
InstanceOf:  $us-core-careplan
Title: "Care Plan Example"
Usage: #example
* status = #active
* intent = #plan
* title = "Respiratory Care Plan"
* description = "Care plan for management of acute bronchitis"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* period.start = "2025-01-02"
* period.end = "2025-01-16"
* created = "2025-01-02"
* author = Reference(Practitioner/1)
* careTeam = Reference(careteam-example)
* addresses = Reference(problem-healthconcern-example)
* goal = Reference(goal-example)
* activity.detail.status = #in-progress
* activity.detail.description = "Rest and increase fluid intake"
* activity.detail.code = http://snomed.info/sct#304510005 "Self-care education"

// Immunization
Instance: immunization-example
InstanceOf: $us-core-immunization
Title: "Immunization Example"
Usage: #example
* status = #completed
* vaccineCode = http://hl7.org/fhir/sid/cvx#158 "Influenza, injectable, quadrivalent"
* patient = Reference(Patient/1)
* occurrenceDateTime = "2024-10-15"
* primarySource = true
* location = Reference(location-example)
* manufacturer = Reference(organization-example)
* lotNumber = "123456A"
* expirationDate = "2025-06-30"
* site = http://snomed.info/sct#368208006 "Left deltoid"
* route = http://snomed.info/sct#78421000 "Intramuscular route"
* doseQuantity.value = 0.5
* doseQuantity.unit = "mL"
* performer.actor = Reference(Practitioner/1)
* isSubpotent = false
* education.documentType = "VIS"
* education.presentationDate = "2024-10-15"
* education.publicationDate = "2024-08-01"

// Procedure
Instance: procedure-example
InstanceOf: $us-core-procedure
Title: "Procedure Example"
Usage: #example
* status = #completed
* code = http://snomed.info/sct#80146002 "Appendectomy"
* subject = Reference(Patient/1)
* performedDateTime = "1995-06-12"
* recorder = Reference(Practitioner/1)
* asserter = Reference(Patient/1)
* location = Reference(location-example)

// Blood Pressure Observation
Instance: observation-bp-example
InstanceOf:  $us-core-blood-pressure
Title: "Blood Pressure Example"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/1)
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

// Weight Observation
Instance: observation-weight-example
InstanceOf:  $us-core-body-weight
Title: "Body Weight Example"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#29463-7 "Body weight"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/1)
* valueQuantity.value = 68
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg

// Height Observation
Instance: observation-height-example
InstanceOf: $us-core-body-height
Title: "Body Height Example"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8302-2 "Body height"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/1)
* valueQuantity.value = 170
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm

// Heart Rate Observation
Instance: observation-heartrate-example
InstanceOf:  $us-core-heart-rate
Title: "Heart Rate Example"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8867-4 "Heart rate"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/1)
* valueQuantity.value = 70
* valueQuantity.unit = "beats/minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min

// Pulse Oximetry Observation
Instance: observation-oximetry-example
InstanceOf: $us-core-pulse-oximetry
Title: "Pulse Oximetry Example"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/1)
* valueQuantity.value = 98
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #%

// BMI Observation
Instance: observation-bmi-example
InstanceOf: $us-core-bmi
Title: "BMI Example"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/1)
* valueQuantity.value = 23.5
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg/m2

// Body Temperature Observation
Instance: observation-temperature-example
InstanceOf: $us-core-body-temperature
Title: "Body Temperature Example"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8310-5 "Body temperature"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/1)
* valueQuantity.value = 37.0
* valueQuantity.unit = "C"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Cel

// Respiratory Rate Observation
Instance: observation-resprate-example
InstanceOf:  $us-core-respiratory-rate
Title: "Respiratory Rate Example"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#9279-1 "Respiratory rate"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* performer = Reference(Practitioner/1)
* valueQuantity.value = 16
* valueQuantity.unit = "breaths/minute"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #/min

// Smoking Status Observation
Instance: observation-smoking-example
InstanceOf: $us-core-smokingstatus
Title: "Smoking Status Example"
Usage: #example
* status = #final
* category[SocialHistory] = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = http://loinc.org#72166-2 "Tobacco smoking status"
* subject = Reference(Patient/1)
* effectiveDateTime = "2025-01-02"
* performer = Reference(Practitioner/1)
* valueCodeableConcept = http://snomed.info/sct#266919005 "Never smoked tobacco"

// Device Example
Instance: device-example
InstanceOf:  $us-core-implantable-device
Title: "Implantable Device Example"
Usage: #example
* status = #active
* manufacturer = "Device Manufacturer Inc."
* manufactureDate = "2023-01-15"
* expirationDate = "2028-01-15"
* lotNumber = "LOT123456"
* serialNumber = "SER987654"
* deviceName.name = "No implantable devices"
* deviceName.type = #user-friendly-name
* type = http://snomed.info/sct#56961003 "Cardiac pacemaker, device (physical object)"
* patient = Reference(Patient/1)

// Care Team
Instance: careteam-example
InstanceOf: $us-core-careteam
Title: "Care Team Example"
Usage: #example
* status = #active
* name = "Respiratory Care Team"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* period.start = "2025-01-02"
* participant[0].role = http://snomed.info/sct#446050000 "Primary care provider"
* participant[0].member = Reference(Practitioner/1)
* participant[0].period.start = "2025-01-02"
* participant[0].onBehalfOf = Reference(organization-example)
* participant[1].role = http://snomed.info/sct#309343006 "Pulmonologist"
* participant[1].member = Reference(practitioner-pulmonologist-example)
* participant[1].period.start = "2025-01-02"
* participant[1].onBehalfOf = Reference(organization-example)
// Remove the problematic note.author line

// Goal
Instance: goal-example
InstanceOf: $us-core-goal
Title: "Goal Example"
Usage: #example
* lifecycleStatus = #active
* achievementStatus = http://terminology.hl7.org/CodeSystem/goal-achievement#in-progress
* description.text = "Resolve acute bronchitis within 2 weeks"
* subject = Reference(Patient/1)
* startDate = "2025-01-02"
* target.dueDate = "2025-01-16"
* target.detailString = "Resolution of cough and other symptoms"
* statusDate = "2025-01-02"
* statusReason = "Treatment initiated"
* expressedBy = Reference(Patient/1)
* addresses = Reference(problem-healthconcern-example)
* note.text = "Patient understands the plan and is committed to improved rest and hydration"
* note.time = "2025-01-02T10:30:00Z"

// Pregnancy Status Observation
Instance: observation-pregnancy-status-example
InstanceOf: $us-core-observation-pregnancystatus
Title: "Pregnancy Status Example"
Usage: #example
* status = #final
* category[SocialHistory] = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = http://loinc.org#82810-3 "Pregnancy status"
* subject = Reference(Patient/1)
* effectiveDateTime = "2025-01-02"
* performer = Reference(Practitioner/1)
* valueCodeableConcept = http://snomed.info/sct#60001007 "Not pregnant"

// Pregnancy Intent Observation
Instance: observation-pregnancy-intent-example
InstanceOf: $us-core-observation-pregnancyintent
Title: "Pregnancy Intent Example"
Usage: #example
* status = #final
* category[SocialHistory] = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code = http://loinc.org#86645-9 "Pregnancy intention"
* subject = Reference(Patient/1)
* effectiveDateTime = "2025-01-02"
* performer = Reference(Practitioner/1)
* valueCodeableConcept = http://loinc.org#LA26683-5 "Not intending to become pregnant in the next year"

// Coverage
Instance: coverage-example
InstanceOf: USCoreCoverageProfile
Title: "Coverage Example"
Usage: #example
* status = #active
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#EHCPOL "extended health care policy"
* policyHolder = Reference(Patient/1)
* subscriber = Reference(Patient/1)
* subscriberId = "XYZ123456789"
* beneficiary = Reference(Patient/1)
* dependent = "0"
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self "Self"
* period.start = "2025-01-01"
* period.end = "2025-12-31"
* payor = Reference(organization-payer-example)
* class[0].type = http://terminology.hl7.org/CodeSystem/coverage-class#group "Group"
* class[0].value = "ABC987"
* class[0].name = "Group Name"
* class[1].type = http://terminology.hl7.org/CodeSystem/coverage-class#plan "Plan"
* class[1].value = "HMO"
* class[1].name = "Health Maintenance Organization"

// Additional resources needed for references

// Organization - Provider
Instance: organization-example
InstanceOf:  $us-core-organization
Title: "Organization Example"
Usage: #example
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9876543210"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov "Healthcare Provider"
* name = "General Hospital"
* telecom[0].system = #phone
* telecom[0].value = "555-555-5555"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "contact@generalhospital.example.com"
* telecom[1].use = #work
* address.line = "123 Main St"
* address.city = "Anytown"
* address.state = "CA"
* address.postalCode = "12345"
* address.country = "US"

// Organization - Payer
Instance: organization-payer-example
InstanceOf: Organization
Title: "Payer Organization Example"
Usage: #example
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "6543210987"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#pay "Payer"
* name = "Blue Cross Blue Shield"
* telecom[0].system = #phone
* telecom[0].value = "800-555-1234"
* telecom[0].use = #work
* telecom[1].system = #email
* telecom[1].value = "contact@bcbs.example.com"
* telecom[1].use = #work
* address.line = "456 Insurance Ave"
* address.city = "Anytown"
* address.state = "CA"
* address.postalCode = "12345"
* address.country = "US"

// Location
Instance: location-example
InstanceOf: USCoreLocation
Title: "Location Example"
Usage: #example
* identifier.system = "http://www.acme.org/location"
* identifier.value = "29"
* status = #active
* name = "General Hospital - Main Campus"
* description = "Main Hospital Campus"
* mode = #instance
* type = http://terminology.hl7.org/CodeSystem/v3-RoleCode#HOSP "Hospital"
* telecom[0].system = #phone
* telecom[0].value = "555-555-5555"
* telecom[0].use = #work
* address.line = "123 Main St"
* address.city = "Anytown"
* address.state = "CA"
* address.postalCode = "12345"
* address.country = "US"
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#bu "Building"
* managingOrganization = Reference(organization-example)

// Pulmonologist Practitioner
Instance: practitioner-pulmonologist-example
InstanceOf: USCorePractitionerProfile
Title: "Pulmonologist Practitioner Example"
Usage: #example
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1234567890"
* name.family = "Chen"
* name.given = "Sarah"
* name.prefix = "Dr."
* telecom.system = #phone
* telecom.value = "555-987-6543"
* telecom.use = #work
* address.line = "123 Health Avenue"
* address.city = "Anytown"
* address.state = "CA"
* address.postalCode = "12345"
* gender = #female
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360|2.7#MD "Doctor of Medicine"
* qualification.period.start = "2010-01-01"
* qualification.issuer = Reference(organization-example)

// Diagnostic Report - Lab
Instance: diagnosticreport-example
InstanceOf: USCoreDiagnosticReportProfileLaboratoryReporting
Title: "Diagnostic Report Laboratory Example"
Usage: #example
* status = #final
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* code = http://loinc.org#58410-2 "Complete blood count panel - Blood"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* effectiveDateTime = "2025-01-02"
* issued = "2025-01-02T11:00:00Z"
* performer = Reference(Practitioner/1)
* result = Reference(observation-lab-example)
* conclusion = "CBC within normal limits"

Instance: observation-clinical-result-example
InstanceOf: USCoreBodyTemperatureProfile
Title: "Clinical Observation Example"
Usage: #example
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = http://loinc.org#8310-5 "Body temperature"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* effectiveDateTime = "2025-01-02T09:30:00Z"
* issued = "2025-01-02T09:35:00Z"
* performer = Reference(Practitioner/1)
* valueQuantity.value = 37.8
* valueQuantity.unit = "C"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #Cel
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"

// Screening Assessment
Instance: observation-screening-assessment-example
InstanceOf: USCoreObservationScreeningAssessmentProfile
Title: "Screening Assessment Example"
Usage: #example
* status = #final
* category[survey] = http://terminology.hl7.org/CodeSystem/observation-category#survey
* code = http://loinc.org#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"
* subject = Reference(Patient/1)
* encounter = Reference(Encounter/example-1)
* effectiveDateTime = "2025-01-02T09:15:00Z"
* issued = "2025-01-02T09:20:00Z"
* performer = Reference(Practitioner/1)
* valueInteger = 3
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
