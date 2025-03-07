Instance: example-of-coverage
InstanceOf: USCoreCoverageProfile
Title: "Coverage Example 1"
Description: "Coverage Example 1"
Usage: #example
* language = #en-US
* identifier.type = $v2-0203#MB "Member Number"
* identifier.type.text = "An identifier for the insured of an insurance policy (this insured always has a subscriber), usually assigned by the insurance carrier."
* identifier.system = "https://www.upmchealthplan.com/fhir/memberidentifier"
* identifier.value = "88800933501"
* identifier.assigner = Reference(Payer2) "UPMC Health Plan"
* status = #active
* policyHolder = Reference(1-of-Patient)
* subscriber = Reference(1-of-Patient)
* subscriberId = "888009335"
* beneficiary = Reference(1-of-Patient)
* dependent = "01"
* relationship = $subscriber-relationship#self
* relationship.text = "Self"
* period.start = "2020-01-01"
* payor = Reference(Payer2) "UPMC Health Plan"
* class[0].type = $coverage-class#group "Group"
* class[=].type.text = "An employee group"
* class[=].value = "MCHMO1"
* class[=].name = "MEDICARE HMO PLAN"
* class[+].type = $coverage-class#plan "Plan"
* class[=].type.text = "A specific suite of benefits."
* class[=].value = "GR5"
* class[=].name = "GR5-HMO DEDUCTIBLE"
* network = "GR5-HMO DEDUCTIBLE"