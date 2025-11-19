Instance: hcs-plandefinition-example
InstanceOf: HealthCareSurveysPlanDefinition
Title: "National Health Care Surveys PlanDefinition"
Description: "National Health Care Surveys PlanDefinition: Workflow Definition example"
Usage: #example
* extension[0].url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-receiver-address-extension"
* extension[=].valueReference.reference = "Endpoint/endpoint-pha-example"
* extension[+].url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-receiver-jwks-url-extension"
* extension[=].valueUrl = "http://example.org/jwks/123"
* extension[+].url = "http://hl7.org/fhir/us/ph-library/StructureDefinition/us-ph-data-encryption-algorithm-extension"
* extension[=].valueCode = #RSA384
* url = "https://build.fhir.org/ig/HL7/fhir-health-care-surveys-reporting-ig/PlanDefinition/hcs-plandefinition-example"
* version = "0.1"
* name = "PlanDefinitionNationalHealthCareSurveysExample"
* title = "PlanDefinition National Health Care Surveys Example"
* type = $plan-definition-type#workflow-definition "Workflow Definition"
* status = #active
* experimental = true
* date = "2025-07-31T12:32:29.858-05:00"
* publisher = "Example Publisher"
* description = "An example National Health Care Surveys PlanDefinition"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* jurisdiction.text = "United States of America"
* effectivePeriod.start = "2025-12-01"
* library = "http://example.org/fhir/Library/RuleFilters|1.0.0"
// ── Start‑workflow slice required by the profile ─────────────────────────
* action[startWorkflow].id            = "start-workflow"
* action[startWorkflow].description   = "Start the workflow action."
* action[startWorkflow].textEquivalent = "Start the reporting workflow in response to an encounter-end event"
* action[startWorkflow].code          = http://hl7.org/fhir/us/ph-library/CodeSystem/us-ph-codesystem-plandefinition-actions#initiate-reporting-workflow

// Trigger that satisfies invariant trd‑3
* action[startWorkflow].trigger[0].type = #named-event
* action[startWorkflow].trigger[0].name = "encounter-end"

// Relationship fixed in the profile (needed for 1..1 cardinality)
* action[startWorkflow].relatedAction.actionId   = "check-reportability"
* action[startWorkflow].relatedAction.relationship = #before-start

