Profile: HcsComposition
Parent: Composition
Id: hcs-composition
Title: "Health Care Survey Report Composition"
Description: "This Composition profile is used to organize the healthcare survey report content."
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #pher
* ^version = "1.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2025-01-19T06:17:31-07:00"
* ^publisher = "HL7 International - Public Health Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
* . MS
* . ^short = "Hcs Composition Profile"
* . ^definition = "The Health Care Survey Report Composition profile establishes the core elements, extensions, vocabularies and value sets for representing heath care survey report. "
* . ^isModifier = false
* identifier 1..1 MS
* identifier ^short = "Health Care Survey Report Composition identifier"
* identifier ^definition = "Health Care Survey Report Composition identifier. This is equivalent to ClinicalDocument.setId in CDA. The identifier of the containing Bundle is equivalent to ClinicalDocument.id in CDA. "
* status = #final (exactly)
* status MS
* type = $loinc#75619-7
* type MS
* type ^short = "Health Care Survey Report"
* type ^definition = "The type of this Composition is a Health Care Survey Report"
* subject 1.. MS
* subject only Reference($us-core-patient)
* subject ^short = "Patient who is the subject of the report."
* subject ^definition = "This Patient profile represents the subject of the healthcare survey report."
* subject ^isModifier = false
* encounter 1.. MS
* encounter only Reference($us-core-encounter)
* encounter ^short = "Encounter related to the public health event"
* encounter ^definition = "This Encounter profile represents the encounter related to the healthcare survey report."
* encounter ^isModifier = false
* date MS
* date ^isModifier = false
* author ..* MS
* author only Reference($us-core-practitionerrole or $us-core-practitioner or $us-core-organization or Device)
* author ^short = "The author(s) of the document"
* author ^definition = "It is possible to have multiple authors - especially in the case where the default author is the organization. Author information can contain the HDEA/BSA as a Device Author. "
* author ^isModifier = false
* title = "National Health Care Surveys report" (exactly)
* title MS
* section MS
* section ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension.valueString = "Section"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    sliceReasonForVisitSection 1..1 MS and
    sliceProblemSection 1..1 MS and
    sliceAllergiesSection 1..1 MS and
    sliceMedicationsAdministeredSection 0..1 MS and
    sliceAdmissionMedicationsSection 0..1 MS and
    sliceMedicationsSection 0..1 MS and
    sliceResultsSection 0..1 MS and
    sliceNotesSection 0..* MS and
    slicePlanOfTreatmentSection 0..1 MS and
    sliceImmunizationsSection 0..1 MS and
    sliceProceduresSection 0..1 MS and
    sliceVitalSignsSection 0..* MS and
    sliceSocialHistorySection 0..1 MS and
    sliceMedicalEquipmentSection 0..1 MS and
    sliceCareTeamSection 0..1 MS and
    sliceGoalsSection 0..1 MS and
    slicePregnancySection 0..1 MS and 
    sliceCoverageSection 0..1 MS 
* section[sliceReasonForVisitSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceReasonForVisitSection] ^extension.valueString = "Section"
* section[sliceReasonForVisitSection] ^short = "Reason for Visit Section"
* section[sliceReasonForVisitSection] ^definition = "This section records the reason for the patient's visit (the provider’s description of the reason for visit)."
* section[sliceReasonForVisitSection] ^isModifier = false
* section[sliceReasonForVisitSection].code 1.. MS
* section[sliceReasonForVisitSection].code = $loinc#29299-5
* section[sliceReasonForVisitSection].code ^short = "Reason for Visit code"
* section[sliceReasonForVisitSection].code ^definition = "Reason for Visit code"
* section[sliceReasonForVisitSection].code ^isModifier = false
* section[sliceReasonForVisitSection].text 1.. MS
* section[sliceReasonForVisitSection].text ^short = "Reason for Visit narrative"
* section[sliceReasonForVisitSection].text ^definition = "Reason for Visit narrative"
* section[sliceProblemSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceProblemSection] ^extension.valueString = "Section"
* section[sliceProblemSection] ^short = "Problem Section"
* section[sliceProblemSection] ^definition = "This section lists and describes all the patient's current problems on the maintained problem list."
* section[sliceProblemSection] ^isModifier = false
* section[sliceProblemSection].code 1.. MS
* section[sliceProblemSection].code = $loinc#11450-4
* section[sliceProblemSection].code ^short = "Problem Section code"
* section[sliceProblemSection].code ^definition = "Problem Section code"
* section[sliceProblemSection].code ^isModifier = false
* section[sliceProblemSection].text 1.. MS
* section[sliceProblemSection].text ^short = "Problem Section narrative"
* section[sliceProblemSection].text ^definition = "Problem Section narrative"
* section[sliceProblemSection].entry MS
* section[sliceProblemSection].entry ^slicing.discriminator.type = #profile
* section[sliceProblemSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceProblemSection].entry ^slicing.rules = #open

