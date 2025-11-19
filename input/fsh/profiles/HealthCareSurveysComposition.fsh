Profile: HealthCareSurveysComposition
Parent: Composition
Id: hcs-composition
Title: "Health Care Surveys Composition"
Description: "This Composition profile is used to organize the healthcare survey report content."
* . ^short = "Health Care Surveys Composition"
* . ^definition = "The Health Care Surveys Composition profile establishes the core elements, extensions, vocabularies and value sets for representing heath care surveys. "
* . ^isModifier = false
* identifier 1..1 MS
* identifier ^short = "Health Care Surveys Composition identifier"
* identifier ^definition = "Health Care Surveys Composition identifier. This is equivalent to ClinicalDocument.setId in CDA. The identifier of the containing Bundle is equivalent to ClinicalDocument.id in CDA. "
* status = #final (exactly)
* status MS
* type = $loinc#75619-7
* type MS
* type ^short = "National Health Care Surveys report"
* subject 1.. MS
* subject only Reference($us-core-patient)
* subject ^short = "Patient who is the subject of the report."
* subject ^definition = "This Patient profile represents the subject of the healthcare survey report."
* encounter 1.. MS
* encounter only Reference($us-core-encounter)
* encounter ^short = "Encounter related to the public health event"
* encounter ^definition = "This Encounter profile represents the encounter related to the healthcare survey report."
* date MS
* author MS
* author only Reference($us-core-practitionerrole or $us-core-practitioner or $us-core-organization or Device)
* author ^short = "The author(s) of the document"
* author ^definition = "It is possible to have multiple authors - especially in the case where the default author is the organization. Author information can contain the \"eCR Now FHIR App-Health Care Surveys\" as a Device Author. "
* title = "National Health Care Surveys report" (exactly)
* title MS
* section MS
* section ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension.valueString = "Section"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    reasonForVisitSection 1..1 MS and
    problemSection 1..1 MS and
    allergiesSection 1..1 MS and
    assessmentAndPlanOfTreatmentSection 0..1 MS and
    planOfTreatmentSection 0..1 MS and
    careTeamSection 0..1 MS and
    coverageSection 0..1 MS and
    goalsSection 0..1 MS and
    immunizationsSection 0..1 MS and
    medicalEquipmentSection 0..1 MS and
    medicationsSection 0..1 MS and
    clinicalNotesSection 0..* MS and
    pregnancySection 0..1 MS and 
    proceduresSection 0..1 MS and
    resultsSection 0..1 MS and
    socialHistorySection 0..1 MS and
    vitalSignsSection 0..* MS

