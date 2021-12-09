This section defines the specific requirements for systems wishing to conform to actors specified in this Health Care Surveys Content IG.  The specification focuses on using the Backend Service App to report the health care survey data to NCHS data stores.

### Context

#### Pre-reading
Before reading this formal specification, implementers should first be familiar with these sections of the specification:

* The [Use Cases](usecases.html) page provides the business context and general process flow enabled by the formal specification.


#### Conventions
This implementation guide uses specific terminology to flag statements that have relevance for the evaluation of conformance with the guide:

* **SHALL** indicates requirements that must be met to be conformant with the specification.

* **SHOULD** indicates behaviors that are strongly recommended (and which may result in interoperability issues or sub-optimal behavior if not adhered to), but which do not, for this version of the specification, affect the determination of specification conformance.

* **MAY** describes optional behaviors that are free to consider but where there is no recommendation for or against adoption.


#### Claiming Conformance 

Actors and Systems asserting conformance to this implementation guide have to implement the requirements outlined in the corresponding capability statements. The following definition of MUST SUPPORT is to be used in the implementation of the requirements.

##### MUST SUPPORT Definition

* Systems **SHALL** be capable of populating data elements as specified by the profiles and data elements are returned using the specified APIs in the capability statement.
* Systems **SHALL** be capable of processing resource instances containing the MUST SUPPORT data elements without generating an error or causing the application to fail. 
* Systems **SHOULD** be capable of displaying the MUST Support data elements for human use or storing it for other purposes.
* In situations where information on a particular data element is not present and the reason for absence is unknown, Systems **SHALL NOT** include the data elements in the resource instance returned from executing the API requests.
* When accessing Health Care Surveys Content IG data, Systems **SHALL** interpret missing data elements within resource instances returned from API requests as data not present.


#### Profiles and Other IGs used by the specification
This specification makes significant use of [FHIR profiles]({{site.data.fhir.path}}profiling.html), search parameter definitions, and terminology artifacts to describe the content to be shared as part of Health Care Surveys Content IG workflows. The implementation guide is based on [FHIR R4]({{site.data.fhir.path}}) and profiles are listed for each interaction.

The full set of profiles defined in this implementation guide can be found by following the links on the MedMorph [FHIR Artifacts](artifacts.html) page.

##### MedMorph Reference Architecture (RA) IG Usage

This IG leverages the [MedMorph RA IG]({{site.data.fhir.ver.medmorphIg}}/index.html) defined by HL7 Public Health WG as the reference architecture for automation and implementing the health care surveys use case.


##### US Core Usage

This IG leverages the [US Core]({{ site.data.fhir.ver.uscoreR4 }}) set of profiles defined by HL7 for sharing non-veterinary EMR individual health data in the U.S.  Where US Core profiles exist, this IG either leverages them directly or uses them as a base for any additional constraints needed to support the research use cases.  If no constraints are needed, this IG does not define any profiles.

##### Subscriptions Backport IG Usage

This IG leverages the [Subscriptions Backport IG]({{site.data.fhir.ver.subscriptionsIg}}/index.html) defined by HL7 Infrastructure WG for automating reporting workflows using subscriptions.

##### Bulk Data Access IG Usage

This IG leverages the [BulkData Access IG]({{site.data.fhir.ver.buldataIg}}/index.html) defined by HL7 Infrastructure WG for enabling authentication and authorization between various actors involved in the workflows.

#### Implementation Requirements

##### SMART on FHIR Backend Services Authorization Requirements

This section outlines how the SMART on FHIR Backend Services Authorization will be used by the Health Care Surveys Content implementation guide. 

* The system actors namely EHRs, Backend Service App and the NCHS data stores are required to use the SMART on FHIR Backend Services Authorization mechanisms as outlined below for the following interactions 


    * Backend Service App accessing data from the EHR
    * Backend Service App posting data to the NCHS data store acting as a PHA with FHIR capabilities per the MedMorph RA IG
    

