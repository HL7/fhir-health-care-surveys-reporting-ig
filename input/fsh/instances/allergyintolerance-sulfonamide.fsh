Instance: allergyintolerance-sulfonamide
InstanceOf: USCoreAllergyIntolerance
Title: "AllergyIntolerance Example"
Description: "An example showing an AllergyIntolerance for HCS reporting."
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* category = #medication
* criticality = #high
* code = $sct#387406002 "Sulfonamide (substance)"
* code.text = "sulfonamide antibacterial"
* patient = Reference(Patient/patient-ledner)
* reaction.manifestation = $sct#271807003 "skin rash"
* reaction.manifestation.text = "skin rash"
* reaction.severity = #mild