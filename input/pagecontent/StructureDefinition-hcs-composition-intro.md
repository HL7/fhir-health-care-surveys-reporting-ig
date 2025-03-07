### Introduction

This profile is used to represent the clinical content present within a health care survey report.

**Sections and Population Criteria**

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
 