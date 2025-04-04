Instance: hcs-composition-content-example
InstanceOf: HcsComposition
Usage: #inline

* identifier.value = "c03eab8c-11e8-4d0c-ad2a-b385395e27db"
* status = #final
* type = $loinc#75619-7
* subject = Reference(Patient/example) "Amy Shaw"
* encounter = Reference(example-1) "Ambulatory Office Visit"
* date = "2023-01-02T22:13:23Z"
* author = Reference(Practitioner/1) "Nicholas Joseph"
* title = "National Health Care Surveys report"

/* Reason for Visit Section (sliceReasonForVisitSection) */
* section[sliceReasonForVisitSection].title = "Reason for Visit Section"
* section[sliceReasonForVisitSection].code = $loinc#29299-5 "Reason for visit Narrative"
* section[sliceReasonForVisitSection].text.status = #generated
* section[sliceReasonForVisitSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Reason for Visit: Bad cough</p>
</div>
"""

/* Problems Section (sliceProblemSection) */
* section[sliceProblemSection].title = "Problems Section"
* section[sliceProblemSection].code = $loinc#11450-4 "Problem list - Reported"
* section[sliceProblemSection].text.status = #generated
* section[sliceProblemSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Single liveborn, born in hospital</p>
</div>
"""
* section[sliceProblemSection].entry[sliceProblemsHealthConcerns] = Reference(Condition/example-of-Condition)

/* Allergies Section (sliceAllergiesSection) */
* section[sliceAllergiesSection].title = "Allergies Section"
* section[sliceAllergiesSection].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sliceAllergiesSection].text.status = #generated
* section[sliceAllergiesSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Allergy to Sulfonide</p>
</div>
"""
* section[sliceAllergiesSection].entry = Reference(AllergyIntolerance/example)

/* Medications Section (sliceMedicationsSection) */
* section[sliceMedicationsSection].title = "Medications Section"
* section[sliceMedicationsSection].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sliceMedicationsSection].text.status = #generated
* section[sliceMedicationsSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Taking Lantus
</div>
"""
* section[sliceMedicationsSection].entry[sliceMedicationAdministration] = Reference(medicationadministration-example)

