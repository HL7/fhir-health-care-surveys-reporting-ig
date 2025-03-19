Profile: HCSPlanDefinition
Parent: USPublicHealthPlanDefinition
Id: hcs-plandefinition
Title: "Health Care Surveys PlanDefinition"
Description: "This PlanDefinition profile defines the logic and rules around determining: whether or not data from an encounter is reportable to National Center for Health Statistics (NCHS)."

// A minimal status and publisher
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #pher
* ^version = "1.0.1"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 International - Public Health Work Group"
* ^date = "2023-06-01"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
* . ^short = "Health Care Surveys Knowledge Artifact"
* . ^definition = "This PlanDefinition profile defines the logic and rules around determining: whether or not data from an encounter is reportable to National Center for Health Statistics (NCHS)."
* . MS

// 1) Define slicing on PlanDefinition.action
* action ^slicing.discriminator.type = #value
* action ^slicing.discriminator.path = "id"
* action ^slicing.ordered = true
* action ^slicing.rules = #open
//* action min = 5

* action.code MS
* action.code 0..1
* action.code from $us-ph-plandefinition-actions-valueset (extensible)

// 2) Define slices for your five actions
* action contains
    startWorkflow 1..1 and
    executeReportingWorkflow 1..1 and
    createReport 1..1 and
    validateReport 1..1 and
    submitHcsReport 1..1

// 3) Minimal rules for each slice
* action[startWorkflow].id = "start-workflow"
* action[startWorkflow].description = "Start the workflow action."

* action[startWorkflow].textEquivalent 1..1 MS
* action[startWorkflow].textEquivalent = "Start the reporting workflow in response to an encounter-end event" (exactly)
* action[startWorkflow].textEquivalent ^short = "Text equivalent of the start workflow action."
* action[startWorkflow].textEquivalent ^definition = "Text equivalent of the start workflow action."

* action[startWorkflow].code 1..1 MS
* action[startWorkflow].code ^short = "Code for the start action."
* action[startWorkflow].code ^definition = "The US-PH-PlanDefinition-Action code for the start action."
* action[startWorkflow].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#initiate-reporting-workflow

* action[startWorkflow].trigger 1..* MS
* action[startWorkflow].trigger ^short = "When the start action should be triggered."
* action[startWorkflow].trigger ^definition = "When the start action should be triggered."

* action[startWorkflow].trigger.extension contains http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-named-eventtype-extension named namedEventType 0..1 MS
* action[startWorkflow].trigger.extension[namedEventType] ^short = "Indicates the types of named events to subscribe to from the EHR."
* action[startWorkflow].trigger.extension[namedEventType] ^definition = "Indicates the types of named events to subscribe to from the EHR."

* action[startWorkflow].trigger.type = #named-event (exactly)

* action[startWorkflow].trigger.name = "encounter-end" (exactly)
* action[startWorkflow].trigger.name ^definition = "The name of the event, encounter-end in this case. For any action invoked as a result of this trigger, the triggering encounter is accessible via the context variable `%encounter`"

* action[startWorkflow].relatedAction 1..1 MS
* action[startWorkflow].relatedAction.actionId = "check-reportability" (exactly)
* action[startWorkflow].relatedAction.relationship = #before-start (exactly)
* action[startWorkflow].relatedAction.offsetDuration 0..1
* action[startWorkflow].relatedAction.offsetDuration ^example.label = "Wait 72 hour before next action."
* action[startWorkflow].relatedAction.offsetDuration ^example.valueDuration.value = 72
* action[startWorkflow].relatedAction.offsetDuration ^example.valueDuration.unit = "h"

// Execute Reporting Workflow Action
* action[executeReportingWorkflow].id = "check-reportability"
* action[executeReportingWorkflow].description = "Execute reporting workflow action."

* action[executeReportingWorkflow].code 1..1 MS
* action[executeReportingWorkflow].code ^short = "Code for the execute-reporting-workflow action."
* action[executeReportingWorkflow].code ^definition = "The US-PH-PlanDefinition-Action code for the execute-reporting-workflow action."
* action[executeReportingWorkflow].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#execute-reporting-workflow

* action[executeReportingWorkflow].action 
//min = 2
* action[executeReportingWorkflow].action ^slicing.discriminator.type = #value
* action[executeReportingWorkflow].action ^slicing.discriminator.path = "id"
* action[executeReportingWorkflow].action ^slicing.rules = #open

// Is Ambulatory Encounter Reportable Action
* action[executeReportingWorkflow].action contains isAmbulatoryEncounterReportable 1..1 MS
* action[executeReportingWorkflow].action[isAmbulatoryEncounterReportable].id 1..1 MS
* action[executeReportingWorkflow].action[isAmbulatoryEncounterReportable].id = "is-ambulatory-encounter-reportable" (exactly)

* action[executeReportingWorkflow].action[isAmbulatoryEncounterReportable].code 1..1
* action[executeReportingWorkflow].action[isAmbulatoryEncounterReportable].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#evaluate-condition

* action[executeReportingWorkflow].action[isAmbulatoryEncounterReportable].condition.kind = #applicability (exactly)

* action[executeReportingWorkflow].action[isAmbulatoryEncounterReportable].condition.expression 1..1 MS
* action[executeReportingWorkflow].action[isAmbulatoryEncounterReportable].condition.expression.language = #text/fhirpath (exactly)

