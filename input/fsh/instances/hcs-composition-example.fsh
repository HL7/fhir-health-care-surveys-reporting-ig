Instance: hcs-composition-example
InstanceOf: HealthCareSurveysComposition
Title: "Composition - National Healthcare Surveys Report"
Description: "Example comprehensive healthcare surveys composition including patient information, clinical data, and survey results."
Usage: #example

* identifier.value = "c03eab8c-11e8-4d0c-ad2a-b385395e27db"
* status = #final
* type = $loinc#75619-7
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory) "Ambulatory Office Visit"
* date = "2023-01-02T22:13:23Z"
* author = Reference(Practitioner/practitioner-nichols) "Nicholas Joseph"
* title = "National Health Care Surveys report"

/* Reason for Visit Section (reasonForVisitSection) */
* section[reasonForVisitSection][+].title = "Reason for Visit Section"
* section[reasonForVisitSection][=].code = $loinc#29299-5 "Reason for visit Narrative"
* section[reasonForVisitSection][=].text.status = #generated
* section[reasonForVisitSection][=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Reason for Visit: Bad cough</p>
</div>
"""

/* Problems Section (problemSection) */
* section[problemSection][+].title = "Problems Section"
* section[problemSection][=].code = $loinc#11450-4 "Problem list - Reported"
* section[problemSection][=].text.status = #generated
* section[problemSection][=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Single liveborn, born in hospital</p>
  <p>Acute bronchitis</p>
</div>
"""
* section[problemSection][=].entry[problemsHealthConcerns] = Reference(Condition/condition-problem-liveborn-example)
* section[problemSection][=].entry[encounterDiagnosis] = Reference(Condition/condition-encounter-diagnosis-example)


/* Allergies Section (allergiesSection) */
* section[allergiesSection].title = "Allergies Section"
* section[allergiesSection].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[allergiesSection].text.status = #generated
* section[allergiesSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Allergy to Sulfonide</p>
</div>
"""
* section[allergiesSection].entry = Reference(AllergyIntolerance/allergyintolerance-sulfonamide-example)

/* Medications Section (medicationsSection) */
* section[medicationsSection].title = "Medications Section"
* section[medicationsSection].code = $loinc#10160-0 "History of Medication use Narrative"
* section[medicationsSection].text.status = #generated
* section[medicationsSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Taking Lantus
</div>
"""
* section[medicationsSection].entry[medicationAdministration] = Reference(MedicationAdministration/medicationadministrationone-example)
* section[medicationsSection].entry[medicationRequest] = Reference(MedicationRequest/MedicationRequest-example)
/* Medications Administered Section (medicationsAdministeredSection) - Optional 
* section[medicationsAdministeredSection].code = $loinc#29549-3 "Medication administered"
* section[medicationsAdministeredSection].text.status = #generated
* section[medicationsAdministeredSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Ibuprofen 400mg administered orally at 9:00AM</p>
</div>
"""
* section[medicationsAdministeredSection].entry[medicationAdministration] = Reference(MedicationAdministration/medicationadministrationone-example)

/* Admission Medications Section (admissionMedicationsSection) - Optional 
* section[admissionMedicationsSection].code = $loinc#42346-7 "Medications on admission (narrative)"
* section[admissionMedicationsSection].text.status = #generated
* section[admissionMedicationsSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Patient reported taking Lisinopril 10mg daily prior to admission</p>
</div>
"""
*/

/* Medications Section (medicationsSection) - Optional 
* section[medicationsSection].code = $loinc#10160-0 "History of Medication use Narrative"
* section[medicationsSection].text.status = #generated
* section[medicationsSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Taking Lantus
</div>
"""
*/

/* Results Section (resultsSection) - Optional */
* section[resultsSection].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[resultsSection].text.status = #generated
* section[resultsSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>CBC Results: WBC 6.8, RBC 4.2, Hgb 14.0, Hct 41.0, Plt 210</p>
  <p>CMP Results: Glucose 98, BUN 14, Cr 0.8, Na 140, K 3.8, Cl 102</p>
</div>
"""
* section[resultsSection].entry[result] = Reference(Observation/observation-lab-example)
* section[resultsSection].entry[result] = Reference(Observation/observation-clinical-example)
* section[resultsSection].entry[diagnosticReport] = Reference(DiagnosticReport/diagnosticreport-lab-example)



/* Notes Section (clinicalNotesSection) - Optional */
* section[clinicalNotesSection].code = $loinc#28650-0 "Clinical notes and chart sections Set"
* section[clinicalNotesSection].text.status = #generated
* section[clinicalNotesSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Patient presented with one week history of cough and low-grade fever. Lungs clear on examination. No lymphadenopathy.</p>
</div>
"""
* section[clinicalNotesSection].entry[documentReference] = Reference(DocumentReference/documentreference-example)
* section[clinicalNotesSection].entry[diagnosticReport] = Reference(DiagnosticReport/diagnosticreport-note-example)

// Assessment and Plan of Treatment Section (assessmentAndPlanOfTreatmentSection) - Optional */
* section[assessmentAndPlanOfTreatmentSection].code = $loinc#51847-2 "Evaluation + Plan note"
* section[assessmentAndPlanOfTreatmentSection].text.status = #generated
* section[assessmentAndPlanOfTreatmentSection].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <ul>
    <li>Referral to social worker for housing assistance</li>
  </ul>
  <p>Continue symptomatic treatment. Return if symptoms worsen or fail to improve within 5 days.</p>
</div>"
* section[assessmentAndPlanOfTreatmentSection].entry[screeningAssessment] = Reference(Observation/observation-screening-example)

// /* Plan of Treatment Section (planOfTreatmentSection) - Optional */
// * section[planOfTreatmentSection].code = $loinc#18776-5 "Plan of care note"
// * section[planOfTreatmentSection].text.status = #generated
// * section[planOfTreatmentSection].text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
//   <p>Continue symptomatic treatment. Return if symptoms worsen or fail to improve within 5 days.</p>
// </div>
// """
* section[assessmentAndPlanOfTreatmentSection].entry[procedureOrders] = Reference(ServiceRequest/servicerequest-example)
/* * section[planOfTreatmentSection].entry[carePlan] = Reference(CarePlan/careplan-example)

/* Immunizations Section (immunizationsSection) - Optional */
* section[immunizationsSection].code = $loinc#11369-6 "History of Immunization note"
* section[immunizationsSection].text.status = #generated
* section[immunizationsSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Influenza vaccine administered 10/15/2024</p>
  <p>COVID-19 vaccine: Last dose received 06/20/2024</p>
</div>
"""
* section[immunizationsSection].entry = Reference(Immunization/immunization-example)

/* Procedures Section (proceduresSection) - Optional */
* section[proceduresSection].code = $loinc#47519-4 "History of Procedures Document"
* section[proceduresSection].text.status = #generated
* section[proceduresSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Appendectomy (1995)</p>
  <p>Colonoscopy (2020)</p>
</div>
"""
* section[proceduresSection].entry = Reference(Procedure/procedure-example)

/* Vital Signs Section (vitalSignsSection) - Optional */
* section[vitalSignsSection].code = $loinc#8716-3 "Vital signs note"
* section[vitalSignsSection].text.status = #generated
* section[vitalSignsSection].text.div = """
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
* section[vitalSignsSection].entry[bloodPressure] = Reference(Observation/observation-bp-example)
* section[vitalSignsSection].entry[bodyWeight] = Reference(Observation/observation-weight-example)
* section[vitalSignsSection].entry[bodyHeight] = Reference(Observation/observation-height-example)
* section[vitalSignsSection].entry[heartRate] = Reference(Observation/observation-heartrate-example)
* section[vitalSignsSection].entry[pulseOximetry] = Reference(Observation/observation-oximetry-example)
// * section[vitalSignsSection].entry[bMI] = Reference(Observation/observation-bmi-example)
* section[vitalSignsSection].entry[bodyTemperature] = Reference(Observation/observation-temperature-example)
* section[vitalSignsSection].entry[respiratoryRate] = Reference(Observation/observation-resprate-example)

/* Social History Section (socialHistorySection) - Optional */
* section[socialHistorySection].code = $loinc#29762-2 "Social history note"
* section[socialHistorySection].text.status = #generated
* section[socialHistorySection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Patient is a non-smoker</p>
  <p>Occupation: Certified Nursing Assistant (CNA) [Nursing Assistants]</p>
  <p>Industry: Home nursing services</p>
</div>
"""
* section[socialHistorySection].entry = Reference(Observation/observation-smoking-example)
* section[socialHistorySection].entry = Reference(Observation/observation-occupation-example)

/* Medical Equipment Section (medicalEquipmentSection) - Optional */
* section[medicalEquipmentSection].code = $loinc#46264-8 "History of medical device use"
* section[medicalEquipmentSection].text.status = #generated
* section[medicalEquipmentSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Implantable device: Pacemaker Model X1000</p>
</div>
"""
* section[medicalEquipmentSection].entry = Reference(Device/device-example)

/* Care Team Section (careTeamSection) - Optional */
* section[careTeamSection].code = $loinc#85847-2 "Patient Care team information"
* section[careTeamSection].text.status = #generated
* section[careTeamSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Primary Care Provider: Dr. Nicholas Joseph</p>
  <p>Pulmonologist: Dr. Sarah Chen</p>
</div>
"""
* section[careTeamSection].entry = Reference(CareTeam/careteam-example)

/* Goals Section (goalsSection) - Optional */
* section[goalsSection].code = $loinc#61146-7 "Goals"
* section[goalsSection].text.status = #generated
* section[goalsSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Resolve acute bronchitis</p>
  <p>Improve sleep quality</p>
</div>
"""
* section[goalsSection].entry = Reference(Goal/goal-example)

/* Pregnancy Section (pregnancySection) - Optional */
* section[pregnancySection].code = $loinc#90767-5 "Pregnancy summary Document"
* section[pregnancySection].text.status = #generated
* section[pregnancySection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Patient is not currently pregnant</p>
</div>
"""
* section[pregnancySection].entry[pregnancyStatusObservation] = Reference(Observation/observation-pregnancy-status-example)
* section[pregnancySection].entry[pregnancyIntent] = Reference(Observation/observation-pregnancy-intent-example)

/* Coverage Section (coverageSection) - Optional */
* section[coverageSection].code = $loinc#48768-6 "Payment sources Document"
* section[coverageSection].text.status = #generated
* section[coverageSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Primary Insurance: Blue Cross Blue Shield</p>
  <p>ID: XYZ123456789</p>
  <p>Group: ABC987</p>
</div>
"""
* section[coverageSection].entry = Reference(Coverage/coverage-bcbs-example)