// Allergies (USCDI: Allergies and Intolerances - consider renaming section)
* section[allergiesSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[allergiesSection] ^extension.valueString = "Section"
* section[allergiesSection] ^short = "Allergies Section (USCDI: Allergies and Intolerances)"
* section[allergiesSection] ^definition = "This section lists and describes all the patient's current allergies on the maintained allergy list."
* section[allergiesSection] ^isModifier = false
* section[allergiesSection].code 1.. MS
* section[allergiesSection].code = $loinc#48765-2
* section[allergiesSection].code ^short = "Allergies Section code"
* section[allergiesSection].code ^definition = "Allergies Section code"
* section[allergiesSection].code ^isModifier = false
* section[allergiesSection].text 1.. MS
* section[allergiesSection].text ^short = "Allergies Section narrative"
* section[allergiesSection].text ^definition = "Allergies Section narrative"
* section[allergiesSection].entry only Reference($us-core-allergyintolerance)
* section[allergiesSection].entry MS

// Assessment and Plan of Treatment Section (USCDI: Assessment and Plan of Treatment Section)
* section[assessmentAndPlanOfTreatmentSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[assessmentAndPlanOfTreatmentSection] ^extension.valueString = "Section"
* section[assessmentAndPlanOfTreatmentSection] ^short = "Assessment Section (USCDI: Assessment and Plan of Treatment)"
* section[assessmentAndPlanOfTreatmentSection] ^definition = "Health professional’s conclusions and working assumptions that will guide treatment of the patient."
* section[assessmentAndPlanOfTreatmentSection] ^isModifier = false
* section[assessmentAndPlanOfTreatmentSection].code 1.. MS
* section[assessmentAndPlanOfTreatmentSection].code = $loinc#51847-2
* section[assessmentAndPlanOfTreatmentSection].code ^short = "Assessment and Plan of Treatment Section code"
* section[assessmentAndPlanOfTreatmentSection].code ^definition = "Assessment and Plan of Treatment Section code"
* section[assessmentAndPlanOfTreatmentSection].code ^isModifier = false
* section[assessmentAndPlanOfTreatmentSection].text 1.. MS
* section[assessmentAndPlanOfTreatmentSection].text ^short = "Evaluation + Plan note"
* section[assessmentAndPlanOfTreatmentSection].text ^definition = "Evaluation + Plan note"
* section[assessmentAndPlanOfTreatmentSection].entry MS
* section[assessmentAndPlanOfTreatmentSection].entry ^slicing.discriminator.type = #profile
* section[assessmentAndPlanOfTreatmentSection].entry ^slicing.discriminator.path = "resolve()"
* section[assessmentAndPlanOfTreatmentSection].entry ^slicing.rules = #open
* section[assessmentAndPlanOfTreatmentSection].entry contains
    screeningAssessmentEntry 0..* MS and
    questionnaireResponseEntry 0..* MS and
    carePlanEntry 0..* MS
* section[assessmentAndPlanOfTreatmentSection].entry[screeningAssessmentEntry] only Reference($us-core-observation-screening-assessment or $us-core-simple-observation)
* section[assessmentAndPlanOfTreatmentSection].entry[screeningAssessmentEntry] ^short = "Screening Assessment Entries"
* section[assessmentAndPlanOfTreatmentSection].entry[screeningAssessmentEntry] ^isModifier = false
* section[assessmentAndPlanOfTreatmentSection].entry[questionnaireResponseEntry] only Reference($us-core-questionnaireresponse)
* section[assessmentAndPlanOfTreatmentSection].entry[questionnaireResponseEntry] ^short = "Questionnaire Response Entries"
* section[assessmentAndPlanOfTreatmentSection].entry[questionnaireResponseEntry] ^isModifier = false
* section[assessmentAndPlanOfTreatmentSection].entry[carePlanEntry] only Reference($us-core-careplan)
* section[assessmentAndPlanOfTreatmentSection].entry[carePlanEntry] ^short = "CarePlan Entries"

// Plan of Treatment Section (USCDI: Assessment and Plan of Treatment - consider renaming to Assessment and Plan of Treatment Section and using LOINC Evaluation + Plan note (See Assessment and Plan of Treatment Section above))
* section[planOfTreatmentSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[planOfTreatmentSection] ^extension.valueString = "Section"
* section[planOfTreatmentSection] ^short = "Plan of Treatment Section (USCDI: Assessment and Plan of Treatment)"
* section[planOfTreatmentSection] ^definition = "This section, contains data that define pending orders, interventions, encounters, services, and procedures for the patient. It is limited to prospective, unfulfilled, or incomplete orders and requests only. All active, incomplete, or pending orders, appointments, referrals, procedures, services, or any other pending event of clinical significance to the current care of the patient should be listed. "
* section[planOfTreatmentSection] ^isModifier = false
* section[planOfTreatmentSection].code 1.. MS
* section[planOfTreatmentSection].code = $loinc#18776-5
* section[planOfTreatmentSection].code ^short = "Plan of care note"
* section[planOfTreatmentSection].code ^definition = "Plan of Treatment code"
* section[planOfTreatmentSection].code ^isModifier = false
* section[planOfTreatmentSection].text 1.. MS
* section[planOfTreatmentSection].text ^short = "Plan of Treatment narrative"
* section[planOfTreatmentSection].text ^definition = "Plan of Treatment narrative"
* section[planOfTreatmentSection].entry MS
* section[planOfTreatmentSection].entry ^slicing.discriminator.type = #profile
* section[planOfTreatmentSection].entry ^slicing.discriminator.path = "resolve()"
* section[planOfTreatmentSection].entry ^slicing.rules = #open
* section[planOfTreatmentSection].entry contains
    medicationRequest 0..* MS and
    medicationReferences 0..* MS and
    procedureOrders 0..* MS and
    carePlanEntry 0..* MS
* section[planOfTreatmentSection].entry[medicationRequest] only Reference($us-core-medicationrequest)
* section[planOfTreatmentSection].entry[medicationRequest] ^short = "Medication Request Entries"
* section[planOfTreatmentSection].entry[medicationRequest] ^isModifier = false
* section[planOfTreatmentSection].entry[medicationReferences] only Reference($us-core-medication)
* section[planOfTreatmentSection].entry[medicationReferences] ^short = "Medication Reference Entries"
* section[planOfTreatmentSection].entry[medicationReferences] ^isModifier = false
* section[planOfTreatmentSection].entry[procedureOrders] only Reference($us-core-servicerequest)
* section[planOfTreatmentSection].entry[procedureOrders] ^short = "Procedure Order Entries"
* section[planOfTreatmentSection].entry[procedureOrders] ^isModifier = false
* section[planOfTreatmentSection].entry[carePlanEntry] only Reference($us-core-careplan)
* section[planOfTreatmentSection].entry[carePlanEntry] ^short = "CarePlan Entries"

// Care Team Section (USCDI: Care Team Members)
* section[careTeamSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[careTeamSection] ^extension.valueString = "Section"
* section[careTeamSection] ^short = "Care Team Section (USCDI: Care Team Members)"
* section[careTeamSection] ^definition = "This section lists and describes all the patient's current care team members."
* section[careTeamSection] ^isModifier = false
* section[careTeamSection].code 1.. MS
* section[careTeamSection].code = $loinc#85847-2
* section[careTeamSection].code ^short = "Care Team Section code"
* section[careTeamSection].code ^definition = "Care Team Section code"
* section[careTeamSection].code ^isModifier = false
* section[careTeamSection].text 1.. MS
* section[careTeamSection].text ^short = "Care Team Section narrative"
* section[careTeamSection].text ^definition = "Care Team Section narrative"
* section[careTeamSection].entry only Reference($us-core-careteam)
* section[careTeamSection].entry MS

// Goals Section (USCDI: Goals)
* section[goalsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[goalsSection] ^extension.valueString = "Section"
* section[goalsSection] ^short = "Goals Section (USCDI: Goals)"
* section[goalsSection] ^definition = "This section lists and describes the patient's goals."
* section[goalsSection] ^isModifier = false
* section[goalsSection].code 1.. MS
* section[goalsSection].code = $loinc#61146-7
* section[goalsSection].code ^short = "Goals Section code"
* section[goalsSection].code ^definition = "Goals Section code"
* section[goalsSection].code ^isModifier = false
* section[goalsSection].text 1.. MS
* section[goalsSection].text ^short = "Goals Section narrative"
* section[goalsSection].text ^definition = "Goals Section narrative"
* section[goalsSection].entry only Reference($us-core-goal)
* section[goalsSection].entry MS

// Coverage Section (USCDI: Health Insurance Information - consider renaming section to Health Insurance Information Section - LOINC code is "Payment sources Document", either that or rename to Payment Sources Section to match C-CDA)
* section[coverageSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[coverageSection] ^extension.valueString = "Section"
* section[coverageSection] ^short = "Coverage Section (USCDI: Health Insurance Information)"
* section[coverageSection] ^definition = "This section lists the patient's coverage."
* section[coverageSection] ^isModifier = false
* section[coverageSection].code 1.. MS
* section[coverageSection].code = $loinc#48768-6
* section[coverageSection].code ^short = "Coverage Section code"
* section[coverageSection].code ^definition = "Coverage Section code"
* section[coverageSection].code ^isModifier = false
* section[coverageSection].text 1.. MS
* section[coverageSection].text ^short = "Coverage Section narrative"
* section[coverageSection].text ^definition = "Coverage Section narrative"
* section[coverageSection].entry only Reference(USCoreCoverageProfile)
* section[coverageSection].entry MS

// Immunizations Section (USCDI: Immunizations)
* section[immunizationsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[immunizationsSection] ^extension.valueString = "Section"
* section[immunizationsSection] ^short = "Immunizations Section (USCDI: Immunization)"
* section[immunizationsSection] ^definition = "The Immunizations Section defines a patient's current immunization status and pertinent immunization history. The primary use case for the Immunization Section is to enable communication of a patient's immunization status. The section should include current immunization status, and may contain the entire immunization history that is relevant to the period of time being summarized."
* section[immunizationsSection] ^isModifier = false
* section[immunizationsSection].code 1.. MS
* section[immunizationsSection].code = $loinc#11369-6
* section[immunizationsSection].code ^short = "Immunizations code"
* section[immunizationsSection].code ^definition = "Immunizations code"
* section[immunizationsSection].code ^isModifier = false
* section[immunizationsSection].text 1.. MS
* section[immunizationsSection].text ^short = "Immunizations narrative"
* section[immunizationsSection].text ^definition = "Immunizations narrative"
* section[immunizationsSection].entry only Reference($us-core-immunization)
* section[immunizationsSection].entry MS
* section[immunizationsSection].entry ^isModifier = false

// Medications Section (USCDI: Medications)
* section[medicationsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[medicationsSection] ^extension.valueString = "Section"
* section[medicationsSection] ^short = "Medications Section (USCDI: Medications)"
* section[medicationsSection] ^definition = "The Medications Section contains a patient's current medications and pertinent medication history. At a minimum, the currently active medications are listed."
* section[medicationsSection] ^isModifier = false
* section[medicationsSection].code 1.. MS
* section[medicationsSection].code = $loinc#10160-0
* section[medicationsSection].code ^short = "Medications Section code"
* section[medicationsSection].code ^definition = "Medications Section code"
* section[medicationsSection].code ^isModifier = false
* section[medicationsSection].text 1.. MS
* section[medicationsSection].text ^short = "Medications Section narrative"
* section[medicationsSection].text ^definition = "Medications Section narrative"
* section[medicationsSection].entry MS
* section[medicationsSection].entry ^slicing.discriminator.type = #profile
* section[medicationsSection].entry ^slicing.discriminator.path = "resolve()"
* section[medicationsSection].entry ^slicing.rules = #open
* section[medicationsSection].entry contains
    medicationAdministration 0..* MS and
    medicationRequest 0..* MS and
    medicationDispense 0..* MS and
    medicationReferences 0..* MS
* section[medicationsSection].entry[medicationAdministration] only Reference(HealthCareSurveysMedicationAdministration)
* section[medicationsSection].entry[medicationAdministration] ^short = "Medication Administration Entry"
* section[medicationsSection].entry[medicationAdministration] ^isModifier = false
* section[medicationsSection].entry[medicationRequest] only Reference(USCoreMedicationRequestProfile)
* section[medicationsSection].entry[medicationRequest] ^short = "Medication Result Entry"
* section[medicationsSection].entry[medicationRequest] ^isModifier = false
* section[medicationsSection].entry[medicationDispense] only Reference($us-core-medicationdispense)
* section[medicationsSection].entry[medicationDispense] ^short = "Medication Dispense Entry"
* section[medicationsSection].entry[medicationDispense] ^isModifier = false
* section[medicationsSection].entry[medicationReferences] only Reference($us-core-medication)
* section[medicationsSection].entry[medicationReferences] ^short = "Medication Reference Entries"
* section[medicationsSection].entry[medicationReferences] ^isModifier = false

/*
// Medications Administered Section (USCDI: n/a - consider removing this section - all profiles referenced elsewhere in Composition (Medications Section))
* section[medicationsAdministeredSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[medicationsAdministeredSection] ^extension.valueString = "Section"
* section[medicationsAdministeredSection] ^short = "Medications Administered Section"
* section[medicationsAdministeredSection] ^definition = "The Medications Administered Section defines medications administered during the encounter."
* section[medicationsAdministeredSection] ^isModifier = false
* section[medicationsAdministeredSection].code 1.. MS
* section[medicationsAdministeredSection].code = $loinc#29549-3
* section[medicationsAdministeredSection].code ^short = "Medications Administered Section code"
* section[medicationsAdministeredSection].code ^definition = "Medications Administered Section code"
* section[medicationsAdministeredSection].code ^isModifier = false
* section[medicationsAdministeredSection].text 1.. MS
* section[medicationsAdministeredSection].text ^short = "Medications Administered Section narrative"
* section[medicationsAdministeredSection].text ^definition = "Medications Administered Section narrative"
* section[medicationsAdministeredSection].entry MS
* section[medicationsAdministeredSection].entry ^slicing.discriminator.type = #profile
* section[medicationsAdministeredSection].entry ^slicing.discriminator.path = "resolve()"
* section[medicationsAdministeredSection].entry ^slicing.rules = #open
* section[medicationsAdministeredSection].entry contains
    medicationAdministration 0..* MS and
    medicationReferences 0..* MS
* section[medicationsAdministeredSection].entry[medicationAdministration] only Reference(HcsMedicationAdministration)
* section[medicationsAdministeredSection].entry[medicationAdministration] ^short = "Medication Administration Entry"
* section[medicationsAdministeredSection].entry[medicationAdministration] ^isModifier = false
* section[medicationsAdministeredSection].entry[medicationReferences] only Reference($us-core-medication)
* section[medicationsAdministeredSection].entry[medicationReferences] ^short = "Medication Reference Entries"
* section[medicationsAdministeredSection].entry[medicationReferences] ^isModifier = false

// Admission Medications Section (USCDI: n/a - consider removing this section - all profiles referenced elsewhere in Composition and dates should be enough to figure out if medications were taken by patient prior to admission)
* section[admissionMedicationsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[admissionMedicationsSection] ^extension.valueString = "Section"
* section[admissionMedicationsSection] ^short = "Admission Medications Section"
* section[admissionMedicationsSection] ^definition = "The Admissions Medications Section contains the medications taken by the patient prior to and at the time of admission to the facility."
* section[admissionMedicationsSection] ^isModifier = false
* section[admissionMedicationsSection].code 1.. MS
* section[admissionMedicationsSection].code = $loinc#42346-7
* section[admissionMedicationsSection].code ^short = "Admission Medications Section code"
* section[admissionMedicationsSection].code ^definition = "Admission Medications Section code"
* section[admissionMedicationsSection].code ^isModifier = false
* section[admissionMedicationsSection].text 1.. MS
* section[admissionMedicationsSection].text ^short = "Admission Medications Section narrative"
* section[admissionMedicationsSection].text ^definition = "Admission Medications Section narrative"
* section[admissionMedicationsSection].entry MS
* section[admissionMedicationsSection].entry ^slicing.discriminator.type = #profile
* section[admissionMedicationsSection].entry ^slicing.discriminator.path = "resolve()"
* section[admissionMedicationsSection].entry ^slicing.rules = #open
* section[admissionMedicationsSection].entry contains
    medicationAdministration 0..* MS and
    medicationRequest 0..* MS and
    medicationReferences 0..* MS
* section[admissionMedicationsSection].entry[medicationAdministration] only Reference(HcsMedicationAdministration)
* section[admissionMedicationsSection].entry[medicationAdministration] ^short = "Medication Administration Entry"
* section[admissionMedicationsSection].entry[medicationAdministration] ^isModifier = false
* section[admissionMedicationsSection].entry[medicationRequest] only Reference(HcsMedicationRequest)
* section[admissionMedicationsSection].entry[medicationRequest] ^short = "Medication Request Entry"
* section[admissionMedicationsSection].entry[medicationRequest] ^isModifier = false
* section[admissionMedicationsSection].entry[medicationReferences] only Reference($us-core-medication)
* section[admissionMedicationsSection].entry[medicationReferences] ^short = "Medication Reference Entries"
* section[admissionMedicationsSection].entry[medicationReferences] ^isModifier = false
*/
// Problem Section (USCDI: Problems)
* section[problemSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[problemSection] ^extension.valueString = "Section"
* section[problemSection] ^short = "Problem Section (USCDI: Problems)"
* section[problemSection] ^definition = "This section lists and describes all the patient's current problems on the maintained problem list."
* section[problemSection] ^isModifier = false
* section[problemSection].code 1.. MS
* section[problemSection].code = $loinc#11450-4
* section[problemSection].code ^short = "Problem Section code"
* section[problemSection].code ^definition = "Problem Section code"
* section[problemSection].code ^isModifier = false
* section[problemSection].text 1.. MS
* section[problemSection].text ^short = "Problem Section narrative"
* section[problemSection].text ^definition = "Problem Section narrative"
* section[problemSection].entry MS
* section[problemSection].entry ^slicing.discriminator.type = #profile
* section[problemSection].entry ^slicing.discriminator.path = "resolve()"
* section[problemSection].entry ^slicing.rules = #open
* section[problemSection].entry contains 
    problemsHealthConcerns 0..* MS and
    encounterDiagnosis 0..* MS
* section[problemSection].entry[problemsHealthConcerns] only Reference(USCoreConditionProblemsHealthConcernsProfile)
* section[problemSection].entry[problemsHealthConcerns] ^short = "Problems Health Concerns Entry"
* section[problemSection].entry[problemsHealthConcerns] ^isModifier = false
* section[problemSection].entry[encounterDiagnosis] only Reference(USCoreConditionEncounterDiagnosisProfile)
* section[problemSection].entry[encounterDiagnosis] ^short = "Encounter Diagnosis Entry"
* section[problemSection].entry[encounterDiagnosis] ^definition = "References to Conditions that represent encounter diagnoses"
* section[problemSection].entry[encounterDiagnosis] ^isModifier = false

// Reason for Visit Section
* section[reasonForVisitSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[reasonForVisitSection] ^extension.valueString = "Section"
* section[reasonForVisitSection] ^short = "Reason for Visit Section"
* section[reasonForVisitSection] ^definition = "This section records the reason for the patient's visit (the provider’s description of the reason for visit)."
* section[reasonForVisitSection] ^isModifier = false
* section[reasonForVisitSection].code 1.. MS
* section[reasonForVisitSection].code = $loinc#29299-5
* section[reasonForVisitSection].code ^short = "Reason for Visit code"
* section[reasonForVisitSection].code ^definition = "Reason for Visit code"
* section[reasonForVisitSection].code ^isModifier = false
* section[reasonForVisitSection].text 1.. MS
* section[reasonForVisitSection].text ^short = "Reason for Visit narrative"
* section[reasonForVisitSection].text ^definition = "Reason for Visit narrative"

// Results Section (USCDI: Laboratory, Clinical Tests)
* section[resultsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[resultsSection] ^extension.valueString = "Section"
* section[resultsSection] ^short = "Results Section (USCDI: Laboratory, Clinical Tests)"
* section[resultsSection] ^definition = "The Results Section contains observations of results generated by laboratories, imaging procedures, and other procedures. The scope includes observations such as hematology, chemistry, serology, virology, toxicology, microbiology, plain x-ray, ultrasound, CT, MRI, angiography, echocardiography, nuclear medicine, pathology, and procedure observations. The section often includes notable results such as abnormal values or relevant trends, and could contain all results for the period of time being documented.\n\nLaboratory results are typically generated by laboratories providing analytic services in areas such as chemistry, hematology, serology, histology, cytology, anatomic pathology, microbiology, and/or virology. These observations are based on analysis of specimens obtained from the patient and submitted to the laboratory. Imaging results are typically generated by a clinician reviewing the output of an imaging procedure, such as where a cardiologist reports the left ventricular ejection fraction based on the review of a cardiac echocardiogram.\n\nProcedure results are typically generated by a clinician to provide more granular information about component observations made during a procedure, such as where a gastroenterologist reports the size of a polyp observed during a colonoscopy.\n"
* section[resultsSection] ^isModifier = false
* section[resultsSection].code 1.. MS
* section[resultsSection].code = $loinc#30954-2
* section[resultsSection].code ^short = "Results Section code"
* section[resultsSection].code ^definition = "Results Section code"
* section[resultsSection].code ^isModifier = false
* section[resultsSection].text 1.. MS
* section[resultsSection].text ^short = "Results Section narrative"
* section[resultsSection].text ^definition = "Results Section narrative"
* section[resultsSection].entry MS
* section[resultsSection].entry ^slicing.discriminator.type = #profile
* section[resultsSection].entry ^slicing.discriminator.path = "resolve()"
* section[resultsSection].entry ^slicing.rules = #open
* section[resultsSection].entry contains
    // labResultEntry 0..* MS and
    resultEntry 0..* MS and
    diagnosticReportEntry 0..* MS
    // clinicalResultEntry 0..* MS and
    // screeningAssessmentEntry 0..* MS and
    // questionnaireResponseEntry 0..* MS
* section[resultsSection].entry[resultEntry] only Reference($us-core-observation-lab or $us-core-observation-clinical-result)
* section[resultsSection].entry[resultEntry] ^short = "Result Entries"
* section[resultsSection].entry[resultEntry] ^isModifier = false
* section[resultsSection].entry[diagnosticReportEntry] only Reference($us-core-diagnosticreport-lab)
* section[resultsSection].entry[diagnosticReportEntry] ^short = "Diagnostic Result Entries"
* section[resultsSection].entry[diagnosticReportEntry] ^isModifier = false
// * section[resultsSection].entry[labResultEntry] only Reference($us-core-observation-lab)
// * section[resultsSection].entry[labResultEntry] ^short = "Lab Result Entries"
// * section[resultsSection].entry[labResultEntry] ^isModifier = false
// * section[resultsSection].entry[clinicalResultEntry] only Reference($us-core-observation-clinical-result)
// * section[resultsSection].entry[clinicalResultEntry] ^short = "Clinical Result Entries"
// * section[resultsSection].entry[clinicalResultEntry] ^isModifier = false
// * section[resultsSection].entry[screeningAssessmentEntry] only Reference($us-core-observation-screening-assessment)
// * section[resultsSection].entry[screeningAssessmentEntry] ^short = "Screening Assessment Entries"
// * section[resultsSection].entry[screeningAssessmentEntry] ^isModifier = false
//* removed us-core-questionnaireresponse
// * section[resultsSection].entry[questionnaireResponseEntry] only Reference($us-core-questionnaireresponse )
// * section[resultsSection].entry[questionnaireResponseEntry] ^short = "Questionnaire Response Entries"
// * section[resultsSection].entry[questionnaireResponseEntry] ^isModifier = false

// Clinical Notes Section (USCDI: Clinical Notes)
* section[clinicalNotesSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[clinicalNotesSection] ^extension.valueString = "Section"
* section[clinicalNotesSection] ^short = "Clinical Notes Section"
* section[clinicalNotesSection] ^definition = "The Clinical Notes Section contains clinical notes and diagnostic reports."
* section[clinicalNotesSection] ^isModifier = false
* section[clinicalNotesSection].code 1.. MS
* section[clinicalNotesSection].code = $loinc#28650-0
* section[clinicalNotesSection].code ^short = "Clinical Notes Section code"
* section[clinicalNotesSection].code ^definition = "Clinical Notes Section code"
* section[clinicalNotesSection].code ^isModifier = false
* section[clinicalNotesSection].text 1.. MS
* section[clinicalNotesSection].text ^short = "Clinical Notes Section narrative"
* section[clinicalNotesSection].text ^definition = "Clinical Notes Section narrative"
* section[clinicalNotesSection].entry MS
* section[clinicalNotesSection].entry ^slicing.discriminator.type = #profile
* section[clinicalNotesSection].entry ^slicing.discriminator.path = "resolve()"
* section[clinicalNotesSection].entry ^slicing.rules = #open
* section[clinicalNotesSection].entry contains
    documentReferenceEntry 0..* MS and
    diagnosticReportEntry 0..* MS
* section[clinicalNotesSection].entry[documentReferenceEntry] only Reference($us-core-documentreference)
* section[clinicalNotesSection].entry[documentReferenceEntry] ^short = "Document Reference Entries"
* section[clinicalNotesSection].entry[documentReferenceEntry] ^isModifier = false
* section[clinicalNotesSection].entry[diagnosticReportEntry] only Reference($us-core-diagnosticreport-note)
* section[clinicalNotesSection].entry[diagnosticReportEntry] ^short = "Diagnostic Report Entries"
* section[clinicalNotesSection].entry[diagnosticReportEntry] ^isModifier = false

// Procedures Section (USCDI: Procedures)
* section[proceduresSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[proceduresSection] ^extension.valueString = "Section"
* section[proceduresSection] ^short = "Procedures Section (USCDI: Procedures)"
* section[proceduresSection] ^definition = "This section describes all interventional, surgical, diagnostic, or therapeutic procedures or treatments pertinent to the patient historically at the time the document is generated. The section should include notable procedures, but can contain all procedures for the period of time being summarized."
* section[proceduresSection] ^isModifier = false
* section[proceduresSection].code 1.. MS
* section[proceduresSection].code = $loinc#47519-4
* section[proceduresSection].code ^short = "Procedures Section code"
* section[proceduresSection].code ^definition = "Procedures Section code"
* section[proceduresSection].code ^isModifier = false
* section[proceduresSection].text 1.. MS
* section[proceduresSection].text ^short = "Procedures Section narrative"
* section[proceduresSection].text ^definition = "Procedures Section narrative"
* section[proceduresSection].entry MS
* section[proceduresSection].entry ^slicing.discriminator.type = #profile
* section[proceduresSection].entry ^slicing.discriminator.path = "resolve()"
* section[proceduresSection].entry ^slicing.rules = #open
* section[proceduresSection].entry contains
    procedure 0..* MS and
    procedureOrder 0..* MS
* section[proceduresSection].entry[procedure] only Reference($us-core-procedure)
* section[proceduresSection].entry[procedure] ^short = "Procedure Entries"
* section[proceduresSection].entry[procedureOrder] only Reference($us-core-servicerequest)
* section[proceduresSection].entry[procedureOrder] ^short = "Procedure Order Entries"


// Vital Signs Section (USCDI: Vital Signs)
* section[vitalSignsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[vitalSignsSection] ^extension.valueString = "Section"
* section[vitalSignsSection] ^short = "Vital Signs Section (USCDI: Vital Signs)"
* section[vitalSignsSection] ^definition = "The Vital Signs Section contains relevant vital signs for the report. The section should include notable vital signs such as the most recent, maximum and/or minimum, baseline, or relevant trends. Vital signs are represented in the same way as other results, but are aggregated into their own section to follow clinical conventions."
* section[vitalSignsSection] ^isModifier = false
* section[vitalSignsSection].code 1.. MS
* section[vitalSignsSection].code = $loinc#8716-3
* section[vitalSignsSection].code ^short = "Vital Signs code"
* section[vitalSignsSection].code ^definition = "Vital Signs code"
* section[vitalSignsSection].code ^isModifier = false
* section[vitalSignsSection].text 1.. MS
* section[vitalSignsSection].text ^short = "Vital Signs narrative"
* section[vitalSignsSection].text ^definition = "Vital Signs narrative"
//* section[vitalSignsSection].entry only Reference($us-core-vital-signs)
* section[vitalSignsSection].entry MS
* section[vitalSignsSection].entry ^slicing.discriminator.type = #profile
* section[vitalSignsSection].entry ^slicing.discriminator.path = "resolve()"
* section[vitalSignsSection].entry ^slicing.rules = #open
* section[vitalSignsSection].entry contains
    bloodPressureEntry 0..* MS and
    bodyWeightEntry 0..* MS and
    bodyHeightEntry 0..* MS and
    heartRateEntry 0..* MS and
    pulseOximetryEntry 0..* MS and
    bMIEntry 0..* MS and
    pediatricWeightForHeightEntry 0..* MS and
    pediatricHeadOccipitalFrontalCircumferenceEntry 0..* MS and
    pediatricBMIForAgeEntry 0..* MS and
    bodyTemperatureEntry 0..* MS and
    headCircumferenceEntry 0..* MS and
    respiratoryRateEntry 0..* MS
* section[vitalSignsSection].entry[bloodPressureEntry] only Reference($us-core-blood-pressure)
* section[vitalSignsSection].entry[bloodPressureEntry] ^short = "Blood Pressure Entries"
* section[vitalSignsSection].entry[bloodPressureEntry] ^isModifier = false
* section[vitalSignsSection].entry[bodyWeightEntry] only Reference($us-core-body-weight)
* section[vitalSignsSection].entry[bodyWeightEntry] ^short = "Body Weight Entries"
* section[vitalSignsSection].entry[bodyWeightEntry] ^isModifier = false
* section[vitalSignsSection].entry[bodyHeightEntry] only Reference($us-core-body-height)
* section[vitalSignsSection].entry[bodyHeightEntry] ^short = "Body Height Entries"
* section[vitalSignsSection].entry[bodyHeightEntry] ^isModifier = false
* section[vitalSignsSection].entry[heartRateEntry] only Reference($us-core-heart-rate)
* section[vitalSignsSection].entry[heartRateEntry] ^short = "Heart Rate Entries"
* section[vitalSignsSection].entry[heartRateEntry] ^isModifier = false
* section[vitalSignsSection].entry[pulseOximetryEntry] only Reference($us-core-pulse-oximetry)
* section[vitalSignsSection].entry[pulseOximetryEntry] ^short = "Pulse Oximetry Entries"
* section[vitalSignsSection].entry[pulseOximetryEntry] ^isModifier = false
* section[vitalSignsSection].entry[bMIEntry] only Reference($us-core-bmi)
* section[vitalSignsSection].entry[bMIEntry] ^short = "BMI Entries"
* section[vitalSignsSection].entry[bMIEntry] ^isModifier = false
* section[vitalSignsSection].entry[pediatricWeightForHeightEntry] only Reference($pediatric-weight-for-height)
* section[vitalSignsSection].entry[pediatricWeightForHeightEntry] ^short = "Pediatric Weight For Height Entries"
* section[vitalSignsSection].entry[pediatricWeightForHeightEntry] ^isModifier = false
* section[vitalSignsSection].entry[pediatricHeadOccipitalFrontalCircumferenceEntry] only Reference($head-occipital-frontal-circumference-percentile)
* section[vitalSignsSection].entry[pediatricHeadOccipitalFrontalCircumferenceEntry] ^short = "Pediatric Head Occipital Frontal Circumference Percentile Entries"
* section[vitalSignsSection].entry[pediatricHeadOccipitalFrontalCircumferenceEntry] ^isModifier = false
* section[vitalSignsSection].entry[pediatricBMIForAgeEntry] only Reference($pediatric-bmi-for-age)
* section[vitalSignsSection].entry[pediatricBMIForAgeEntry] ^short = "Pediatric BMI For Age Entries"
* section[vitalSignsSection].entry[pediatricBMIForAgeEntry] ^isModifier = false
* section[vitalSignsSection].entry[bodyTemperatureEntry] only Reference($us-core-body-temperature)
* section[vitalSignsSection].entry[bodyTemperatureEntry] ^short = "Body Temperature Entries"
* section[vitalSignsSection].entry[bodyTemperatureEntry] ^isModifier = false
* section[vitalSignsSection].entry[headCircumferenceEntry] only Reference($us-core-head-circumference)
* section[vitalSignsSection].entry[headCircumferenceEntry] ^short = "Head Circumference Entries"
* section[vitalSignsSection].entry[headCircumferenceEntry] ^isModifier = false
* section[vitalSignsSection].entry[respiratoryRateEntry] only Reference($us-core-respiratory-rate)
* section[vitalSignsSection].entry[respiratoryRateEntry] ^short = "Respiratory Rate Entries"
* section[vitalSignsSection].entry[respiratoryRateEntry] ^isModifier = false

// Social History Section (USCDI: Health Status/Assessments - Smoking Status, Patient Demographics/Information - Occupation, Occupation Industry)
* section[socialHistorySection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[socialHistorySection] ^extension.valueString = "Section"
* section[socialHistorySection] ^short = "Social History Section (USCDI: Health Status/Assessments - Smoking Status, Patient Demographics/Information - Occupation, Occupation Industry)"
* section[socialHistorySection] ^definition = "This section contains social history data that influence a patient’s physical, psychological or emotional health."
* section[socialHistorySection] ^isModifier = false
* section[socialHistorySection].code 1.. MS
* section[socialHistorySection].code = $loinc#29762-2
* section[socialHistorySection].code ^short = "Social History Section code"
* section[socialHistorySection].code ^definition = "Social History Section code"
* section[socialHistorySection].code ^isModifier = false
* section[socialHistorySection].text 1.. MS
* section[socialHistorySection].text ^short = "Social History Section narrative"
* section[socialHistorySection].text ^definition = "Social History Section narrative"
* section[socialHistorySection].entry MS
* section[socialHistorySection].entry ^slicing.discriminator.type = #profile
* section[socialHistorySection].entry ^slicing.discriminator.path = "resolve()"
* section[socialHistorySection].entry ^slicing.rules = #open
* section[socialHistorySection].entry contains
    smokingStatus 0..* MS and
    occupation 0..* MS
* section[socialHistorySection].entry[smokingStatus] only Reference($us-core-smokingstatus)
* section[socialHistorySection].entry[smokingStatus] ^short = "US Core Smoking Status Observation"
* section[socialHistorySection].entry[smokingStatus] ^definition = "US Core Smoking Status Observation entry"
* section[socialHistorySection].entry[occupation] only Reference($us-core-observation-occupation)
* section[socialHistorySection].entry[occupation] ^short = "US Core Observation Occupation Observation"
* section[socialHistorySection].entry[occupation] ^definition = "US Core Observation Occupation Observation entry"

// Medical Equipment Section (USCDI: Unique Device Identifier(s) for a patient's implantable device(s))
* section[medicalEquipmentSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[medicalEquipmentSection] ^extension.valueString = "Section"
* section[medicalEquipmentSection] ^short = "Medical Equipment Section (USCDI: Unique Device Identifier(s) for a patient's implantable device(s))"
* section[medicalEquipmentSection] ^definition = "This section lists and describes all the patient's current implanted devices."
* section[medicalEquipmentSection] ^isModifier = false
* section[medicalEquipmentSection].code 1.. MS
* section[medicalEquipmentSection].code = $loinc#46264-8
* section[medicalEquipmentSection].code ^short = "Medical Equipment Section code"
* section[medicalEquipmentSection].code ^definition = "Medical Equipment Section code"
* section[medicalEquipmentSection].code ^isModifier = false
* section[medicalEquipmentSection].text 1.. MS
* section[medicalEquipmentSection].text ^short = "Medical Equipment Section narrative"
* section[medicalEquipmentSection].text ^definition = "Medical Equipment Section narrative"
* section[medicalEquipmentSection].entry only Reference($us-core-implantable-device)
* section[medicalEquipmentSection].entry MS

// Pregnancy Section (USCDI: Health Status/Assessments - Pregnancy Status)
* section[pregnancySection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[pregnancySection] ^extension.valueString = "Section"
* section[pregnancySection] ^short = "Pregnancy Section (USCDI: Health Status/Assessments - Pregnancy Status)"
* section[pregnancySection] ^definition = "This section contains pregnancy data"
* section[pregnancySection] ^isModifier = false
* section[pregnancySection].code 1.. MS
* section[pregnancySection].code = $loinc#90767-5
* section[pregnancySection].code ^short = "Pregnancy Section code"
* section[pregnancySection].code ^definition = "Pregnancy Section code"
* section[pregnancySection].code ^isModifier = false
* section[pregnancySection].text 1.. MS
* section[pregnancySection].text ^short = "Pregnancy Section narrative"
* section[pregnancySection].text ^definition = "Pregnancy Section narrative"
* section[pregnancySection].entry MS
* section[pregnancySection].entry ^slicing.discriminator.type = #profile
* section[pregnancySection].entry ^slicing.discriminator.path = "resolve()"
* section[pregnancySection].entry ^slicing.rules = #open
* section[pregnancySection].entry contains
    pregnancyStatusObservation 0..* MS and
    pregnancyIntent 0..* MS
* section[pregnancySection].entry[pregnancyStatusObservation] only Reference($us-core-observation-pregnancystatus)
* section[pregnancySection].entry[pregnancyStatusObservation] ^short = "Pregnancy Status Observation"
* section[pregnancySection].entry[pregnancyStatusObservation] ^definition = "Pregnancy Status Observation entry"
* section[pregnancySection].entry[pregnancyIntent] only Reference($us-core-observation-pregnancyintent)
* section[pregnancySection].entry[pregnancyIntent] ^short = "Pregnancy Intent"
* section[pregnancySection].entry[pregnancyIntent] ^definition = "Pregnancy Intent entry"