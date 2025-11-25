### Introduction

This profile is used to represent the clinical content present within a health care survey report.

### Sections and Population Criteria

The following sections and population criteria should be used to create the composition resource below.

* Patient: The patient who is the subject of the encounter
* Encounter: The encounter that was closed (Updated documentation has to be added to the encounter before saying it is closed)
* Conditions: Encounter diagnosis for the closed encounter; all Statuses except InActive; verificationStatus = Confirmed
* MedicationRequests: Medication requested during the encounter and status = Active and Completed; intent = order.
* MedicationAdministration: Medication administered during the encounter and status = active.
* Medications: Medications referenced by MedicationRequests and MedicationAdministration.
* Vital Signs: Vital signs for the encounter with status = final or amended.
* Allergies: Allergies associated with the patient with status = active; verification status= confirmed.
* Procedures: All interventional, surgical, diagnostic, or therapeutic procedures or treatments pertinent to the patient historically at the time the document is generated. 
* ServiceRequest: Procedures ordered during the encounter.
* Immunizations: Immunizations associated with the patient.
* LabResults: Results linked to the encounter or ordered during the encounter or results received during the encounter plus thresholds. (72 hours after the encounter close) and status = final and preliminary.
* Lab Reporting: Results linked to the encounter or ordered during the encounter or results received during the encounter plus thresholds. (72 hours after the encounter close) and status = final and preliminary 
* Diagnostic Report Notes: Results linked to the encounter or ordered during the encounter or results received during the encounter plus thresholds. (72 hours after the encounter close) and Status = final and preliminary. Imaging data is NOT to be sent.
* Clinical Notes: All notes created during the encounter.
* Care Team: Associated with the patient with status = active.
* CarePlan: Associated with the encounter with status = draft and active.
* Goals: status = proposed | planned | accepted | active.
* Smoking Status: Associated with the patient.
* Implantable Devices: Devices associated with the patient.
* Pregnancy Status: Associated with the patient.

The above data has to be populated by the implementers of the DataSource actor.
 
### USCDI Mappings

USCDI V3.1 mappings are noted in the Descriptions & Constraints section of the profile below. For comprehensive mappings see [US Core USCDI Guidance](https://hl7.org/fhir/us/core/STU6.1/uscdi.html).

  * [US Core RelatedPerson Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-relatedperson.html) (USCDI Data Class: Patient Demographics \| USCDI Data Elements: Related Person's Name, Related Person's Relationship) is referenced from the following US Core Profiles:
     * [US Core CareTeam Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-careplan.html), [US Core Coverage Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-coverage.html), [US Core DocumentReference Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-documentreference.html), [US Core Encounter Profile]({{site.data.fhir.ver.hl7fhiruscore}}/https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-encounter.html), [US Core MedicationDispense Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-medicationdispense.html), [US Core MedicationRequest Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-medicationrequest.html), [US Core Observation Screening Assessment Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-observation-screening-assessment.html), [US Core Provenance Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-provenance.html), [US Core QuestionnaireResponse Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-questionnaireresponse.html), [US Core ServiceRequest Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-servicerequest.html) and [US Core Simple Observation Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-simple-observation.html)
  * [US Core Provenance Profie]({{site.data.fhir.ver.hl7fhiruscore}}/) (USCDI Data Class: Provenance \| USCDI Data Elements: Author Time Stamp, Author Organization) **SHALL** be supported for the following US Core resources:
      * AllergyIntolerance, CarePlan, CareTeam, Condition, Coverage, Device, DiagnosticReport, DocumentReference, Encounter, Goal, Immunization, MedicationDispense, MedicationRequest, Observation, Patient, Procedure, QuestionnaireResponse, RelatedPerson, ServiceRequest
