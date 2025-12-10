Instance: health-care-surveys-reporting-data-source
InstanceOf: CapabilityStatement
Title: "Health Care Surveys EHR Capability Statement"
Description: "This profile defines the expected capabilities of the ''EHR'' actor when conforming to the Health Care Surveys Content Implementation Guide.     This role is responsible for allowing creation, modification and deletion of Subscriptions and allows searching and retrieval of resources using US Core APIs."
Usage: #definition
* extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* extension.valueCode = #pher
* url = "http://hl7.org/fhir/us/health-care-surveys-reporting/CapabilityStatement/health-care-surveys-reporting-data-source"
* version = "1.0.1"
* name = "HealthcareSurveysReportingEHRCapabilityStatement"
* title = "Health Care Surveys EHR Capability Statement"
* status = #active
* date = "2020-12-06"
* publisher = "HL7 International - Public Health Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* description = "This profile defines the expected capabilities of the ''EHR'' actor when conforming to the Health Care Surveys Content Implementation Guide.     This role is responsible for allowing creation, modification and deletion of Subscriptions and allows searching and retrieval of resources using US Core APIs."
* jurisdiction = urn:iso:std:iso:3166#US
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* rest.mode = #server
* rest.documentation = "The focus of the EHR is to allow creation, modification and deletion of Subscriptions and allows searching and retrieval of resources using US Core APIs. "
* rest.security.description = "Implementations must meet the general security requirements documented in the security section of the implementation guide."
* rest.resource.type = #Subscription
* rest.resource.interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource.interaction[=].extension.valueCode = #SHALL
* rest.resource.interaction[=].code = #read
* rest.resource.interaction[=].documentation = "Allows retrieval of a specific Subscription instance."
* rest.resource.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource.interaction[=].extension.valueCode = #SHALL
* rest.resource.interaction[=].code = #create
* rest.resource.interaction[=].documentation = "Allows creation of a Subscription resource instance."
* rest.resource.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource.interaction[=].extension.valueCode = #SHALL
* rest.resource.interaction[=].code = #update
* rest.resource.interaction[=].documentation = "Allows update of a Subscription resource instance."
* rest.resource.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource.interaction[=].extension.valueCode = #SHALL
* rest.resource.interaction[=].code = #delete
* rest.resource.interaction[=].documentation = "Allows deletion of a Subscription resource instance."