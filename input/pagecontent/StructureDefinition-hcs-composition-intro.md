### Introduction

This profile is used to represent the clinical content present within a  health care survey report.

**Sections and Population Criteria**

The following sections and population criteria should be used to create the composition resource below.

* Patient: The Patient who is the subject of the encounter
* Encounter: The Encounter that was closed (Updated documentation has to be added to the encounter before saying it is closed)
* Conditions: Encounter Diagnosis for the closed encounter, All Statuses except InActive, verificationStatus = Confirmed
* MedicationRequests: status = Active and Completed, Intent = order.
* MedicationAdministration: Medication administered during the encounter and status = active
* Medications: Referenced by MedicationRequests and MedicationAdministration
* LabResults: Results linked to the encounter or ordered during the encounter or results received during the Encounter plus thresholds. (72 hours after the encounter close) and Status = final and preliminary
* Vital Signs: all vital signs for the encounter with status = final or amended
* Allergies: all allergies associated with the patient with status = active and verification status= confirmed.
* Procedures: Procedures performed during the encounter limited to status = completed or in-progress. 
* ServiceRequest: to capture procedures ordered during the encounter.
* Immunizations: all immunizations associated with the patient.
* Lab Reporting: Results linked to the encounter or ordered during the encounter or results received during the Encounter plus thresholds. (72 hours after the encounter close) and Status = final and preliminary 
* Diagnostic Report Notes: Results linked to the encounter or ordered during the encounter or results received during the Encounter plus thresholds. (72 hours after the encounter close) and Status = final and preliminary 
* Clinical Notes: All notes created during the encounter
* Care Team: Everything associated with the patient with status=Active.
* CarePlan: Associated with the encounter with status = draft and active.
* Goals: Status = proposed | planned | accepted | active
* Smoking Status: Everything associated with the patient.
* Implantable Devices: All devices associated with the patient.

The above data has to be populated by the implementers of either the DataSource actors or the MedMorph HDEA (backend services app).
 