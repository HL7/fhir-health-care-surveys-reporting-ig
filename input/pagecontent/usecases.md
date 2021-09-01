### Business Need and User Stories
The section identifies the business needs and specific user stories outlining the healthcare surveys reporting data exchange needs.

#### Business Need
The purpose of the Health Care Survey Submission Content IG is to identify the hospital (emergency department and inpatient care) and ambulatory care data that will be extracted from EHRs and/or clinical data repositories via FHIR APIs and sent to a system hosted at the federal level. This use case will help define how EHR data can be used in automated data collection, thereby reducing burden for the healthcare provider and EHR with the goal of increasing the submission of timely, quality health care data to the National Center for Health Statistics (NCHS).
The current ambulatory (manual medical record abstraction) and hospital (claims) data collection method is burdensome for providers, lacks clinical richness, and is inefficient for NCHS.

Electronic reporting will increase the response rate of sampled hospitals and ambulatory health care providers to the National Hospital Care Survey (NHCS) and the National Ambulatory Medical Care Survey (NAMCS). This will also increase the volume, quality, completeness, and timeliness of the data submitted to the NHCS and NAMCS. Electronic reporting via automated means (without provider involvement) will reduce the burden associated with survey participation and reduce costs associated with recruiting hospital and ambulatory health care providers.


#### Goals of the Use Case

The goals of the Health Care Survey submission use case include:
* Increase the response rate of sampled hospitals and ambulatory health care providers to the National Hospital Care Survey (NHCS) and the National Ambulatory Medical Care Survey (NAMCS)
* Increase the volume, quality, completeness, and timeliness of data submitted to the NHCS and NAMCS
* Reduce the burden associated with survey participation for hospitals, ambulatory health care providers, and EHR vendors
* Reduce NCHS’s costs associated with recruiting hospital and ambulatory health care providers, and the processing of NHCS and NAMCS data
* Develop a complete use case that can be supported by the MedMorph Reference Architecture for the reporting of health care survey data from health care providers and systems to NCHS


##### Scope of the Use Case

**In-Scope**

* Collect standardized data based on eligibility criteria from NAMCS[1] and NHCS[2] in the hospital and ambulatory care settings
* Define under what circumstances an EHR system must create and transmit a report to the NCHS data store
* Identify the data elements to be retrieved from the EHR to produce the report
* Collect partial provider-level and all available patient-level data for NAMCS
* Collect partial hospital/facility-level and all available patient-level data for NHCS


**Out-of-Scope**

* Validation of the EHR data
* Data captured outside the EHR and communicated directly to registries
* Changes to existing provider workflow or existing data entry
* Policies of the clinical care setting to collect consent for data sharing
* Adult day services centers, residential care communities, nursing homes, home health agencies, and hospice


 
#### **User Story #1: Ambulatory Setting** 

**Background:** The National Ambulatory Medical Care Survey (NAMCS) is based on a sample of patient visits to non-federally employed office-based physicians (primary care or specialist) who are primarily engaged in direct patient care and, starting in 2006, a separate sample of visits to community health centers. NAMCS collects an encounter-based set of demographic and clinical data generally available in a medical record for any type of visit.

**Workflow:** Upon completion of an encounter, the physician or licensed clinician, using the EHR, completes and closes the clinical encounter (“sign off”). This “sign off” triggers the backend services app to evaluate the completed encounter. The completed encounter evaluation includes validating that the provider associated with the encounter is a “sampled” NAMCS provider and the encounter occurred within a specified timeframe.  If the encounter meets the criteria, and after a lag period to allow for lab results to post when applicable, the backend services app requests a set of FHIR resources representing patient-level and select provider-level data of the encounter from the EHR. Once obtained and validated, these resources are transmitted to NCHS where they are received, acknowledged, validated, and loaded into the National Center for Health Statistics (NCHS) Data Store.


#### **User Story #2 – Inpatient Setting**

**Background:** The National Hospital Care Survey (NHCS) is an electronic data collection, gathering Uniform Bill (UB) 04 administrative claims data or electronic health record data from sampled hospitals. NHCS is designed to provide reliable and timely nationally representative healthcare utilization data for hospital-based settings. NHCS collects all inpatient discharges, and Emergency Department (ED) encounters from sampled hospitals for a survey period of one year. NHCS’ sample is drawn from all non-federal US hospitals with a bed size > 6.

**Workflow:** Upon completion of an inpatient or ED encounter, the physician or licensed clinician completes and closes the clinical encounter (“sign off”). This “sign off” triggers the backend services app to evaluate the completed encounter against the NHCS criteria.  If the encounter meets the survey criteria, and after a lag period to allow for lab results to post when applicable, the backend services app requests a set of FHIR resources representing patient-level and select provider-level data of the encounter from the EHR.  Once obtained and validated, these resources are transmitted to NCHS where they are received, acknowledged, validated, and loaded into the National Center for Health Statistics (NCHS) Data Store

 

#### Healthcare Surveys Reporting Workflow 

The following is a diagram of the workflow based on the above user story used for Healthcare Surveys Reporting


{% include img.html img="healthcare-surveys-reporting-workflow.png" caption="Figure 2.1 - Healthcare Surveys Reporting Workflow" %}

<br/>


<br/>


#### MedMorph Healthcare Surveys Reporting Actors and Definitions

The following actors and definitions from the MedMorph RA IG are used by the Healthcare Surveys Reporting use cases. 

* EHR 
* Backend Service App
* National Center for Health Statistics (NCHS) Data Store as (PHA)
* KAR ? 
* TTP ? 
