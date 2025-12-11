### Introduction

This profile is used to represent the clinical content present within a health care survey report.

### Sections and Population Criteria

The following sections and population criteria should be used to create the composition resource below.

To support reduction in Bundle sizes and limit duplicate data, in most cases data should be limited to the current encounter.

* Patient: The patient who is the subject of the encounter
* Encounter: The encounter that was closed (updated documentation to be added to the encounter before stating it is closed)
* Conditions/Problems/HealthConcerns: 
  * Encounter diagnosis for the closed encounter
  * All statuses except inactive; verificationStatus = confirmed
* MedicationRequests: Medication requested during the encounter with status = active and completed; intent = order.
* MedicationAdministration: Medication administered during the encounter with status = active.
* Medications: Medications referenced by MedicationRequests and MedicationAdministration.
* Vital Signs: Vital signs for the encounter with status = final or status = amended.
* Allergies: Allergies associated with the patient with status = active; verificationStatus = confirmed.
* Procedures: All interventional, surgical, diagnostic, or therapeutic procedures or treatments pertinent to the patient historically at the time the document is generated. The section should include notable procedures, but can contain all procedures for the period of time being summarized. 
* ServiceRequest: Procedures ordered during the encounter.
* Immunizations: Immunizations associated with the patient.
* LabResults: Results linked to the encounter, ordered during the encounter, received during the encounter, or received within a specified timeframe (e.g., 72 hours) after the encounter closes with status = final or status = preliminary.
* Lab Reporting: Results linked to the encounter, ordered during the encounter, received during the encounter, or received within a specified timeframe (e.g., 72 hours) after the encounter closes with status = final or status = preliminary. 
* Diagnostic Report Notes: 
  * Results linked to the encounter, ordered during the encounter, received during the encounter, or received within a specified timeframe (e.g., 72 hours) after the encounter closes with status = final or status = preliminary. 
  * Procedure Notes. 
  * Imaging data is NOT to be sent.
* Clinical Notes: All notes created during the encounter.
* Care Team: Associated with the patient with status = active.
* CarePlan: Associated with the encounter with status = draft or status = active.
* Goals: status = proposed or status = planned or status = accepted or status = active.
* Smoking Status: Associated with the patient.
* Implantable Devices: Associated with the patient.
* Pregnancy Status: Associated with the patient.

The above data to be populated by the implementers of the DataSource actor.
 
### USCDI Mappings

[USCDI V3.1](https://www.healthit.gov/isp/united-states-core-data-interoperability-uscdi#uscdi-v3-1) mappings are noted in the Descriptions & Constraints section of the profile below. For comprehensive mappings see [US Core USCDI Guidance]({{site.data.fhir.ver.hl7fhiruscore}}/uscdi.html) (note that US Core 6.1.0 was published prior to USCDI V3.1 so the mappings are to USCDI V3.0).

The following two profiles are not specifically constrained in the Composition but can be used or are referenced as stated below:

  * [US Core RelatedPerson Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-relatedperson.html) (USCDI Data Class: Patient Demographics \| USCDI Data Elements: Related Person's Name, Related Person's Relationship) is referenced from the following US Core Profiles:
     * [US Core CareTeam Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-careplan.html), [US Core Coverage Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-coverage.html), [US Core DocumentReference Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-documentreference.html), [US Core Encounter Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-encounter.html), [US Core MedicationDispense Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-medicationdispense.html), [US Core MedicationRequest Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-medicationrequest.html), [US Core Observation Screening Assessment Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-observation-screening-assessment.html), [US Core Provenance Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-provenance.html), [US Core QuestionnaireResponse Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-questionnaireresponse.html), [US Core ServiceRequest Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-servicerequest.html) and [US Core Simple Observation Profile]({{site.data.fhir.ver.hl7fhiruscore}}/StructureDefinition-us-core-simple-observation.html)
  * [US Core Provenance Profile]({{site.data.fhir.ver.hl7fhiruscore}}/) (USCDI Data Class: Provenance \| USCDI Data Elements: Author Time Stamp, Author Organization) **SHALL** be supported for the following US Core resources:
      * AllergyIntolerance, CarePlan, CareTeam, Condition, Coverage, Device, DiagnosticReport, DocumentReference, Encounter, Goal, Immunization, MedicationDispense, MedicationRequest, Observation, Patient, Procedure, QuestionnaireResponse, RelatedPerson, ServiceRequest
