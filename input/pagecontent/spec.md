This section defines the specific requirements for systems wishing to conform to actors specified in this Health Care Surveys Content Implementation Guide (IG).  The specification focuses on using the Health Data Exchange App (HDEA), Making Electronic Data More available for Research and Public Health's (MedMorph) backend services app, to report the health care survey data to National Center for Health Statistics (NCHS) data stores.

### Context

#### Pre-reading
Before reading this formal specification, implementers should first be familiar with the [Use Cases](usecases.html) page which provides the business context and general process flow.


#### Conventions
This IG uses specific terminology to flag statements that have relevance for the evaluation of conformance with the guide:

* **SHALL** indicates requirements that must be met to be conformant with the specification.

* **SHOULD** indicates behaviors that are strongly recommended (and which may result in interoperability issues or sub-optimal behavior if not adhered to), but which do not, for this version of the specification, affect the determination of specification conformance.

* **MAY** describes optional behaviors that are free to consider but where there is no recommendation for or against adoption.


#### Claiming Conformance 

Actors and Systems asserting conformance to this IG must implement the requirements outlined in the corresponding capability statements. The following definition of Must Support is to be used in the implementation of the requirements.

##### Must Support Definition

* Systems **SHALL** be capable of populating data elements as specified by the profiles and data elements are returned using the specified APIs in the capability statement.
* Systems **SHALL** be capable of processing resource instances containing the Must Support data elements without generating an error or causing the application to fail. 
* Systems **SHOULD** be capable of displaying the Must Support data elements for human use or storing them for other purposes.
* In situations where information on a particular data element is not present and the reason for absence is unknown, Systems **SHALL NOT** include the data elements in the resource instance returned from executing the API requests.
* When accessing Health Care Surveys Content IG data, Systems **SHALL** interpret missing data elements within resource instances returned from API requests as data not present.
* When data is not available for any of the mandatory elements specified in the IG, a data absent reason extension should be added to satisfy the requirement along with an appropriate value from the [data-absent-reason value set](http://hl7.org/fhir/ValueSet/data-absent-reason).


#### Profiles and Other IGs Used by the Specification
This specification makes significant use of [FHIR profiles]({{site.data.fhir.path}}profiling.html), search parameter definitions, and terminology artifacts to describe the content to be shared as part of Health Care Surveys Content IG workflows. The IG is based on [FHIR R4]({{site.data.fhir.path}}) and profiles are listed for each interaction.

The full set of profiles defined in this IG can be found by following the links on the [FHIR Artifacts](artifacts.html) page.

##### MedMorph Reference Architecture (RA) IG Usage

This IG leverages the [MedMorph Reference Architecture (RA) IG]({{site.data.fhir.ver.medmorphIg}}/index.html) defined by HL7 Public Health Workgroup (WG) as the reference architecture for automation and implementing the Health Care Surveys use case.


##### US Core Usage

This IG leverages the [US Core]({{site.data.fhir.ver.uscoreR4}}) set of profiles defined by HL7 for sharing non-veterinary electronic medical record (EMR) individual health data in the U.S.  Where US Core profiles exist, this IG either leverages them directly or uses them as a base for any additional constraints needed to support the research use cases.  If no constraints are needed, this IG does not define any profiles.

##### Subscriptions Backport IG Usage

This IG leverages the [Subscriptions Backport IG]({{site.data.fhir.ver.subscriptionsIg}}/index.html) defined by HL7 Infrastructure WG for automating reporting workflows using subscriptions.

##### SMART App Launch IG Usage

This IG leverages the [SMART App Launch IG]({{site.data.fhir.ver.smartapplaunch}}/index.html) defined by HL7 Infrastructure WG for enabling authentication and authorization between various actors involved in the workflows. This IG leverages Substitutable Medical Applications, Reusable Technologies (SMART) on FHIR Backend Services Authorization requirements.

#### Implementation Requirements

##### SMART on FHIR Backend Services Requirements

This section outlines how the SMART on FHIR Backend Services Authorization will be used by the Health Care Surveys Content IG. 

* The system actors namely Data Source, HDEA and the NCHS Data Store are required to use the SMART on FHIR Backend Services Authorization mechanisms as outlined below for the following interactions:


    * HDEA accessing data from the Data Source
    * HDEA posting data to the NCHS Data Store acting as a Data Receiver with FHIR capabilities per the MedMorph RA IG
    

* System actors acting as servers (e.g., electronic health record (EHR) and NCHS Data Store) **SHALL** advertise conformance to SMART on FHIR Backend Services by hosting Well-Known Uniform Resource Identifiers (URIs) as defined in the [SMART App Launch IG Backend Services]({{site.data.fhir.ver.smartapplaunch}}/backend-services.html) specification.

* System actors acting as servers **SHALL** include token_endpoint, scopes_supported, token_endpoint_auth_methods_supported and token_endpoint_auth_signing_alg_values_supported as defined in the [SMART App Launch IG Backend Services]({{site.data.fhir.ver.smartapplaunch}}/backend-services.html) specification.

* When System actors act as clients (e.g., HDEA), they **SHALL** share their JSON Web Key Set (JWKS) with the server System actors (e.g., EHR and NCHS Data Store) using Uniform Resource Locators (URLs) as defined in the [SMART App Launch IG Backend Services]({{site.data.fhir.ver.smartapplaunch}}/backend-services.html) specification.

* System actors acting as clients **SHALL** obtain the access token as defined in the [SMART App Launch IG Backend Services]({{site.data.fhir.ver.smartapplaunch}}/backend-services.html) specification.

* For the Health Care Survey use cases, Data Sources **SHALL** support the system/*.read scopes. 

* The NCHS Data Store **SHALL** support the system/*.read and system/*.write scopes. 

* The health care organization's existing processes along with the Data Source's authorization server **SHALL** verify any organizational policy requirements (for example, registration of the HDEA, authorizing requested scopes, testing and verification of HDEA implementation in sandbox environment prior to production) before allowing the HDEA to access the data to be included in the health care survey report. 
 

##### Knowledge Artifact and Knowledge Artifact Repository Requirements 

* The NCHS Data Store **SHALL** create a Knowledge Artifact following the constraints identified by the [MedMorph Provisioning requirements]({{site.data.fhir.ver.medmorphIg}}/provisioning.html#creating-knowledge-artifacts).

* The NCHS Data Store **SHALL** publish the Group Resource containing the list of all the Practitioners participating in the health care survey. This can be published in the NCHS Data Store FHIR Server or a separate Knowledge Artifact Repository.

* The NCHS Data Store **SHALL** republish the Group Resource when the list of all the Practitioners participating in the health care survey changes. 

* The NCHS Data Store **SHALL** create the Knowledge Artifact following the constraints identified in [HCS-PlanDefinition](StructureDefinition-hcs-plandefinition.html).

* The NCHS Data Store **SHALL** implement the Knowledge Artifact Repository requirements as outlined in the [MedMorph RA Knowledge Artifact Repository Requirements]({{site.data.fhir.ver.medmorphIg}}/CapabilityStatement-medmorph-knowledge-artifact-repository.html).


##### Data Source Requirements

* The Data Source (e.g., EHR, clinical data repository) **SHALL** support the requirements as outlined in the [Data Source Capability Statement](CapabilityStatement-health-care-surveys-reporting-data-source.html).

###### Authorization Requirements 

* The Data Source **SHALL** support the [SMART on FHIR Backend Services Authorization](spec.html#smart-on-fhir-backend-services-requirements) outlined above as a Server. 
 

###### Subscription Requirements

* The Data Source **SHALL** support the creation of Subscriptions for the [encounter-end Subscription Topic]({{site.data.fhir.ver.medmorphIg}}/StructureDefinition-medmorph-encounter-end-subscription.html)

* The Data Source **SHALL** support [``rest-hook``]({{site.data.fhir.path}}subscription.html#2.46.7.1) Subscription channel to notify the HDEA.

* The Data Source **SHALL** support Notification Bundles with [``full resource payload``]({{site.data.fhir.ver.subscriptionsIg}}/payloads.html#full-resource) as outlined in the Backport Subscriptions IG. 

* For the Health Care Surveys Content IG, the Data Source **SHALL** include the Encounter resource which was closed as part of the Notification Bundle.

* The Data Source **SHALL** support operations and APIs for Subscription, Notification Bundle, Subscription status resources as outlined in the [Data Source Capability Statement](CapabilityStatement-health-care-surveys-reporting-data-source.html).


###### Data API Requirements

* The Data Source **SHALL** support the [US Core Server APIs]({{site.data.fhir.ver.uscoreR4}}/CapabilityStatement-us-core-server.html) and MedicationAdministration APIs as outlined in the [EHR Capability Statement](CapabilityStatement-health-care-surveys-reporting-data-source.html) for the HDEA to access patient data.

 
##### HDEA Requirements 


###### Authorization Requirements

* The HDEA **SHALL** support the [SMART on FHIR Backend Services Authorization](spec.html#smart-on-fhir-backend-services-requirements) outlined above as a client. 


###### Subscription Requirements

* The HDEA **SHALL** create Subscriptions for the [encounter-end Subscription Topic]({{site.data.fhir.ver.medmorphIg}}/StructureDefinition-medmorph-encounter-end-subscription.html).

* The HDEA **SHALL** support [``rest-hook``]({{site.data.fhir.path}}subscription.html#2.46.7.1) Subscription channel to receive notifications from the Data Source.


###### Subscription Notification API 

* The HDEA **SHALL** support a POST API <BSA Base URL>/receive-notification with a payload of the Subscription Notification Bundle to receive the notifications from the Data Source. 


###### Knowledge Artifact Processing Requirements 

* The HDEA **SHALL** allow the health care organization to activate/deactivate a specific Knowledge Artifact. Activation indicates applying the Knowledge Artifact and deactivation indicates not applying the Knowledge Artifact for events occurring within the health care organization.

* The HDEA **SHALL** process the Health Care Surveys Knowledge Artifact and create Subscription resources in the Data Source for each trigger event.

* For the health care surveys, the HDEA **SHALL** create the Subscription for the [encounter-end Subscription Topic]({{site.data.fhir.ver.medmorphIg}}/StructureDefinition-medmorph-encounter-end-subscription.html) trigger event. 

* Upon deactivation of a Knowledge Artifact, The HDEA **SHALL** delete the Subscriptions previously created by the HDEA for the Knowledge Artifact (e.g., delete the Subscription created for encounter-end trigger event). 

* The HDEA **SHALL** implement FhirPath expression processing to process the Health Care Surveys Knowledge Artifact actions.

* The HDEA **SHALL** use the default queries outlined by the Health Care Surveys Knowledge Artifact unless overridden by the health care organization.

* The HDEA **SHALL** ensure no duplicate reports are submitted for the same patient and encounter occurring within a health care organization.


###### Data API Requirements 

* The HDEA acting as a client **SHALL** use the [US Core Server APIs]({{site.data.fhir.ver.uscoreR4}}/CapabilityStatement-us-core-server.html) and MedicationAdministration APIs as outlined in the [Data Source Capability Statement](CapabilityStatement-health-care-surveys-reporting-data-source.html) to access patient data from the Data Source.


###### Report Generation Requirements 

* The HDEA **SHALL** create a health care survey report following the constraints identified in [Health Care Survey Content Bundle](StructureDefinition-hcs-content-bundle.html).

* The HDEA **SHALL** package the health care survey report following the constraints identified in [Health Care Survey Reporting Bundle](StructureDefinition-hcs-reporting-bundle.html).

* The HDEA **SHALL** submit the message containing the health care survey report to the endpoint identified in the Health Care Surveys Knowledge Artifact unless overridden by the health care organization.

###### Use of Non-FHIR Based Approaches to Submit the Health Care Surveys Report

* The HDEA **MAY** use other transport methods such as Direct Transport to submit the Health Care Survey Report created when appropriate.

###### MedMorph RA Requirements 

* The HDEA **SHALL** implement the MedMorph HDEA requirements as outlined in the [MedMorph RA HDEA requirements]({{site.data.fhir.ver.medmorphIg}}/CapabilityStatement-medmorph-healthdata-exchange-app-client.html).


##### NCHS Data Store Requirements Acting as a MedMorph Data Receiver Actor


###### Message Receiving and Processing Requirements

* The NCHS Data Store **SHALL** implement the $process-message operation on the ROOT URL of the FHIR Server to receive reports from the Backend Service App using the POST operation.

* Upon receipt of the message, the NCHS Data Store **SHALL** validate the message before accepting the message.

* When there are validation failures, the NCHS Data Store **SHALL** return a Operation Outcome response with the details of the validations as part of the POST response.

* The NCSH Data Store **SHALL** implement the PHA requirements as outlined in the [MedMorph Data Receiver requirements]({{site.data.fhir.ver.medmorphIg}}/CapabilityStatement-medmorph-data-receiver.html).