* section[sliceProblemSection].entry contains 
    sliceProblemsHealthConcerns 0..* MS and
    sliceEncounterDiagnosis 0..* MS

* section[sliceProblemSection].entry[sliceProblemsHealthConcerns] only Reference($us-core-condition-problems-health-concerns)
* section[sliceProblemSection].entry[sliceProblemsHealthConcerns] ^short = "Problems Health Concerns Entry"
* section[sliceProblemSection].entry[sliceProblemsHealthConcerns] ^isModifier = false

* section[sliceProblemSection].entry[sliceEncounterDiagnosis] only Reference($us-core-encounterdiagnosis)
* section[sliceProblemSection].entry[sliceEncounterDiagnosis] ^short = "Encounter Diagnosis Entry"
* section[sliceProblemSection].entry[sliceEncounterDiagnosis] ^definition = "References to Conditions that represent encounter diagnoses"
* section[sliceProblemSection].entry[sliceEncounterDiagnosis] ^isModifier = false
* section[sliceAllergiesSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceAllergiesSection] ^extension.valueString = "Section"
* section[sliceAllergiesSection] ^short = "Allergies Section"
* section[sliceAllergiesSection] ^definition = "This section lists and describes all the patient's current allergies on the maintained allergy list."
* section[sliceAllergiesSection] ^isModifier = false
* section[sliceAllergiesSection].code 1.. MS
* section[sliceAllergiesSection].code = $loinc#48765-2
* section[sliceAllergiesSection].code ^short = "Allergies Section code"
* section[sliceAllergiesSection].code ^definition = "Allergies Section code"
* section[sliceAllergiesSection].code ^isModifier = false
* section[sliceAllergiesSection].text 1.. MS
* section[sliceAllergiesSection].text ^short = "Allergies Section narrative"
* section[sliceAllergiesSection].text ^definition = "Allergies Section narrative"
* section[sliceAllergiesSection].entry only Reference($us-core-allergyintolerance)
* section[sliceAllergiesSection].entry MS
* section[sliceMedicationsAdministeredSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceMedicationsAdministeredSection] ^extension.valueString = "Section"
* section[sliceMedicationsAdministeredSection] ^short = "Medications Administered Section"
* section[sliceMedicationsAdministeredSection] ^definition = "The Medications Administered Section defines medications administered during the encounter."
* section[sliceMedicationsAdministeredSection] ^isModifier = false
* section[sliceMedicationsAdministeredSection].code 1.. MS
* section[sliceMedicationsAdministeredSection].code = $loinc#29549-3
* section[sliceMedicationsAdministeredSection].code ^short = "Medications Administered Section code"
* section[sliceMedicationsAdministeredSection].code ^definition = "Medications Administered Section code"
* section[sliceMedicationsAdministeredSection].code ^isModifier = false
* section[sliceMedicationsAdministeredSection].text 1.. MS
* section[sliceMedicationsAdministeredSection].text ^short = "Medications Administered Section narrative"
* section[sliceMedicationsAdministeredSection].text ^definition = "Medications Administered Section narrative"
* section[sliceMedicationsAdministeredSection].entry MS
* section[sliceMedicationsAdministeredSection].entry ^slicing.discriminator.type = #profile
* section[sliceMedicationsAdministeredSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceMedicationsAdministeredSection].entry ^slicing.rules = #open
* section[sliceMedicationsAdministeredSection].entry contains
    sliceMedicationAdministration 0..* MS and
    sliceMedicationReferences 0..* MS
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration] only Reference(HcsMedicationAdministration)
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration] ^short = "Medication Administration Entry"
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationAdministration] ^isModifier = false
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationReferences] only Reference($us-core-medication)
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationReferences] ^short = "Medication Reference Entries"
* section[sliceMedicationsAdministeredSection].entry[sliceMedicationReferences] ^isModifier = false
* section[sliceAdmissionMedicationsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceAdmissionMedicationsSection] ^extension.valueString = "Section"
* section[sliceAdmissionMedicationsSection] ^short = "Admission Medications Section"
* section[sliceAdmissionMedicationsSection] ^definition = "The Admissions Medications Section contains the medications taken by the patient prior to and at the time of admission to the facility."
* section[sliceAdmissionMedicationsSection] ^isModifier = false
* section[sliceAdmissionMedicationsSection].code 1.. MS
* section[sliceAdmissionMedicationsSection].code = $loinc#42346-7
* section[sliceAdmissionMedicationsSection].code ^short = "Admission Medications Section code"
* section[sliceAdmissionMedicationsSection].code ^definition = "Admission Medications Section code"
* section[sliceAdmissionMedicationsSection].code ^isModifier = false
* section[sliceAdmissionMedicationsSection].text 1.. MS
* section[sliceAdmissionMedicationsSection].text ^short = "Admission Medications Section narrative"
* section[sliceAdmissionMedicationsSection].text ^definition = "Admission Medications Section narrative"
* section[sliceAdmissionMedicationsSection].entry MS
* section[sliceAdmissionMedicationsSection].entry ^slicing.discriminator.type = #profile
* section[sliceAdmissionMedicationsSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceAdmissionMedicationsSection].entry ^slicing.rules = #open
* section[sliceAdmissionMedicationsSection].entry contains
    sliceMedicationAdministration 0..* MS and
    sliceMedicationRequest 0..* MS and
    sliceMedicationReferences 0..* MS
