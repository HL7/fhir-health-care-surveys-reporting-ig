Profile: HealthCareSurveysComposition
Parent: Composition
Id: hcs-composition
Title: "Health Care Surveys Composition"
Description: "This Composition profile is used to organize the healthcare survey report content."
* . ^short = "Health Care Surveys Composition"
* . ^definition = "The Health Care Surveys Composition profile establishes the core elements, extensions, vocabularies and value sets for representing heath care surveys. "
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

// Reason for Visit Section
* section[reasonForVisitSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[reasonForVisitSection] ^extension.valueString = "Section"
* section[reasonForVisitSection] ^short = "Reason for Visit Section"
* section[reasonForVisitSection] ^definition = "This section records the reason for the patient's visit (the provider’s description of the reason for visit)."
* section[reasonForVisitSection].code 1.. MS
* section[reasonForVisitSection].code = $loinc#29299-5
* section[reasonForVisitSection].code ^short = "Reason for Visit code"
* section[reasonForVisitSection].code ^definition = "Reason for Visit code"
* section[reasonForVisitSection].text 1.. MS
* section[reasonForVisitSection].text ^short = "Reason for Visit narrative"
* section[reasonForVisitSection].text ^definition = "Reason for Visit narrative"


// Allergies (USCDI Data Class: Allergies and Intolerances - consider renaming section)
* section[allergiesSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[allergiesSection] ^extension.valueString = "Section"
* section[allergiesSection] ^short = "Allergies Section (USCDI Data Class: Allergies and Intolerances)"
* section[allergiesSection] ^definition = "This section lists and describes all the patient's current allergies on the maintained allergy list."
* section[allergiesSection].code 1.. MS
* section[allergiesSection].code = $loinc#48765-2
* section[allergiesSection].code ^short = "Allergies Section code"
* section[allergiesSection].code ^definition = "Allergies Section code"
* section[allergiesSection].text 1.. MS
* section[allergiesSection].text ^short = "Allergies Section narrative"
* section[allergiesSection].text ^definition = "Allergies Section narrative"
* section[allergiesSection].entry only Reference($us-core-allergyintolerance)
* section[allergiesSection].entry MS
* section[allergiesSection].entry ^short = "AllergyIntolerance Entries (USCDI Data Elements: Substance (Medication), Substance (Drug Class), Reaction)"

// Assessment and Plan of Treatment Section (USCDI Data Class: Assessment and Plan of Treatment Section)
* section[assessmentAndPlanOfTreatmentSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[assessmentAndPlanOfTreatmentSection] ^extension.valueString = "Section"
* section[assessmentAndPlanOfTreatmentSection] ^short = "Assessment Section (USCDI Data Class: Assessment and Plan of Treatment, Health Status/Assessments)"
* section[assessmentAndPlanOfTreatmentSection] ^definition = "Health professional’s conclusions and working assumptions that will guide treatment of the patient."
* section[assessmentAndPlanOfTreatmentSection].code 1.. MS
* section[assessmentAndPlanOfTreatmentSection].code = $loinc#51847-2
* section[assessmentAndPlanOfTreatmentSection].code ^short = "Assessment and Plan of Treatment Section code"
* section[assessmentAndPlanOfTreatmentSection].code ^definition = "Assessment and Plan of Treatment Section code"
* section[assessmentAndPlanOfTreatmentSection].text 1.. MS
* section[assessmentAndPlanOfTreatmentSection].text ^short = "Evaluation + Plan note"
* section[assessmentAndPlanOfTreatmentSection].text ^definition = "Evaluation + Plan note"
* section[assessmentAndPlanOfTreatmentSection].entry MS
* section[assessmentAndPlanOfTreatmentSection].entry ^slicing.discriminator.type = #profile
* section[assessmentAndPlanOfTreatmentSection].entry ^slicing.discriminator.path = "resolve()"
* section[assessmentAndPlanOfTreatmentSection].entry ^slicing.rules = #open
* section[assessmentAndPlanOfTreatmentSection].entry contains
    screeningAssessment 0..* MS and
    questionnaireResponse 0..* MS and
    carePlan 0..* MS
* section[assessmentAndPlanOfTreatmentSection].entry[screeningAssessment] only Reference($us-core-observation-screening-assessment or $us-core-simple-observation)
* section[assessmentAndPlanOfTreatmentSection].entry[screeningAssessment] ^short = "Assessment Entries (USCDI Data Elements: SDOH Assessment, Functional Status, Disability Status, Mental/Cogntive Status)"
* section[assessmentAndPlanOfTreatmentSection].entry[questionnaireResponse] only Reference($us-core-questionnaireresponse)
* section[assessmentAndPlanOfTreatmentSection].entry[questionnaireResponse] ^short = "QuestionnaireResponse Entries (USCDI Data Elements: SDOH Assessment, Functional Status, Disability Status, Mental/Cogntive Status)"
* section[assessmentAndPlanOfTreatmentSection].entry[carePlan] only Reference($us-core-careplan)
* section[assessmentAndPlanOfTreatmentSection].entry[carePlan] ^short = "CarePlan Entries (USCDI Data Elements: Assessment and Plan of Treatment)"

// Care Team Section (USCDI Data Class: Care Team Members)
* section[careTeamSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[careTeamSection] ^extension.valueString = "Section"
* section[careTeamSection] ^short = "Care Team Section (USCDI Data Class: Care Team Members)"
* section[careTeamSection] ^definition = "This section lists and describes all the patient's current care team members."
* section[careTeamSection].code 1.. MS
* section[careTeamSection].code = $loinc#85847-2
* section[careTeamSection].code ^short = "Care Team Section code"
* section[careTeamSection].code ^definition = "Care Team Section code"
* section[careTeamSection].text 1.. MS
* section[careTeamSection].text ^short = "Care Team Section narrative"
* section[careTeamSection].text ^definition = "Care Team Section narrative"
* section[careTeamSection].entry only Reference($us-core-careteam)
* section[careTeamSection].entry MS
* section[careTeamSection].entry ^short = "Care Team Entries (USCDI Data Elements: Care Team Members - Name, Identifier, Location, Telecom, Role)"

// Goals Section (USCDI Data Class: Goals)
* section[goalsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[goalsSection] ^extension.valueString = "Section"
* section[goalsSection] ^short = "Goals Section (USCDI Data Class: Goals)"
* section[goalsSection] ^definition = "This section lists and describes the patient's goals."
* section[goalsSection].code 1.. MS
* section[goalsSection].code = $loinc#61146-7
* section[goalsSection].code ^short = "Goals Section code"
* section[goalsSection].code ^definition = "Goals Section code"
* section[goalsSection].text 1.. MS
* section[goalsSection].text ^short = "Goals Section narrative"
* section[goalsSection].text ^definition = "Goals Section narrative"
* section[goalsSection].entry only Reference($us-core-goal)
* section[goalsSection].entry MS
* section[goalsSection].entry ^short = "Goal Entries (USCDI Data Elements: Patient Goals, SDOH Goals)"

// Problem Section (USCDI Data Class: Problems, Health Status/Assessments)
* section[problemSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[problemSection] ^extension.valueString = "Section"
* section[problemSection] ^short = "Problem Section (USCDI Data Class: Problems, Encounter)"
* section[problemSection] ^definition = "This section lists and describes all the patient's current problems on the maintained problem list."
* section[problemSection].code 1.. MS
* section[problemSection].code = $loinc#11450-4
* section[problemSection].code ^short = "Problem Section code"
* section[problemSection].code ^definition = "Problem Section code"
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
* section[problemSection].entry[problemsHealthConcerns] ^short = "Problems Health Concerns Entries (USCDI Data Elements: Date of Resolution, Date of Diagnosis, SDOH Problems/Health Concerns, Health Concerns, Disability Status, Functional Status, Mental/Cognitive Status)"
* section[problemSection].entry[encounterDiagnosis] only Reference(USCoreConditionEncounterDiagnosisProfile)
* section[problemSection].entry[encounterDiagnosis] ^short = "Encounter Diagnosis Entries (USCDI Data Elements: Encounter Diagnosis)"

// Results Section (USCDI Data Class: Laboratory, Clinical Tests)
* section[resultsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[resultsSection] ^extension.valueString = "Section"
* section[resultsSection] ^short = "Results Section (USCDI Data Class: Laboratory, Clinical Tests)"
* section[resultsSection] ^definition = "The Results Section contains observations of results generated by laboratories, imaging procedures, and other procedures. The scope includes observations such as hematology, chemistry, serology, virology, toxicology, microbiology, plain x-ray, ultrasound, CT, MRI, angiography, echocardiography, nuclear medicine, pathology, and procedure observations. The section often includes notable results such as abnormal values or relevant trends, and could contain all results for the period of time being documented.\n\nLaboratory results are typically generated by laboratories providing analytic services in areas such as chemistry, hematology, serology, histology, cytology, anatomic pathology, microbiology, and/or virology. These observations are based on analysis of specimens obtained from the patient and submitted to the laboratory. Imaging results are typically generated by a clinician reviewing the output of an imaging procedure, such as where a cardiologist reports the left ventricular ejection fraction based on the review of a cardiac echocardiogram.\n\nProcedure results are typically generated by a clinician to provide more granular information about component observations made during a procedure, such as where a gastroenterologist reports the size of a polyp observed during a colonoscopy.\n"
* section[resultsSection].code 1.. MS
* section[resultsSection].code = $loinc#30954-2
* section[resultsSection].code ^short = "Results Section code"
* section[resultsSection].code ^definition = "Results Section code"
* section[resultsSection].text 1.. MS
* section[resultsSection].text ^short = "Results Section narrative"
* section[resultsSection].text ^definition = "Results Section narrative"
* section[resultsSection].entry MS
* section[resultsSection].entry ^slicing.discriminator.type = #profile
* section[resultsSection].entry ^slicing.discriminator.path = "resolve()"
* section[resultsSection].entry ^slicing.rules = #open
* section[resultsSection].entry contains
    result 0..* MS and
    diagnosticReport 0..* MS
* section[resultsSection].entry[result] only Reference($us-core-observation-lab or $us-core-observation-clinical-result)
* section[resultsSection].entry[result] ^short = "Result Entries (USCDI Data Elements: Laboratory Tests, Laboratory Values/Results, Laboratory Specimen Type, Laboratory Result Status, Clinical Test, Clinical Test Result/Report)"
* section[resultsSection].entry[diagnosticReport] only Reference($us-core-diagnosticreport-lab or $us-core-diagnosticreport-note)
* section[resultsSection].entry[diagnosticReport] ^short = "Diagnostic Result Entries (USCDI Data Elements: Laboratory Tests, Laboratory Values/Results, Laboratory Specimen Type, Laboratory Result Status, Clinical Test, Clinical Test Result/Report)"

// Medications Section (USCDI Data Class: Medications)
* section[medicationsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[medicationsSection] ^extension.valueString = "Section"
* section[medicationsSection] ^short = "Medications Section (USCDI Data Class: Medications)"
* section[medicationsSection] ^definition = "The Medications Section contains a patient's current medications and pertinent medication history. At a minimum, the currently active medications are listed."
* section[medicationsSection].code 1.. MS
* section[medicationsSection].code = $loinc#10160-0
* section[medicationsSection].code ^short = "Medications Section code"
* section[medicationsSection].code ^definition = "Medications Section code"
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
    medication 0..* MS
* section[medicationsSection].entry[medicationAdministration] only Reference(HealthCareSurveysMedicationAdministration)
* section[medicationsSection].entry[medicationAdministration] ^short = "MedicationAdministration Entries (USCDI Data Elements: Medications, Dose)"
* section[medicationsSection].entry[medicationRequest] only Reference(USCoreMedicationRequestProfile)
* section[medicationsSection].entry[medicationRequest] ^short = "MedicationRequest Entries (USCDI Data Elements: Medications, Dose, Dose Unit of Measure, Indication)"
* section[medicationsSection].entry[medicationDispense] only Reference($us-core-medicationdispense)
* section[medicationsSection].entry[medicationDispense] ^short = "MedicationDispense Entries (USCDI Data Elements: Medications, Fill Status)"
* section[medicationsSection].entry[medication] only Reference($us-core-medication)
* section[medicationsSection].entry[medication] ^short = "Medication Entries (USCDI Data Elements: Medications)"

// Coverage Section (USCDI Data Class: Health Insurance Information - consider renaming section to Health Insurance Information Section - LOINC code is "Payment sources Document", either that or rename to Payment Sources Section to match C-CDA)
* section[coverageSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[coverageSection] ^extension.valueString = "Section"
* section[coverageSection] ^short = "Coverage Section (USCDI Data Class: Health Insurance Information)"
* section[coverageSection] ^definition = "This section lists the patient's coverage."
* section[coverageSection].code 1.. MS
* section[coverageSection].code = $loinc#48768-6
* section[coverageSection].code ^short = "Coverage Section code"
* section[coverageSection].code ^definition = "Coverage Section code"
* section[coverageSection].text 1.. MS
* section[coverageSection].text ^short = "Coverage Section narrative"
* section[coverageSection].text ^definition = "Coverage Section narrative"
* section[coverageSection].entry only Reference(USCoreCoverageProfile)
* section[coverageSection].entry MS
* section[coverageSection].entry ^short = "Coverage Entries (USCDI Data Elements: Coverage Status, Coverage Type, Relationship to Subscriber, Member Identifier, Subscriber Identifier, Group Number, Payer Identifier)"

// Immunizations Section (USCDI Data Class: Immunizations)
* section[immunizationsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[immunizationsSection] ^extension.valueString = "Section"
* section[immunizationsSection] ^short = "Immunizations Section (USCDI Data Class: Immunization)"
* section[immunizationsSection] ^definition = "The Immunizations Section defines a patient's current immunization status and pertinent immunization history. The primary use case for the Immunization Section is to enable communication of a patient's immunization status. The section should include current immunization status, and may contain the entire immunization history that is relevant to the period of time being summarized."
* section[immunizationsSection].code 1.. MS
* section[immunizationsSection].code = $loinc#11369-6
* section[immunizationsSection].code ^short = "Immunizations code"
* section[immunizationsSection].code ^definition = "Immunizations code"
* section[immunizationsSection].text 1.. MS
* section[immunizationsSection].text ^short = "Immunizations narrative"
* section[immunizationsSection].text ^definition = "Immunizations narrative"
* section[immunizationsSection].entry only Reference($us-core-immunization)
* section[immunizationsSection].entry MS
* section[immunizationsSection].entry ^short = "Immunization Entries (USCDI Data Elements: Immunizations)"

// Clinical Notes Section (USCDI Data Class: Clinical Notes)
* section[clinicalNotesSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[clinicalNotesSection] ^extension.valueString = "Section"
* section[clinicalNotesSection] ^short = "Clinical Notes Section"
* section[clinicalNotesSection] ^definition = "The Clinical Notes Section contains clinical notes and diagnostic reports."
* section[clinicalNotesSection].code 1.. MS
* section[clinicalNotesSection].code = $loinc#28650-0
* section[clinicalNotesSection].code ^short = "Clinical Notes Section code"
* section[clinicalNotesSection].code ^definition = "Clinical Notes Section code"
* section[clinicalNotesSection].text 1.. MS
* section[clinicalNotesSection].text ^short = "Clinical Notes Section narrative"
* section[clinicalNotesSection].text ^definition = "Clinical Notes Section narrative"
* section[clinicalNotesSection].entry MS
* section[clinicalNotesSection].entry ^slicing.discriminator.type = #profile
* section[clinicalNotesSection].entry ^slicing.discriminator.path = "resolve()"
* section[clinicalNotesSection].entry ^slicing.rules = #open
* section[clinicalNotesSection].entry contains
    documentReference 0..* MS and
    diagnosticReport 0..* MS
* section[clinicalNotesSection].entry[documentReference] only Reference($us-core-documentreference)
* section[clinicalNotesSection].entry[documentReference] ^short = "Document Reference Entries (USCDI Data Elements: Consultation Note, Discharge Summary Note, History & Physical, Imaging Narrative, Laboratory Report Narrative, Pathology Report Narrative, Procedure Note, Progress Note)"
* section[clinicalNotesSection].entry[diagnosticReport] only Reference($us-core-diagnosticreport-note)
* section[clinicalNotesSection].entry[diagnosticReport] ^short = "Diagnostic Report Entries (USCDI Data Elements: Imaging Narrative, Laboratory Report Narrative, Pathology Report Narrative, Procedure Note)"

// Procedures Section (USCDI Data Class: Procedures)
* section[proceduresSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[proceduresSection] ^extension.valueString = "Section"
* section[proceduresSection] ^short = "Procedures Section (USCDI Data Class: Procedures)"
* section[proceduresSection] ^definition = "This section describes all interventional, surgical, diagnostic, or therapeutic procedures or treatments pertinent to the patient historically at the time the document is generated. The section should include notable procedures, but can contain all procedures for the period of time being summarized."
* section[proceduresSection].code 1.. MS
* section[proceduresSection].code = $loinc#47519-4
* section[proceduresSection].code ^short = "Procedures Section code"
* section[proceduresSection].code ^definition = "Procedures Section code"
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
* section[proceduresSection].entry[procedure] ^short = "Procedure Entries (USCDI Data Elements: Procedure, SDOH Interventions)"
* section[proceduresSection].entry[procedureOrder] only Reference($us-core-servicerequest)
* section[proceduresSection].entry[procedureOrder] ^short = "Procedure Order Entries (USCDI Data Elements: Reason for Referral, SDOH Interventions)"

// Vital Signs Section (USCDI Data Class: Vital Signs)
* section[vitalSignsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[vitalSignsSection] ^extension.valueString = "Section"
* section[vitalSignsSection] ^short = "Vital Signs Section (USCDI Data Class: Vital Signs)"
* section[vitalSignsSection] ^definition = "The Vital Signs Section contains relevant vital signs for the report. The section should include notable vital signs such as the most recent, maximum and/or minimum, baseline, or relevant trends. Vital signs are represented in the same way as other results, but are aggregated into their own section to follow clinical conventions."
* section[vitalSignsSection].code 1.. MS
* section[vitalSignsSection].code = $loinc#8716-3
* section[vitalSignsSection].code ^short = "Vital Signs code"
* section[vitalSignsSection].code ^definition = "Vital Signs code"
* section[vitalSignsSection].text 1.. MS
* section[vitalSignsSection].text ^short = "Vital Signs narrative"
* section[vitalSignsSection].text ^definition = "Vital Signs narrative"
//* section[vitalSignsSection].entry only Reference($us-core-vital-signs)
* section[vitalSignsSection].entry MS
* section[vitalSignsSection].entry ^slicing.discriminator.type = #profile
* section[vitalSignsSection].entry ^slicing.discriminator.path = "resolve()"
* section[vitalSignsSection].entry ^slicing.rules = #open
* section[vitalSignsSection].entry contains
    bloodPressure 0..* MS and
    bodyWeight 0..* MS and
    bodyHeight 0..* MS and
    heartRate 0..* MS and
    pulseOximetry 0..* MS and
    pediatricWeightForHeight 0..* MS and
    pediatricHeadOccipitalFrontalCircumference 0..* MS and
    pediatricBMIForAge 0..* MS and
    bodyTemperature 0..* MS and
    respiratoryRate 0..* MS
* section[vitalSignsSection].entry[bloodPressure] only Reference($us-core-blood-pressure)
* section[vitalSignsSection].entry[bloodPressure] ^short = "Blood Pressure Entries (USCDI Data Elements: Systolic Blood Pressure, Diastolic Blood Pressure)"
* section[vitalSignsSection].entry[bodyWeight] only Reference($us-core-body-weight)
* section[vitalSignsSection].entry[bodyWeight] ^short = "Body Weight Entries (USCDI Data Elements: Body Weight)"
* section[vitalSignsSection].entry[bodyHeight] only Reference($us-core-body-height)
* section[vitalSignsSection].entry[bodyHeight] ^short = "Body Height Entries (USCDI Data Elements: Body Height)"
* section[vitalSignsSection].entry[heartRate] only Reference($us-core-heart-rate)
* section[vitalSignsSection].entry[heartRate] ^short = "Heart Rate Entries (USCDI Data Elements: Heart Rate)"
* section[vitalSignsSection].entry[pulseOximetry] only Reference($us-core-pulse-oximetry)
* section[vitalSignsSection].entry[pulseOximetry] ^short = "Pulse Oximetry Entries (USCDI Data Elements: Pulse Oximetry)"
* section[vitalSignsSection].entry[pediatricWeightForHeight] only Reference($pediatric-weight-for-height)
* section[vitalSignsSection].entry[pediatricWeightForHeight] ^short = "Pediatric Weight For Height Entries (USCDI Data Elements: Pediatric Weight For Length Percentile (Birth to 36 months))"
* section[vitalSignsSection].entry[pediatricHeadOccipitalFrontalCircumference] only Reference($head-occipital-frontal-circumference-percentile)
* section[vitalSignsSection].entry[pediatricHeadOccipitalFrontalCircumference] ^short = "Pediatric Head Occipital Frontal Circumference Percentile Entries (USCDI Data Elements: Occipital Frontal Head Circumference Percentile (Birth to 36 months))"
* section[vitalSignsSection].entry[pediatricBMIForAge] only Reference($pediatric-bmi-for-age)
* section[vitalSignsSection].entry[pediatricBMIForAge] ^short = "Pediatric BMI For Age Entries (USCDI Data Elements: BMI Percentile (2-20 years old))"
* section[vitalSignsSection].entry[bodyTemperature] only Reference($us-core-body-temperature)
* section[vitalSignsSection].entry[bodyTemperature] ^short = "Body Temperature Entries (USCDI Data Elements: Body Temperature)"
* section[vitalSignsSection].entry[respiratoryRate] only Reference($us-core-respiratory-rate)
* section[vitalSignsSection].entry[respiratoryRate] ^short = "Respiratory Rate Entries (USCDI Data Elements: Respiratory Rate)"

// Social History Section (USCDI Data Class: Health Status/Assessments - Smoking Status, Patient Demographics/Information - Occupation, Occupation Industry)
* section[socialHistorySection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[socialHistorySection] ^extension.valueString = "Section"
* section[socialHistorySection] ^short = "Social History Section (USCDI Data Class: Health Status/Assessments - Smoking Status, Patient Demographics/Information - Occupation, Occupation Industry)"
* section[socialHistorySection] ^definition = "This section contains social history data that influence a patient’s physical, psychological or emotional health."
* section[socialHistorySection].code 1.. MS
* section[socialHistorySection].code = $loinc#29762-2
* section[socialHistorySection].code ^short = "Social History Section code"
* section[socialHistorySection].code ^definition = "Social History Section code"
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
* section[socialHistorySection].entry[smokingStatus] ^short = "Smoking Status Entries (USCDI Data Elements: Smoking Status)"
* section[socialHistorySection].entry[occupation] only Reference($us-core-observation-occupation)
* section[socialHistorySection].entry[occupation] ^short = "Occupation Entries (USCDI Data Elements: Occupation, Occupation Industry)"

// Medical Equipment Section (USCDI Data Class: Unique Device Identifier(s) for a Patient's Implantable Device(s))
* section[medicalEquipmentSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[medicalEquipmentSection] ^extension.valueString = "Section"
* section[medicalEquipmentSection] ^short = "Medical Equipment Section (USCDI Data Class: Unique Device Identifier(s) for a patient's implantable device(s))"
* section[medicalEquipmentSection] ^definition = "This section lists and describes all the patient's current implanted devices."
* section[medicalEquipmentSection].code 1.. MS
* section[medicalEquipmentSection].code = $loinc#46264-8
* section[medicalEquipmentSection].code ^short = "Medical Equipment Section code"
* section[medicalEquipmentSection].code ^definition = "Medical Equipment Section code"
* section[medicalEquipmentSection].text 1.. MS
* section[medicalEquipmentSection].text ^short = "Medical Equipment Section narrative"
* section[medicalEquipmentSection].text ^definition = "Medical Equipment Section narrative"
* section[medicalEquipmentSection].entry only Reference($us-core-implantable-device)
* section[medicalEquipmentSection].entry MS
* section[medicalEquipmentSection].entry ^short = "Implantable Device Entries (USCDI Data Elements: Unique Device Identifier(s) for a patient's implantable device(s))"

// Pregnancy Section (USCDI Data Class: Health Status/Assessments - Pregnancy Status)
* section[pregnancySection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[pregnancySection] ^extension.valueString = "Section"
* section[pregnancySection] ^short = "Pregnancy Section (USCDI Data Class: Health Status/Assessments - Pregnancy Status)"
* section[pregnancySection] ^definition = "This section contains pregnancy data"
* section[pregnancySection].code 1.. MS
* section[pregnancySection].code = $loinc#90767-5
* section[pregnancySection].code ^short = "Pregnancy Section code"
* section[pregnancySection].code ^definition = "Pregnancy Section code"
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
* section[pregnancySection].entry[pregnancyStatusObservation] ^short = "Pregnancy Status Entries (USCDI Data Elements: Pregnancy Status)"
* section[pregnancySection].entry[pregnancyIntent] only Reference($us-core-observation-pregnancyintent)
* section[pregnancySection].entry[pregnancyIntent] ^short = "Pregnancy Intent Entries (USCDI Data Elements: Pregnancy Status)"
