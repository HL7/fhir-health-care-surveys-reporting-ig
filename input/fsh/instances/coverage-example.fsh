// Coverage
Instance: coverage-example
InstanceOf: USCoreCoverageProfile
Title: "Coverage Example"
Description: "An example of a Coverage"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-coverage"
* status = #active
* policyHolder = Reference(Patient/patient-ledner)
* subscriber = Reference(Patient/patient-ledner)
* subscriberId = "XYZ123456789"
* beneficiary = Reference(Patient/patient-ledner)
* dependent = "0"
* relationship = http://terminology.hl7.org/CodeSystem/subscriber-relationship#self "Self"
* period.start = "2025-01-01"
* period.end = "2025-12-31"
* payor = Reference(organization-payer-bcbs)
* class[0].type = http://terminology.hl7.org/CodeSystem/coverage-class#group "Group"
* class[0].value = "ABC987"
* class[0].name = "Group Name"
* class[1].type = http://terminology.hl7.org/CodeSystem/coverage-class#plan "Plan"
* class[1].value = "HMO"
* class[1].name = "Health Maintenance Organization"