* section[sliceAdmissionMedicationsSection].entry[sliceMedicationAdministration] only Reference(HcsMedicationAdministration)
* section[sliceAdmissionMedicationsSection].entry[sliceMedicationAdministration] ^short = "Medication Administration Entry"
* section[sliceAdmissionMedicationsSection].entry[sliceMedicationAdministration] ^isModifier = false
* section[sliceAdmissionMedicationsSection].entry[sliceMedicationRequest] only Reference(HcsMedicationRequest)
* section[sliceAdmissionMedicationsSection].entry[sliceMedicationRequest] ^short = "Medication Request Entry"
* section[sliceAdmissionMedicationsSection].entry[sliceMedicationRequest] ^isModifier = false
* section[sliceAdmissionMedicationsSection].entry[sliceMedicationReferences] only Reference($us-core-medication)
* section[sliceAdmissionMedicationsSection].entry[sliceMedicationReferences] ^short = "Medication Reference Entries"
* section[sliceAdmissionMedicationsSection].entry[sliceMedicationReferences] ^isModifier = false
* section[sliceMedicationsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceMedicationsSection] ^extension.valueString = "Section"
* section[sliceMedicationsSection] ^short = "Medications Section"
* section[sliceMedicationsSection] ^definition = "The Medications Section contains a patient's current medications and pertinent medication history. At a minimum, the currently active medications are listed."
* section[sliceMedicationsSection] ^isModifier = false
* section[sliceMedicationsSection].code 1.. MS
* section[sliceMedicationsSection].code = $loinc#10160-0
* section[sliceMedicationsSection].code ^short = "Medications Section code"
* section[sliceMedicationsSection].code ^definition = "Medications Section code"
* section[sliceMedicationsSection].code ^isModifier = false
* section[sliceMedicationsSection].text 1.. MS
* section[sliceMedicationsSection].text ^short = "Medications Section narrative"
* section[sliceMedicationsSection].text ^definition = "Medications Section narrative"
* section[sliceMedicationsSection].entry MS
* section[sliceMedicationsSection].entry ^slicing.discriminator.type = #profile
* section[sliceMedicationsSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceMedicationsSection].entry ^slicing.rules = #open
* section[sliceMedicationsSection].entry contains
    sliceMedicationAdministration 0..* MS and
    sliceMedicationRequest 0..* MS and
    sliceMedicationDispense 0..* MS and
    sliceMedicationReferences 0..* MS
* section[sliceMedicationsSection].entry[sliceMedicationAdministration] only Reference(HcsMedicationAdministration)
* section[sliceMedicationsSection].entry[sliceMedicationAdministration] ^short = "Medication Administration Entry"
* section[sliceMedicationsSection].entry[sliceMedicationAdministration] ^isModifier = false
* section[sliceMedicationsSection].entry[sliceMedicationRequest] only Reference(HcsMedicationRequest)
* section[sliceMedicationsSection].entry[sliceMedicationRequest] ^short = "Medication Result Entry"
* section[sliceMedicationsSection].entry[sliceMedicationRequest] ^isModifier = false
* section[sliceMedicationsSection].entry[sliceMedicationDispense] only Reference($us-core-medicationdispense)
* section[sliceMedicationsSection].entry[sliceMedicationDispense] ^short = "Medication Dispense Entry"
* section[sliceMedicationsSection].entry[sliceMedicationDispense] ^isModifier = false
* section[sliceMedicationsSection].entry[sliceMedicationReferences] only Reference($us-core-medication)
* section[sliceMedicationsSection].entry[sliceMedicationReferences] ^short = "Medication Reference Entries"
* section[sliceMedicationsSection].entry[sliceMedicationReferences] ^isModifier = false

