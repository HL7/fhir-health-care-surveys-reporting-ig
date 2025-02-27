Instance: example-of-AllergyIntolerance
InstanceOf: AllergyIntolerance
Title: "AllergyIntolerance Example"
Description: "An example showing an AllergyIntolerance for HCS reporting."
Usage: #example
* id = "example"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* category = #medication
* criticality = #high
* code = $sct#387406002 "Sulfonamide (substance)"
* code.text = "sulfonamide antibacterial"
* patient = Reference(Patient/example) "Amy V. Shaw"
* reaction.manifestation = $sct#271807003 "skin rash"
* reaction.manifestation.text = "skin rash"
* reaction.severity = #mild