* action[executeReportingWorkflow].action[isAmbulatoryEncounterReportable].input MS
* action[executeReportingWorkflow].action[isAmbulatoryEncounterReportable].input ^definition = "Defines input data requirements for the action. Required data is accessible via a context variable named `%[id]` using the `id` of the input data requirement"

* action[executeReportingWorkflow].action[isAmbulatoryEncounterReportable].input.id 1..1 MS
* action[executeReportingWorkflow].action[isAmbulatoryEncounterReportable].input.id ^definition = "The id of the input requirement, allowing the data to be referenced via a context variable named `%[id]`"

* action[executeReportingWorkflow].action[isAmbulatoryEncounterReportable].relatedAction.actionId = "create-hcs-report" (exactly)
* action[executeReportingWorkflow].action[isAmbulatoryEncounterReportable].relatedAction.relationship = #before-start (exactly)

// Is Inpatient Encounter Reportable Action
* action[executeReportingWorkflow].action contains isInpatientEncounterReportable 1..1 MS
* action[executeReportingWorkflow].action[isInpatientEncounterReportable].id 1..1 MS
* action[executeReportingWorkflow].action[isInpatientEncounterReportable].id = "is-inpatient-encounter-reportable" (exactly)

* action[executeReportingWorkflow].action[isInpatientEncounterReportable].code 1..1
* action[executeReportingWorkflow].action[isInpatientEncounterReportable].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#evaluate-condition

* action[executeReportingWorkflow].action[isInpatientEncounterReportable].condition.kind = #applicability (exactly)

* action[executeReportingWorkflow].action[isInpatientEncounterReportable].condition.expression 1..1 MS
* action[executeReportingWorkflow].action[isInpatientEncounterReportable].condition.expression.language = #text/fhirpath (exactly)

* action[executeReportingWorkflow].action[isInpatientEncounterReportable].input MS
* action[executeReportingWorkflow].action[isInpatientEncounterReportable].input ^definition = "Defines input data requirements for the action. Required data is accessible via a context variable named `%[id]` using the `id` of the input data requirement"

* action[executeReportingWorkflow].action[isInpatientEncounterReportable].input.id 1..1 MS
* action[executeReportingWorkflow].action[isInpatientEncounterReportable].input.id ^definition = "The id of the input requirement, allowing the data to be referenced via a context variable named `%[id]`"

* action[executeReportingWorkflow].action[isInpatientEncounterReportable].relatedAction.actionId = "create-hcs-report" (exactly)
* action[executeReportingWorkflow].action[isInpatientEncounterReportable].relatedAction.relationship = #before-start (exactly)

// Create Report Action
* action[createReport].id = "create-hcs-report"
* action[createReport].description = "Create HCS report action."

* action[createReport].code 1..1
* action[createReport].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#create-report

* action[createReport].input MS
* action[createReport].input ^definition = "Defines input data requirements for the action. Required data is accessible via a context variable named `%[id]` using the `id` of the input data requirement"

* action[createReport].input.id 1..1 MS
* action[createReport].input.id ^definition = "The id of the input requirement, allowing the data to be referenced via a context variable named `%[id]`"

* action[createReport].output MS
* action[createReport].output ^definition = "Defines output produced by the action. Required data is accessible via a context variable named `%[id]` using the `id` of the output data requirement"

* action[createReport].output.id 1..1 MS
* action[createReport].output.id ^definition = "The id of the output produced, allowing the data to be referenced via a context variable named `%[id]`"

* action[createReport].relatedAction.actionId = "validate-hcs-report" (exactly)
* action[createReport].relatedAction.relationship = #before-start (exactly)

// Validate Report Action
* action[validateReport].id = "validate-hcs-report"
* action[validateReport].description = "Validate HCS report action."

* action[validateReport].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#validate-report

* action[validateReport].input MS
* action[validateReport].input ^definition = "Defines input data requirements for the action. Required data is accessible via a context variable named `%[id]` using the `id` of the input data requirement"

* action[validateReport].input.id 1..1 MS
* action[validateReport].input.id ^definition = "The id of the input requirement, allowing the data to be referenced via a context variable named `%[id]`"

* action[validateReport].output MS
* action[validateReport].output ^definition = "Defines output produced by the action. Required data is accessible via a context variable named `%[id]` using the `id` of the output data requirement"

* action[validateReport].output.id 1..1 MS
* action[validateReport].output.id ^definition = "The id of the output produced, allowing the data to be referenced via a context variable named `%[id]`"

* action[validateReport].relatedAction.actionId = "submit-hcs-report" (exactly)
* action[validateReport].relatedAction.relationship = #before-start (exactly)

// Submit Report Action
* action[submitHcsReport].id = "submit-hcs-report"
* action[submitHcsReport].description = "Submit HCS report action."

* action[submitHcsReport].textEquivalent 1..1 MS
* action[submitHcsReport].textEquivalent = "Route and send HCS Report" (exactly)

* action[submitHcsReport].code = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#submit-report

* action[submitHcsReport].input MS
* action[submitHcsReport].input ^definition = "Defines input data requirements for the action. Required data is accessible via a context variable named `%[id]` using the `id` of the input data requirement"

* action[submitHcsReport].input.id 1..1 MS
* action[submitHcsReport].input.id ^definition = "The id of the input requirement, allowing the data to be referenced via a context variable named `%[id]`"