* section[sliceResultsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceResultsSection] ^extension.valueString = "Section"
* section[sliceResultsSection] ^short = "Results Section"
* section[sliceResultsSection] ^definition = "The Results Section contains observations of results generated by laboratories, imaging procedures, and other procedures. The scope includes observations such as hematology, chemistry, serology, virology, toxicology, microbiology, plain x-ray, ultrasound, CT, MRI, angiography, echocardiography, nuclear medicine, pathology, and procedure observations. The section often includes notable results such as abnormal values or relevant trends, and could contain all results for the period of time being documented.\n\nLaboratory results are typically generated by laboratories providing analytic services in areas such as chemistry, hematology, serology, histology, cytology, anatomic pathology, microbiology, and/or virology. These observations are based on analysis of specimens obtained from the patient and submitted to the laboratory. Imaging results are typically generated by a clinician reviewing the output of an imaging procedure, such as where a cardiologist reports the left ventricular ejection fraction based on the review of a cardiac echocardiogram.\n\nProcedure results are typically generated by a clinician to provide more granular information about component observations made during a procedure, such as where a gastroenterologist reports the size of a polyp observed during a colonoscopy.\n"
* section[sliceResultsSection] ^isModifier = false
* section[sliceResultsSection].code 1.. MS
* section[sliceResultsSection].code = $loinc#30954-2
* section[sliceResultsSection].code ^short = "Results Section code"
* section[sliceResultsSection].code ^definition = "Results Section code"
* section[sliceResultsSection].code ^isModifier = false
* section[sliceResultsSection].text 1.. MS
* section[sliceResultsSection].text ^short = "Results Section narrative"
* section[sliceResultsSection].text ^definition = "Results Section narrative"
* section[sliceResultsSection].entry MS
* section[sliceResultsSection].entry ^slicing.discriminator.type = #profile
* section[sliceResultsSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceResultsSection].entry ^slicing.rules = #open
* section[sliceResultsSection].entry contains
    sliceLabResultEntry 0..* MS and
    sliceDiagnosticResultEntry 0..* MS and
    sliceClinicalResultEntry 0..* MS and
    sliceScreeningAssessmentEntry 0..* MS and
    sliceQuestionnaireResponseEntry 0..* MS
* section[sliceResultsSection].entry[sliceLabResultEntry] only Reference($us-core-observation-lab)
* section[sliceResultsSection].entry[sliceLabResultEntry] ^short = "Lab Result Entries"
* section[sliceResultsSection].entry[sliceLabResultEntry] ^isModifier = false
* section[sliceResultsSection].entry[sliceDiagnosticResultEntry] only Reference($us-core-diagnosticreport-lab)
* section[sliceResultsSection].entry[sliceDiagnosticResultEntry] ^short = "Diagnostic Result Entries"
* section[sliceResultsSection].entry[sliceDiagnosticResultEntry] ^isModifier = false
* section[sliceResultsSection].entry[sliceClinicalResultEntry] only Reference($us-core-observation-clinical-result)
* section[sliceResultsSection].entry[sliceClinicalResultEntry] ^short = "Clinical Result Entries"
* section[sliceResultsSection].entry[sliceClinicalResultEntry] ^isModifier = false
* section[sliceResultsSection].entry[sliceScreeningAssessmentEntry] only Reference($us-core-observation-screening-assessment)
* section[sliceResultsSection].entry[sliceScreeningAssessmentEntry] ^short = "Screening Assessment Entries"
* section[sliceResultsSection].entry[sliceScreeningAssessmentEntry] ^isModifier = false
//* removed us-core-questionnaireresponse
* section[sliceResultsSection].entry[sliceQuestionnaireResponseEntry] only Reference($us-core-questionnaireresponse)
* section[sliceResultsSection].entry[sliceQuestionnaireResponseEntry] ^short = "Questionnaire Response Entries"
* section[sliceResultsSection].entry[sliceQuestionnaireResponseEntry] ^isModifier = false

* section[sliceNotesSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceNotesSection] ^extension.valueString = "Section"
* section[sliceNotesSection] ^short = "Clinical and Diagnostic Reports Section"
* section[sliceNotesSection] ^definition = "The Notes Section contains clinical notes and diagnostic reports."
* section[sliceNotesSection] ^isModifier = false
* section[sliceNotesSection].code 1.. MS
* section[sliceNotesSection].code = $loinc#28650-0
* section[sliceNotesSection].code ^short = "Clinical Notes Section code"
* section[sliceNotesSection].code ^definition = "Clinical Notes Section code"
* section[sliceNotesSection].code ^isModifier = false
* section[sliceNotesSection].text 1.. MS
* section[sliceNotesSection].text ^short = "Notes Section narrative"
* section[sliceNotesSection].text ^definition = "Notes Section narrative"
* section[sliceNotesSection].entry MS
* section[sliceNotesSection].entry ^slicing.discriminator.type = #profile
* section[sliceNotesSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceNotesSection].entry ^slicing.rules = #open
* section[sliceNotesSection].entry contains
    sliceDocumentReferenceEntry 0..* MS and
    sliceDiagnosticReportEntry 0..* MS
