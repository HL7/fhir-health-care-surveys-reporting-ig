Profile: HCSPlanDefinition
Parent: USPublicHealthPlanDefinition
Id: hcs-plandefinition
Title: "Health Care Surveys PlanDefinition"
Description: "Minimal PlanDefinition with multiple actions."

// A minimal status and publisher
* ^status = #draft
* ^publisher = "HL7 International - Public Health Work Group"

// 1) Define slicing on PlanDefinition.action
* action ^slicing.discriminator.type = #value
* action ^slicing.discriminator.path = "id"
* action ^slicing.ordered = false
* action ^slicing.rules = #open

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

* action[executeReportingWorkflow].id = "check-reportability"
* action[executeReportingWorkflow].description = "Execute reporting workflow action."

* action[createReport].id = "create-hcs-report"
* action[createReport].description = "Create HCS report action."

* action[validateReport].id = "validate-hcs-report"
* action[validateReport].description = "Validate HCS report action."

* action[submitHcsReport].id = "submit-hcs-report"
* action[submitHcsReport].description = "Submit HCS report action."