* System actors acting as servers (EHRs and NCHS data stores) **SHALL** advertise conformance to SMART Backend Services by hosting a Well-Known Uniform Resource Identifiers (URIs) as defined in the [Bulk Data Access IG Authorization Section]({{ site.data.fhir.ver.bulkIg }}/authorization/index.html#advertising-server-conformance-with-smart-backend-services) specification.

* System actors acting as servers **SHALL** include token_endpoint, scopes_supported, token_endpoint_auth_methods_supported and token_endpoint_auth_signing_alg_values_supported as defined in the [Bulk Data Access IG Authorization Section]({{ site.data.fhir.ver.bulkIg }}/authorization/index.html) specification.

* When System actors act as clients (Backend Service App), they **SHALL** share their JSON Web Key Set (JWKS) with the server System actors (EHRs and NCHS data stores) using Uniform Resource Locators (URLs) as defined in the [Bulk Data Access IG Authorization Section]({{ site.data.fhir.ver.bulkIg }}/authorization/index.html#registering-a-smart-backend-service-communicating-public-keys) specification.

* System actors acting as clients **SHALL** obtain the access token as defined in the [Bulk Data Access IG Authorization Section]({{ site.data.fhir.ver.bulkIg }}/authorization/index.html#obtaining-an-access-token) specification.

* For the health care survey use cases, EHRs **SHALL** support the system/*.read scopes. 

* The NCHS data stores **SHALL** support the system/*.read and system/*.write scopes. 

* The health care organization's existing processes along with the EHRs authorization server **SHALL** verify any organizational policy requirements (for example, registration of Backend Service App, authorizing requested scopes, testing and verification of BSA implementation in sandbox environment prior to production) before allowing the Backend Service App to access the data to be included in the health care survey report. 
 

##### Knowledge Artifact and Knowledge Artifact Repository Requirements 

* NCHS **SHALL** create a Knowledge Artifact following the constraints identified by the [MedMorph Provisioning requirements]({{site.data.fhir.ver.medmorphIg}}/provisioning.html#creating-knowledge-artifacts)

* NCHS **SHALL** publish the Group Resource containing the list of all the Practitioners participating in the health care survey. This can be published in the NCHS Data Store FHIR Server or a separate Knowledge Artifact Repository.

* NCHS **SHALL** republish the Group Resource when the list of all the Practitioners participating in the health care survey changes. 

* NCHS **SHALL** create the Knowledge Artifact following the constraints identified in [HCS-PlanDefinition](StructureDefinition-hcs-plandefinition.html).

* The NCHS **SHALL** implement the Knowledge Artifact Repository requirements as outlined in the [MedMorph RA Knowledge Artifact Repository Requirements]({{site.data.fhir.ver.medmorphIg}}/CapabilityStatement-medmorph-knowledge-artifact-repository.html).


##### EHR Requirements

* The EHR **SHALL** support the requirements as outlined in the [EHR Capability Statement](CapabilityStatement-health-care-surveys-reporting-ehr.html).

###### Authorization requirements 

* EHRs **SHALL** support the [SMART on FHIR Backend Services Authorization](spec.html#smart-on-fhir-backend-services-authorization-requirements) outlined above as a Server. 
 

###### Subscription requirements

* EHRs **SHALL** support the creation of Subscriptions for the [encounter-close Subscription Topic]({{site.data.fhir.ver.medmorphIg}}/StructureDefinition-encounter-close.html)

* EHRs **SHALL** support [``rest-hook``]({{site.data.fhir.path}}subscription.html#2.46.7.1) Subscription channel to notify the Backend Service App.

* EHRs **SHALL** support Notification Bundles with [``full resource payload``]({{site.data.fhir.ver.subscriptionsIg}}/payloads.html#full-resource) as outlined in the Backport Subscriptions IG. 

* For the health care surveys content implementation guide, EHRs **SHALL** include the Encounter resource which was closed as part of the Notification Bundle.

* EHRs **SHALL** support operations and APIs for Subscription, Notification Bundle, Subscription status resources as outlined in the [EHR Capability Statement](CapabilityStatement-health-care-surveys-reporting-ehr.html).


###### Data API requirements

* EHRs **SHALL** support the [US Core Server APIs]({{site.data.fhir.ver.uscoreR4}}/CapabilityStatement-us-core-server.html) and MedicationAdministration APIs as outlined in the [EHR Capability Statement](CapabilityStatement-health-care-surveys-reporting-ehr.html) for the Backend Service App to access patient data.

 
##### BSA Requirements 


###### Authorization requirements

* BSA **SHALL** support the [SMART on FHIR Backend Services Authorization](spec.html#smart-on-fhir-backend-services-authorization-requirements) outlined above as a client. 


###### Subscription requirements

* BSA **SHALL** create Subscriptions for the [encounter-close Subscription Topic]({{site.data.fhir.ver.medmorphIg}}/StructureDefinition-encounter-close.html).

* BSA **SHALL** support [``rest-hook``]({{site.data.fhir.path}}subscription.html#2.46.7.1) Subscription channel to receive notifications from the EHR.


###### Subscription Notification API 

* BSA **SHALL** support a POST API <BSA Base URL>/receive-notification with a payload of the Subscription Notification Bundle to receive the notifications from the EHR. 


###### Knowledge Artifact processing requirements 

* The BSA **SHALL** allow the health care organization to activate/deactivate a specific Knowledge Artifact. Activation indicates applying the Knowledge Artifact and deactivation indicates not applying the Knowledge Artifact for events occurring within the health care organization.

* BSA **SHALL** process the Health Care Surveys Knowledge Artifact and create Subscription resources in the EHR for each trigger event.

* For the health care surveys, the BSA **SHALL** create the Subscription for the [encounter-close Subscription Topic]({{site.data.fhir.ver.medmorphIg}}/StructureDefinition-encounter-close.html) trigger event. 

* Upon deactivation of a Knowledge Artifact, The BSA **SHALL** delete the Subscriptions previously created by the BSA for the Knowledge Artifact. (for e.g delete the Subscription created for encounter-close trigger event) 

* The BSA **SHALL** implement FhirPath expression processing to process the Health Care Surveys Knowledge Artifact actions.

* The BSA **SHALL** use the default queries outlined by the Health Care Surveys Knowledge Artifact unless overridden by the health care organization.

* The BSA **SHALL** ensure no duplicate reports are submitted for the same patient and encounter occurring within a health care organization.


###### Data API requirements 

* The BSA acting as a client **SHALL** use the [US Core Server APIs]({{site.data.fhir.ver.uscoreR4}}/CapabilityStatement-us-core-server.html) and MedicationAdministration APIs as outlined in the [EHR Capability Statement](CapabilityStatement-health-care-surveys-reporting-ehr.html) to access patient data from the EHR


###### Report generation requirements 

* The BSA **SHALL** create a health care survey report following the constraints identified in [Health Care Survey Content Bundle](StructureDefinition-hcs-content-bundle.html).

* The BSA **SHALL** package the health care survey report following the constraints identified in [Health Care Survey Reporting Bundle](StructureDefinition-hcs-reporting-bundle.html).

* The BSA **SHALL** submit the message containing the health care survey report to the endpoint identified in the Health Care Surveys Knowledge Artifact unless overridden by the health care organization.

###### Use of Non-FHIR based approaches to submit the Health Care Surveys Report

* The BSA **MAY** use other transport methods such as Direct Transport to submit the Health Care Survey Report created when appropriate.

###### MedMorph RA Requirements 

* The BSA **SHALL** implement the MedMorph BSA requirements as outlined in the [MedMorph RA BSA requirements]({{site.data.fhir.ver.medmorphIg}}/CapabilityStatement-medmorph-backend-service-app.html).


##### NCHS Data Store Requirements acting as a MedMorph PHA actor


###### Message Receiving and Processing requirements

* The NCHS Data Store **SHALL** implement the $process-message operation on the ROOT URL of the FHIR Server to receive reports from the Backend Service App using the POST operation.

* Upon receipt of the message, the NCHS Data Store **SHALL** validate the message before accepting the message.

* When there are validation failures, the NCHS Data Store **SHALL** return a Operation Outcome response with the details of the validations as part of the POST response.

* The NCSH Data Store **SHALL** implement the PHA requirements as outlined in the [MedMorph PHA requirements]({{site.data.fhir.ver.medmorphIg}}/CapabilityStatement-medmorph-public-health-authority.html).