* section[sliceNotesSection].entry[sliceDocumentReferenceEntry] only Reference($us-core-documentreference)
* section[sliceNotesSection].entry[sliceDocumentReferenceEntry] ^short = "Document Reference Entries"
* section[sliceNotesSection].entry[sliceDocumentReferenceEntry] ^isModifier = false
* section[sliceNotesSection].entry[sliceDiagnosticReportEntry] only Reference($us-core-diagnosticreport-note)
* section[sliceNotesSection].entry[sliceDiagnosticReportEntry] ^short = "Diagnostic Report Entries"
* section[sliceNotesSection].entry[sliceDiagnosticReportEntry] ^isModifier = false
* section[slicePlanOfTreatmentSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[slicePlanOfTreatmentSection] ^extension.valueString = "Section"
* section[slicePlanOfTreatmentSection] ^short = "Plan of Treatment Section"
* section[slicePlanOfTreatmentSection] ^definition = "This section, contains data that define pending orders, interventions, encounters, services, and procedures for the patient. It is limited to prospective, unfulfilled, or incomplete orders and requests only. All active, incomplete, or pending orders, appointments, referrals, procedures, services, or any other pending event of clinical significance to the current care of the patient should be listed. "
* section[slicePlanOfTreatmentSection] ^isModifier = false
* section[slicePlanOfTreatmentSection].code 1.. MS
* section[slicePlanOfTreatmentSection].code = $loinc#18776-5
* section[slicePlanOfTreatmentSection].code ^short = "Plan of care note"
* section[slicePlanOfTreatmentSection].code ^definition = "Plan of Treatment code"
* section[slicePlanOfTreatmentSection].code ^isModifier = false
* section[slicePlanOfTreatmentSection].text 1.. MS
* section[slicePlanOfTreatmentSection].text ^short = "Plan of Treatment narrative"
* section[slicePlanOfTreatmentSection].text ^definition = "Plan of Treatment narrative"
* section[slicePlanOfTreatmentSection].entry MS
* section[slicePlanOfTreatmentSection].entry ^slicing.discriminator.type = #profile
* section[slicePlanOfTreatmentSection].entry ^slicing.discriminator.path = "resolve()"
* section[slicePlanOfTreatmentSection].entry ^slicing.rules = #open
* section[slicePlanOfTreatmentSection].entry contains
    sliceMedicationRequest 0..* MS and
    sliceMedicationReferences 0..* MS and
    sliceProcedureOrders 0..* MS and
    sliceCarePlanEntries 0..* MS
* section[slicePlanOfTreatmentSection].entry[sliceMedicationRequest] only Reference($us-core-medicationrequest)
* section[slicePlanOfTreatmentSection].entry[sliceMedicationRequest] ^short = "Medication Request Entries"
* section[slicePlanOfTreatmentSection].entry[sliceMedicationRequest] ^isModifier = false
* section[slicePlanOfTreatmentSection].entry[sliceMedicationReferences] only Reference($us-core-medication)
* section[slicePlanOfTreatmentSection].entry[sliceMedicationReferences] ^short = "Medication Reference Entries"
* section[slicePlanOfTreatmentSection].entry[sliceMedicationReferences] ^isModifier = false
* section[slicePlanOfTreatmentSection].entry[sliceProcedureOrders] only Reference($us-core-servicerequest)
* section[slicePlanOfTreatmentSection].entry[sliceProcedureOrders] ^short = "Procedure Order Entries"
* section[slicePlanOfTreatmentSection].entry[sliceProcedureOrders] ^isModifier = false
* section[slicePlanOfTreatmentSection].entry[sliceCarePlanEntries] only Reference($us-core-careplan)
* section[slicePlanOfTreatmentSection].entry[sliceCarePlanEntries] ^short = "CarePlan Entries"
* section[sliceImmunizationsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceImmunizationsSection] ^extension.valueString = "Section"
* section[sliceImmunizationsSection] ^short = "Immunizations Section"
* section[sliceImmunizationsSection] ^definition = "The Immunizations Section defines a patient's current immunization status and pertinent immunization history. The primary use case for the Immunization Section is to enable communication of a patient's immunization status. The section should include current immunization status, and may contain the entire immunization history that is relevant to the period of time being summarized."
* section[sliceImmunizationsSection] ^isModifier = false
* section[sliceImmunizationsSection].code 1.. MS
* section[sliceImmunizationsSection].code = $loinc#11369-6
* section[sliceImmunizationsSection].code ^short = "Immunizations code"
* section[sliceImmunizationsSection].code ^definition = "Immunizations code"
* section[sliceImmunizationsSection].code ^isModifier = false
* section[sliceImmunizationsSection].text 1.. MS
* section[sliceImmunizationsSection].text ^short = "Immunizations narrative"
* section[sliceImmunizationsSection].text ^definition = "Immunizations narrative"
* section[sliceImmunizationsSection].entry only Reference($us-core-immunization)
* section[sliceImmunizationsSection].entry MS
* section[sliceImmunizationsSection].entry ^isModifier = false
* section[sliceProceduresSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceProceduresSection] ^extension.valueString = "Section"
* section[sliceProceduresSection] ^short = "This section describes all interventional, surgical, diagnostic, or therapeutic procedures or treatments pertinent to the patient historically at the time the document is generated."
* section[sliceProceduresSection] ^definition = "This section describes all interventional, surgical, diagnostic, or therapeutic procedures or treatments pertinent to the patient historically at the time the document is generated. The section should include notable procedures, but can contain all procedures for the period of time being summarized."
* section[sliceProceduresSection] ^isModifier = false
* section[sliceProceduresSection].code 1.. MS
* section[sliceProceduresSection].code = $loinc#47519-4
* section[sliceProceduresSection].code ^short = "Procedures Section code"
* section[sliceProceduresSection].code ^definition = "Procedures Section code"
* section[sliceProceduresSection].code ^isModifier = false
* section[sliceProceduresSection].text 1.. MS
* section[sliceProceduresSection].text ^short = "Procedures Section narrative"
* section[sliceProceduresSection].text ^definition = "Procedures Section narrative"
* section[sliceProceduresSection].entry only Reference($us-core-procedure)
* section[sliceProceduresSection].entry MS
* section[sliceProceduresSection].entry ^isModifier = false
* section[sliceVitalSignsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceVitalSignsSection] ^extension.valueString = "Section"
* section[sliceVitalSignsSection] ^short = "Vital Signs Section"
* section[sliceVitalSignsSection] ^definition = "The Vital Signs Section contains relevant vital signs for the report. The section should include notable vital signs such as the most recent, maximum and/or minimum, baseline, or relevant trends. Vital signs are represented in the same way as other results, but are aggregated into their own section to follow clinical conventions."
* section[sliceVitalSignsSection] ^isModifier = false
* section[sliceVitalSignsSection].code 1.. MS
* section[sliceVitalSignsSection].code = $loinc#8716-3
* section[sliceVitalSignsSection].code ^short = "Vital Signs code"
* section[sliceVitalSignsSection].code ^definition = "Vital Signs code"
* section[sliceVitalSignsSection].code ^isModifier = false
* section[sliceVitalSignsSection].text 1.. MS
* section[sliceVitalSignsSection].text ^short = "Vital Signs narrative"
* section[sliceVitalSignsSection].text ^definition = "Vital Signs narrative"
//* section[sliceVitalSignsSection].entry only Reference($us-core-vital-signs)
* section[sliceVitalSignsSection].entry MS
* section[sliceVitalSignsSection].entry ^slicing.discriminator.type = #profile
* section[sliceVitalSignsSection].entry ^slicing.discriminator.path = "resolve()"
* section[sliceVitalSignsSection].entry ^slicing.rules = #open
* section[sliceVitalSignsSection].entry contains
    sliceBloodPressureEntry 0..* MS and
    sliceBodyWeightEntry 0..* MS and
    sliceBodyHeightEntry 0..* MS and
    sliceHeartRateEntry 0..* MS and
    slicePulseOximetryEntry 0..* MS and
    sliceBMIEntry 0..* MS and
    slicePediatricWeightForHeightEntry 0..* MS and
    slicePediatricHeadOccipitalFrontalCircumferenceEntry 0..* MS and
    slicePediatricBMIForAgeEntry 0..* MS and
    sliceBodyTemperatureEntry 0..* MS and
    sliceHeadCircumferenceEntry 0..* MS and
    sliceRespiratoryRateEntry 0..* MS
* section[sliceVitalSignsSection].entry[sliceBloodPressureEntry] only Reference($us-core-blood-pressure)
* section[sliceVitalSignsSection].entry[sliceBloodPressureEntry] ^short = "Blood Pressure Entries"
* section[sliceVitalSignsSection].entry[sliceBloodPressureEntry] ^isModifier = false
* section[sliceVitalSignsSection].entry[sliceBodyWeightEntry] only Reference($us-core-body-weight)
* section[sliceVitalSignsSection].entry[sliceBodyWeightEntry] ^short = "Body Weight Entries"
* section[sliceVitalSignsSection].entry[sliceBodyWeightEntry] ^isModifier = false
* section[sliceVitalSignsSection].entry[sliceBodyHeightEntry] only Reference($us-core-body-height)
* section[sliceVitalSignsSection].entry[sliceBodyHeightEntry] ^short = "Body Height Entries"
* section[sliceVitalSignsSection].entry[sliceBodyHeightEntry] ^isModifier = false
* section[sliceVitalSignsSection].entry[sliceHeartRateEntry] only Reference($us-core-heart-rate)
* section[sliceVitalSignsSection].entry[sliceHeartRateEntry] ^short = "Heart Rate Entries"
* section[sliceVitalSignsSection].entry[sliceHeartRateEntry] ^isModifier = false
* section[sliceVitalSignsSection].entry[slicePulseOximetryEntry] only Reference($us-core-pulse-oximetry)
* section[sliceVitalSignsSection].entry[slicePulseOximetryEntry] ^short = "Pulse Oximetry Entries"
* section[sliceVitalSignsSection].entry[slicePulseOximetryEntry] ^isModifier = false
* section[sliceVitalSignsSection].entry[sliceBMIEntry] only Reference($us-core-bmi)
* section[sliceVitalSignsSection].entry[sliceBMIEntry] ^short = "BMI Entries"
* section[sliceVitalSignsSection].entry[sliceBMIEntry] ^isModifier = false
* section[sliceVitalSignsSection].entry[slicePediatricWeightForHeightEntry] only Reference($pediatric-weight-for-height)
* section[sliceVitalSignsSection].entry[slicePediatricWeightForHeightEntry] ^short = "Pediatric Weight For Height Entries"
* section[sliceVitalSignsSection].entry[slicePediatricWeightForHeightEntry] ^isModifier = false
* section[sliceVitalSignsSection].entry[slicePediatricHeadOccipitalFrontalCircumferenceEntry] only Reference($head-occipital-frontal-circumference-percentile)
* section[sliceVitalSignsSection].entry[slicePediatricHeadOccipitalFrontalCircumferenceEntry] ^short = "Pediatric Head Occipital Frontal Circumference Percentile Entries"
* section[sliceVitalSignsSection].entry[slicePediatricHeadOccipitalFrontalCircumferenceEntry] ^isModifier = false
* section[sliceVitalSignsSection].entry[slicePediatricBMIForAgeEntry] only Reference($pediatric-bmi-for-age)
* section[sliceVitalSignsSection].entry[slicePediatricBMIForAgeEntry] ^short = "Pediatric BMI For Age Entries"
* section[sliceVitalSignsSection].entry[slicePediatricBMIForAgeEntry] ^isModifier = false
* section[sliceVitalSignsSection].entry[sliceBodyTemperatureEntry] only Reference($us-core-body-temperature)
* section[sliceVitalSignsSection].entry[sliceBodyTemperatureEntry] ^short = "Body Temperature Entries"
* section[sliceVitalSignsSection].entry[sliceBodyTemperatureEntry] ^isModifier = false
* section[sliceVitalSignsSection].entry[sliceHeadCircumferenceEntry] only Reference($us-core-head-circumference)
* section[sliceVitalSignsSection].entry[sliceHeadCircumferenceEntry] ^short = "Head Circumference Entries"
* section[sliceVitalSignsSection].entry[sliceHeadCircumferenceEntry] ^isModifier = false
* section[sliceVitalSignsSection].entry[sliceRespiratoryRateEntry] only Reference($us-core-respiratory-rate)
* section[sliceVitalSignsSection].entry[sliceRespiratoryRateEntry] ^short = "Respiratory Rate Entries"
* section[sliceVitalSignsSection].entry[sliceRespiratoryRateEntry] ^isModifier = false
* section[sliceSocialHistorySection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceSocialHistorySection] ^extension.valueString = "Section"
* section[sliceSocialHistorySection] ^short = "Social History Section"
* section[sliceSocialHistorySection] ^definition = "This section contains social history data that influence a patient’s physical, psychological or emotional health such as occupation, home environment, travel history, and disability status."
* section[sliceSocialHistorySection] ^isModifier = false
* section[sliceSocialHistorySection].code 1.. MS
* section[sliceSocialHistorySection].code = $loinc#29762-2
* section[sliceSocialHistorySection].code ^short = "Social History Section code"
* section[sliceSocialHistorySection].code ^definition = "Social History Section code"
* section[sliceSocialHistorySection].code ^isModifier = false
* section[sliceSocialHistorySection].text 1.. MS
* section[sliceSocialHistorySection].text ^short = "Social History Section narrative"
* section[sliceSocialHistorySection].text ^definition = "Social History Section narrative"
* section[sliceSocialHistorySection].entry 0..1 MS
* section[sliceSocialHistorySection].entry only Reference($us-core-smokingstatus)
* section[sliceMedicalEquipmentSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceMedicalEquipmentSection] ^extension.valueString = "Section"
* section[sliceMedicalEquipmentSection] ^short = "Medical Equipment Section"
* section[sliceMedicalEquipmentSection] ^definition = "This section lists and describes all the patient's current implanted devices."
* section[sliceMedicalEquipmentSection] ^isModifier = false
* section[sliceMedicalEquipmentSection].code 1.. MS
* section[sliceMedicalEquipmentSection].code = $loinc#46264-8
* section[sliceMedicalEquipmentSection].code ^short = "Medical Equipment Section code"
* section[sliceMedicalEquipmentSection].code ^definition = "Medical Equipment Section code"
* section[sliceMedicalEquipmentSection].code ^isModifier = false
* section[sliceMedicalEquipmentSection].text 1.. MS
* section[sliceMedicalEquipmentSection].text ^short = "Medical Equipment Section narrative"
* section[sliceMedicalEquipmentSection].text ^definition = "Medical Equipment Section narrative"
* section[sliceMedicalEquipmentSection].entry only Reference($us-core-implantable-device)
* section[sliceMedicalEquipmentSection].entry MS
* section[sliceCareTeamSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceCareTeamSection] ^extension.valueString = "Section"
* section[sliceCareTeamSection] ^short = "Care Team Section"
* section[sliceCareTeamSection] ^definition = "This section lists and describes all the patient's current care team members."
* section[sliceCareTeamSection] ^isModifier = false
* section[sliceCareTeamSection].code 1.. MS
* section[sliceCareTeamSection].code = $loinc#85847-2
* section[sliceCareTeamSection].code ^short = "Care Team Section code"
* section[sliceCareTeamSection].code ^definition = "Care Team Section code"
* section[sliceCareTeamSection].code ^isModifier = false
* section[sliceCareTeamSection].text 1.. MS
* section[sliceCareTeamSection].text ^short = "Care Team Section narrative"
* section[sliceCareTeamSection].text ^definition = "Care Team Section narrative"
* section[sliceCareTeamSection].entry only Reference($us-core-careteam)
* section[sliceCareTeamSection].entry MS
* section[sliceGoalsSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceGoalsSection] ^extension.valueString = "Section"
* section[sliceGoalsSection] ^short = "Goals Section"
* section[sliceGoalsSection] ^definition = "This section lists and describes the patient's goals."
* section[sliceGoalsSection] ^isModifier = false
* section[sliceGoalsSection].code 1.. MS
* section[sliceGoalsSection].code = $loinc#61146-7
* section[sliceGoalsSection].code ^short = "Goals Section code"
* section[sliceGoalsSection].code ^definition = "Goals Section code"
* section[sliceGoalsSection].code ^isModifier = false
* section[sliceGoalsSection].text 1.. MS
* section[sliceGoalsSection].text ^short = "Goals Section narrative"
* section[sliceGoalsSection].text ^definition = "Goals Section narrative"
* section[sliceGoalsSection].entry only Reference($us-core-goal)
* section[sliceGoalsSection].entry MS
* section[slicePregnancySection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[slicePregnancySection] ^extension.valueString = "Section"
* section[slicePregnancySection] ^short = "Pregnancy Section"
* section[slicePregnancySection] ^definition = "This section contains pregnancy data"
* section[slicePregnancySection] ^isModifier = false
* section[slicePregnancySection].code 1.. MS
* section[slicePregnancySection].code = $loinc#90767-5
* section[slicePregnancySection].code ^short = "Pregnancy Section code"
* section[slicePregnancySection].code ^definition = "Pregnancy Section code"
* section[slicePregnancySection].code ^isModifier = false
* section[slicePregnancySection].text 1.. MS
* section[slicePregnancySection].text ^short = "Pregnancy Section narrative"
* section[slicePregnancySection].text ^definition = "Pregnancy Section narrative"
* section[slicePregnancySection].entry MS
* section[slicePregnancySection].entry ^slicing.discriminator.type = #profile
* section[slicePregnancySection].entry ^slicing.discriminator.path = "resolve()"
* section[slicePregnancySection].entry ^slicing.rules = #open
* section[slicePregnancySection].entry contains
    slicePregnancyStatusObservation 0..* MS and
    slicePregnancyIntent 0..* MS
* section[slicePregnancySection].entry[slicePregnancyStatusObservation] only Reference($us-core-observation-pregnancystatus)
* section[slicePregnancySection].entry[slicePregnancyStatusObservation] ^short = "Pregnancy Status Observation"
* section[slicePregnancySection].entry[slicePregnancyStatusObservation] ^definition = "Pregnancy Status Observation entry"
* section[slicePregnancySection].entry[slicePregnancyIntent] only Reference($us-core-observation-pregnancyintent)
* section[slicePregnancySection].entry[slicePregnancyIntent] ^short = "Pregnancy Intent"
* section[slicePregnancySection].entry[slicePregnancyIntent] ^definition = "Pregnancy Intent entry"
* section[sliceCoverageSection] ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sliceCoverageSection] ^extension.valueString = "Section"
* section[sliceCoverageSection] ^short = "Coverage Section"
* section[sliceCoverageSection] ^definition = "This section lists the patient's coverage."
* section[sliceCoverageSection] ^isModifier = false
* section[sliceCoverageSection].code 1.. MS
* section[sliceCoverageSection].code = $loinc#48768-6
* section[sliceCoverageSection].code ^short = "Coverage Section code"
* section[sliceCoverageSection].code ^definition = "Coverage Section code"
* section[sliceCoverageSection].code ^isModifier = false
* section[sliceCoverageSection].text 1.. MS
* section[sliceCoverageSection].text ^short = "Coverage Section narrative"
* section[sliceCoverageSection].text ^definition = "Coverage Section narrative"
* section[sliceCoverageSection].entry only Reference(USCoreCoverageProfile)
* section[sliceCoverageSection].entry MS