### Business Need and User Stories
The section identifies the business needs including specific user stories outlining the health care surveys reporting data exchange needs.

#### Business Need
The purpose of the Health Care Surveys Content Implementation Guide (IG) is to identify the hospital (e.g., emergency department (ED), inpatient care) and ambulatory care data that will be extracted from Data Sources (e.g., Electronic Health Records (EHR), clinical data repository) via Fast Healthcare Interoperability Resources (FHIR®) Application Programming Interfaces (APIs) and sent to a system hosted at the federal level. This use case will help define how electronic data can be used in automated data collection thereby, reducing burden for the healthcare provider and data source (e.g. EHR system)with the goal of increasing the submission of timely quality health care data to the National Center for Health Statistics (NCHS). Historically, the predominate ambulatory and hospital  data collection methods have,been burdensome for providers due to manual processes,  with data lacking in the desired clinical richness and quality.  The HL7 Clinical Document Architecture (CDA®) R2 Implementation Guide: National Health Care Surveys Release 1, Draft Standard for Trial Use (DSTU) Release 1.2 - US Realm, 2016, and HL7® CDA® R2 Implementation Guide: National Health Care Surveys (NHCS), R1 STU Release 3.1 - US Realm are available-as a standards-based measure as well as a Promoting Interoperability (PI) and Merit-Based Incentive Payment System (MIPS) measure for hospitals and providers. These CDA IGs have improved NCHS EHR data submissions, but some providers have found it burdensome due to manual processes involved and NCHS has identified some data quality issues in submissions using the CDA standard. 

This IG is in alignment with the Health Data, Technology, and Interoperability: Certification Program Updates, Algorithm Transparency, and Information Sharing (HTI-1) Final Rule which adopts the United States Core Data for Interoperability (USCDI) Version 3.0, US Core Profiles V6.1.0 as the baseline standard as of January 1st, 2026.

This FHIR IG references a framework for FHIR reporting based on the eCR Now framework automating the reporting of encounters closed for 48 hours. This automated reporting will increase the response rate of sampled hospitals and ambulatory health care providers to the National Hospital Care Survey (NHCS) and the National Ambulatory Medical Care Survey (NAMCS), respectively, over other data collection approaches while improving process efficiency. This reporting approach via automated means (without provider involvement) reduces the burden associated with survey participation and reduce costs associated with recruiting hospital and ambulatory health care providers. This will also increase the volume, quality, completeness, and timeliness of the data submitted to the NHCS and the NAMCS.   


#### Goals of the Use Case

This use case builds on the work already done by the eCR Now FHIR app with the goal of automating reporting of health surveys data, while reducing the burden on health care providers and modernizing workflows.  Providers can use the eCR Now FHIR App- Health Care Surveys or develop their own vendor-developed solution to meet the requirements of this IG.  Providers already in production with the eCR program may be able to leverage some of the work done for the eCR Now use case.

The goals of the Health Care Survey submission use case include:
* Increase the response rate of sampled hospitals and ambulatory health care providers to the NHCS and the NAMCS.
* Increase the volume, quality, completeness, and timeliness of data submitted to the NHCS and NAMCS.
* Reduce the burden, including cost, associated with survey participation for hospitals, ambulatory health care providers, and data source vendors.
* Reduce NCHS’s costs associated with recruiting hospital and ambulatory health care providers, and the processing of NHCS and NAMCS data.
* Develop a complete use case supported by the eCR Now FHIR App- Health Care Surveys to allow the reporting of health care survey data from health care providers and systems to NCHS. 

##### Scope of the Use Case

**In-Scope**

* Collect standardized data based on eligibility criteria from NAMCS and NHCS in the hospital and ambulatory care settings.
* Define under what circumstances a Data Source system must create and transmit a report to the NCHS data store.
* Identify the data elements to be retrieved from the Data Source to produce the report.
* Collect partial provider/facility-level and all available patient-level data for NAMCS.
* Collect partial hospital/facility-level and all available patient-level data for NHCS.


**Out-of-Scope**

* Assessment of the data quality of the content extracted from the Data Source. 
* Data captured outside the Data Source and communicated directly to registries. 
* Changes to existing provider workflow or existing data entry. 
* Policies of the clinical care setting to collect consent for data sharing. (Provider participation in the National Health Care Surveys is by invitation by NCHS based on being selected as part of the nationally representative samples of hospitals or providers. Consent for participation in each National Health Care Survey is obtained during the manual recruitment process.)


#### **User Story #1: Ambulatory Setting** 

**Background:** The National Ambulatory Medical Care Survey (NAMCS) is based on a sample of patient visits to non-federally employed office-based providers who are primarily engaged in direct patient care. NAMCS was redesigned and launched as the Health Center (HC) Component in 2021, the Provider Survey Component in 2023, and is planning to launch the Provider Electronic Component. The Health Center Component samples from health centers while the two provider components sample from physicians and advanced practice providers. NAMCS collects an encounter-based set of demographic and clinical data generally available in a medical record for any type of visit. 

 
**Workflow:** Upon completion of an encounter, the physician or licensed clinician, using the EHR, completes and closes the clinical encounter ("sign off"). This "sign off" triggers the eCR Now FHIR App- Health Care Surveys or vendor developed solution to evaluate the completed encounter. The completed encounter evaluation includes validating that the provider associated with the encounter is a "sampled" NAMCS provider and the encounter occurred within a specified timeframe. If the encounter meets the criteria, and after a lag period to allow for lab results to post when applicable, the application or vendor developed solution queries the Data Source (e.g. EHR) for a set of FHIR resources representing patient-level and select provider-level data of the encounter. The obtained resources are validated (e.g., conformant to the appropriate FHIR profiles) and transmitted to NCHS where they are received, acknowledged, and loaded into the NCHS Data Store. 

