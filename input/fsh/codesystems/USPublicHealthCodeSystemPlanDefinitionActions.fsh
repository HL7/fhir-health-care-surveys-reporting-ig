CodeSystem: USPublicHealthCodeSystemPlanDefinitionActions
Id: us-ph-codesystem-plandefinition-actions
Title: "US Public Health CodeSystem - PlanDefinition Actions"
Description: "The US Public Health PlanDefinition Actions CodeSystem contains codes for currently identified use cases for identifying actions in PlanDefinition."
* ^meta.versionId = "9"
* ^meta.lastUpdated = "2023-07-13T06:14:16.600Z"
* ^meta.profile = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-codesystem"
* ^version = "0.1.0"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Public Health Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/us/ph-library/ValueSet/us-ph-valueset-plandefinition-action"
* ^hierarchyMeaning = #is-a
* ^content = #complete
* #initiate-reporting-workflow "Initiate a reporting workflow" "Request the initiation of a reporting workflow for a patient for a specific context (e.g., encounter)."
* #execute-reporting-workflow "Execute a series of actions to accomplish reporting" "This is top level action that uses other defined actions to accomplish reporting for a specific context (e.g., encounter)."
* #execute-reporting-workflow #check-trigger-codes "Evaluate candidate patient's data against trigger codes to determine reportability" "Evaluate candidate patient's data against trigger codes to determine reportability."
* #execute-reporting-workflow #evaluate-condition "Evaluate condition to determine reportability" "Evaluate condition to determine reportability."
* #execute-reporting-workflow #evaluate-measure "Evaluate measure to determine reportability" "Evaluate measure to determine reportability."
* #execute-reporting-workflow #check-participant-registration "Evaluate participants in encounter for reportability" "Evaluate encounter participants such as patient, practitioner, organization on whether they have been selected for reportability."
* #execute-reporting-workflow #create-report "Create a Report containing Patient's data for patients who passed the check-reportability test" "Create a Report containing Patient's data for patients who passed the check-reportability test."
* #execute-reporting-workflow #validate-report "Validate Report against specified profiles and terminologies." "Validate Report against specified profiles and terminologies."
* #execute-reporting-workflow #submit-report "Submit the report to specified endpoint" "Submit the report to specified endpoint."
* #execute-reporting-workflow #deidentify-report "Deidentify the report before submitting the report" "Deidentify the report before submitting the report."
* #execute-reporting-workflow #anonymize-report "Anonymize the report before submitting the report" "Anonymize the report before submitting the report."
* #execute-reporting-workflow #pseudonymize-report "Pseudonymize the report before submitting the report" "Pseudonymize the report before submitting the report."
* #execute-reporting-workflow #encrypt-report "Encrypt the report before submitting the report" "Encrypt the report before submitting the report."
* #execute-reporting-workflow #complete-reporting "Complete reporting for the patient" "Complete the reporting for the patient, after which no further reports will be sent for a specific context (e.g., Encounter)."
* #execute-reporting-workflow #extract-research-data "Extract data from an EHR for one or more patients." "Extract data from an EHR for one or more patients for research purposes."
* #terminate-reporting-workflow "Terminate a reporting workflow" "Request the initiation of terminating a reporting workflow."
* #terminate-reporting-workflow #cancel-report "Cancel an already submitted report" "Cancel an already submitted report."
* #report-chronic-disease-surveillance "Report Chronic Disease Surveillance report" "This action represents the reporting of a Chronic Disease Surveillance report."