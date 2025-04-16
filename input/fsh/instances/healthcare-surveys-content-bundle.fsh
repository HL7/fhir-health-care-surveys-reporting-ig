Instance: healthcare-surveys-content-bundle
InstanceOf: HealthcareSurveysContentBundle
Usage: #inline
* type = #collection
* timestamp = "2020-11-20T11:15:33-10:00"
* entry.fullUrl = "http://example.org/fhir/Composition/rep-composition-content-example"
* entry.resource.resourceType = "Composition"
* entry.resource.id = "rep-composition-content-example" 
* entry.resource.meta.profile = "http://hl7.org/fhir/us/health-care-surveys-reporting/StructureDefinition/hcs-composition"
* entry.resource.text.status = #extensions
* entry.resource.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b> Amy Shaw data for HCS </b></p></div>"
* entry.resource.identifier.value = "c03eab8c-11e8-4d0c-ad2a-b385395e27db"
* entry.resource.status = #final
* entry.resource.type = $loinc#75619-7
* entry.resource.subject.reference = "Patient/patient-ledner"
* entry.resource.subject.display = "Amy Shaw"
* entry.resource.encounter.reference = "Encounter/encounter-ambulatory"
* entry.resource.encounter.display = "Ambulatory Office Visit"
* entry.resource.date = "2023-01-02T22:13:23Z"
* entry.resource.author.reference = "Practitioner/practitioner-1"
* entry.resource.author.display = "Nicholas Joseph"
* entry.resource.title = "National Health Care Surveys report"
* entry.resource.section[0].title = "Reason for Visit Section"
* entry.resource.section[=].code = $loinc#29299-5 "Reason for visit Narrative"
* entry.resource.section[=].text.status = #generated
* entry.resource.section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n<p>Reason for Visit: Bad cough</p>\n</div>"
* entry.resource.section[+].title = "Problems Section"
* entry.resource.section[=].code = $loinc#11450-4 "Problem list - Reported"
* entry.resource.section[=].text.status = #generated
* entry.resource.section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n<p>Single liveborn, born in hospital</p></div>"
* entry.resource.section[=].entry.reference = "Condition/condition-problem"
* entry.resource.section[+].title = "Allergies Section"
* entry.resource.section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* entry.resource.section[=].text.status = #generated
* entry.resource.section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n<p>Allergy to Sulfonide</p></div>"
* entry.resource.section[=].entry.reference = "AllergyIntolerance/allergyintolerance-sulfonamide"
* entry.resource.section[+].title = "Medications Section"
* entry.resource.section[=].code = $loinc#10160-0 "History of Medication use Narrative"
* entry.resource.section[=].text.status = #generated
* entry.resource.section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n Taking Lantus </div>"
* entry.resource.section[=].entry.reference = "MedicationAdministration/medicationadministration-example"