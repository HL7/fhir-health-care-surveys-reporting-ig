Instance: coverage-upmc
InstanceOf: USCoreCoverageProfile
Title: "Coverage Example 1"
Description: "Coverage Example 1"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-coverage"
* identifier.type = $v2-0203#MB "Member Number"
* identifier.type.text = "An identifier for the insured of an insurance policy (this insured always has a subscriber), usually assigned by the insurance carrier."
* identifier.system = "https://www.example.org/upmchealthplan.com/fhir/memberidentifier"
* identifier.value = "88800933501"
* identifier.assigner = Reference(organization-payer-upmc) "UPMC Health Plan"
* status = #active
* policyHolder = Reference(patient-ledner)
* subscriber = Reference(patient-ledner)
* subscriberId = "888009335"
* beneficiary = Reference(patient-ledner)
* dependent = "01"
* relationship = $subscriber-relationship#self
* relationship.text = "Self"
* period.start = "2020-01-01"
* payor = Reference(organization-payer-upmc) "UPMC Health Plan"
* class[0].type = $coverage-class#group "Group"
* class[=].type.text = "An employee group"
* class[=].value = "MCHMO1"
* class[=].name = "MEDICARE HMO PLAN"
* class[+].type = $coverage-class#plan "Plan"
* class[=].type.text = "A specific suite of benefits."
* class[=].value = "GR5"
* class[=].name = "GR5-HMO DEDUCTIBLE"
* network = "GR5-HMO DEDUCTIBLE"