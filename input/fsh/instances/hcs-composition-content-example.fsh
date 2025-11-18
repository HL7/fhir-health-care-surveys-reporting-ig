Instance: hcs-composition-content-example
InstanceOf: HealthCareSurveysComposition
Usage: #inline

* identifier.value = "c03eab8c-11e8-4d0c-ad2a-b385395e27db"
* status = #final
* type = $loinc#75619-7
* subject = Reference(Patient/patient-ledner)
* encounter = Reference(Encounter/encounter-ambulatory) "Ambulatory Office Visit"
* date = "2023-01-02T22:13:23Z"
* author = Reference(Practitioner/practitioner-nichols) "Nicholas Joseph"
* title = "National Health Care Surveys report"

/* Reason for Visit Section (reasonForVisitSection) */
* section[reasonForVisitSection].title = "Reason for Visit Section"
* section[reasonForVisitSection].code = $loinc#29299-5 "Reason for visit Narrative"
* section[reasonForVisitSection].text.status = #generated
* section[reasonForVisitSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Reason for Visit: Bad cough</p>
</div>
"""

/* Problems Section (problemSection) */
* section[problemSection].title = "Problems Section"
* section[problemSection].code = $loinc#11450-4 "Problem list - Reported"
* section[problemSection].text.status = #generated
* section[problemSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Single liveborn, born in hospital</p>
</div>
"""
* section[problemSection].entry[problemsHealthConcerns] = Reference(Condition/condition-problem)

/* Allergies Section (allergiesSection) */
* section[allergiesSection].title = "Allergies Section"
* section[allergiesSection].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[allergiesSection].text.status = #generated
* section[allergiesSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Allergy to Sulfonide</p>
</div>
"""
* section[allergiesSection].entry = Reference(AllergyIntolerance/allergyintolerance-sulfonamide)

/* Medications Section (medicationsSection) */
* section[medicationsSection].title = "Medications Section"
* section[medicationsSection].code = $loinc#10160-0 "History of Medication use Narrative"
* section[medicationsSection].text.status = #generated
* section[medicationsSection].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Taking Lantus
</div>
"""
* section[medicationsSection].entry[medicationAdministration] = Reference(medicationadministration-example)