The following is a diagram of the workflow based on the above user story used for Health Care Surveys Reporting in the Ambulatory Setting:


{% include img.html img="healthcare-surveys-reporting-workflow-userstory1.png" caption="Figure 2.1 - Ambulatory Setting Health Care Survey Reporting Workflow" %}

<br/>


<br/>


#### **User Story #2 – Hospital Setting**

**Background:** The National Hospital Care Survey (NHCS) is an electronic data collection, gathering Uniform Bill (UB) 04 administrative claims data or electronic data from sampled hospitals. NHCS is designed to provide reliable and timely nationally representative healthcare utilization data for hospital-based settings. NHCS collects all inpatient discharges and ED encounters from sampled hospitals for a survey period of one year. NHCS’ sample is drawn from all non-federal US hospitals with a staffed inpatient bed size > 6. 

 **Workflow:** Upon completion of an inpatient or ED encounter, the physician or licensed clinician completes and closes the clinical encounter ("sign off"). This "sign off" triggers the eCR Now FHIR App- Health Care Surveys or vendor developed solution to evaluate the completed encounter against the NHCS criteria. If the encounter meets the survey criteria, and after a lag period to allow for lab results to post when applicable, the application or vendor developed solution queries the Data Source for a set of FHIR resources representing patient-level and select provider-level data of the encounter. Once obtained and validated, these resources are transmitted to NCHS where they are received, acknowledged, validated, and loaded into the NCHS Data Store. 

The following is a diagram of the workflow based on the above user story used for Health Care Surveys Reporting for the Hospital Setting:


{% include img.html img="healthcare-surveys-reporting-workflow-userstory2.png" caption="Figure 2.2 - Hospital Setting Health Care Survey Reporting Workflow" %}

<br/>


<br/>


#### Health Care Surveys Actors and Definitions 

* Data Source (e.g., EHR, clinical data repository)
* *eCR Now FHIR App- Health Care Surveys or vendor developed solution
* NCHS Data Store acting as a Data Receiver with FHIR capabilities
* Knowledge Artifact Repository

###### Interactions between Actors and Systems for the Health Care Surveys FHIR System
This section outlines the high-level interactions between the various Actors and Systems listed above. These interactions are shown in Figure 2.3 along with the descriptions of each step.

{% include img.html img="healthcare-survey-actors-and-systems.png" caption="Figure 2.3 - The Health Care Surveys FHIR System" %}

The descriptions for each step in the above diagram include:
* Step 1: The National Center for Health Statistics (NCHS) Data Store (e.g., Data Receiver) creates a Knowledge Artifact — a structured, computable, shareable representation of clinical knowledge, such as trigger codes, value-sets, or workflow logic  — and makes it available via the Knowledge Artifact Repository, a FHIR-based service that versions, indexes, and distributes knowledge artifacts to subscribed systems .
     * Step 1a: Knowledge Artifact Repositories which implement notifications, can optionally notify the subscribers (Data Source, eCR Now FHIR App (Health Care Surveys)*, Administrators) of changes in the Knowledge Artifacts.
* Step 2: The eCR Now FHIR App- Health Care Surveys* queries the Knowledge Artifact Repository to retrieve a Knowledge Artifact. 
     * Step 2a: eCR Now FHIR App- Health Care Surveys* receives the Knowledge Artifact as a response to the query in Step 2.
* Step 3: The eCR Now FHIR App- Health Care Surveys* processes the Knowledge Artifact and creates subscriptions in the Data Source’s (e.g., EHR) FHIR Server so that it can be notified when specific events occur in clinical workflows.
* Step 4: Providers as part of their clinical workflows update the data in the Data Source’s patient chart.
* Step 5: The Data Source notifies the eCR Now FHIR App- Health Care Surveys* based on subscriptions that have been created in Step 3.
* Step 6: The eCR Now FHIR App- Health Care Surveys* queries the Data Source for patient’s data.
     * Step 6a: eCR Now FHIR App- Health Care Surveys* receives the response from the Data Source with the patient’s data.
* Step 7: The eCR Now FHIR App- Health Care Surveys* submits the created report to the NCHS Data Store.
* Step 8: The NCHS Data Store submits a response back to the eCR Now FHIR App- Health Care Surveys* based on the submitted report. The Response transaction can be synchronous or asynchronous (after a period of time).
* Step 9: The eCR Now FHIR App- Health Care Surveys* writes back the response from the NCHS Data Store to the Data Source as appropriate. 

* *or vendor developed solution

##### Subscription and Subscription Alternative Notification Models

A FHIR Subscription is a standardized mechanism that enables automated notifications when specific healthcare events occur such as the closure of an encounter combined with the existence of data meeting certain criteria. The subscription establishes a proactive connection between FHIR servers and other systems, allowing for push-based data collection that eliminates the need for constant pUlling or manual processes. The diagram in Figure 2.4 illustrates two distinct approaches for detecting that a qualifying encounter with completed clinical documentation has been finalized. 

Systems without FHIR Subscription capabilities can implement the alternative method shown, which employs scheduled tasks running at regular intervals. Providers can also develop their own in-house functionality to accomplish an alternative method to subscriptions.

{% include img.html img="alternatives.png" caption="Figure 2.4 - Subscription & Subscription Alternative Models" %}s


