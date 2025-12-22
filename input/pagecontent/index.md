### Introduction

This US-specific implementation guide (IG) provides guidance on the exchange of information for the National Center for Health Statistics (NCHS) [National Health Care Surveys (NHCS)](https://www.cdc.gov/nchs/healthcare-surveys/about/index.html). The data are collected through surveys of ambulatory, inpatient, and outpatient care services in the United States: the [National Ambulatory Medical Care Survey (NAMCS)](https://www.cdc.gov/nchs/namcs/about/index.html) and the [National Hospital Care Survey (NHCS)](https://www.cdc.gov/nchs/nhcs/index.html).
These surveys produce nationally representative data to answer key questions about health care utilization for public health professionals, researchers, and health care policy makers.

This IG supports interoperability between FHIR-enabled electronic health record (EHR) systems and NCHS recipient systems for three settings:

* Emergency department encounter, for data collected by NHCS (NCHS-ED)
* Inpatient encounter, for data collected by NHCS (NHCS-IP)
* Outpatient encounter, for data collected by NHCS (NHCS-OPD) and NAMCS

This Implementation Guide (IG) improves the process of gathering data for national health surveys by automating the extraction of information from electronic health records (EHRs) and securely transmitting it to the National Center for Health Statistics (NCHS). The IG utilizes the Fast Healthcare Interoperability Resources (FHIR) standard along with US Core profiles, which specify how common clinical concepts are represented in FHIR. It also leverages a Reference Architecture (RA) framework for automated reporting and the electronic Case Reporting (eCR) Now FHIR application, customized to accommodate the Health Care Surveys' content and structural requirements.

From a regulatory alignment standpoint, this IG is closely aligned with [USCDI V3.1](https://www.healthit.gov/isp/united-states-core-data-interoperability-uscdi#uscdi-v3-1) and [US Core 6.1.0](https://hl7.org/fhir/us/core/STU6.1/) as specified in the Assistant Secretary for Technology Policy (ASTP)'s Health Data, Technology, and Interoperability: Certification Program Updates, Algorithm Transparency, and Information Sharing (HTI-1) Final Rule. While this NHCS FHIR IG aligns with USCDI V3.1/US Core 6.1.0 to the greatest extent possible, there is one exception. Since medications administered during encounters have been collected in the National Health Care Surveys for decades, and to avoid gaps in collection years, the IG includes the Health Care Surveys Medication Administration Profile as the only deviation from standard US Core Profiles. Future releases will continue to align with ASTP's Health IT Certification Program regulations, the Standards Version Advancement Process (SVAP), USCDI, and other relevant digital standards for healthcare interoperability.

The Health Care Surveys Content Implementation Guide (IG) specifies how to enable health care organizations to implement [Health Care Surveys Use Cases](background.html#use-cases) outlined in the IG.

### Relation to Other Standards

This NHCS FHIR IG is based upon FHIR R4.0.1 and is a U.S. Realm Specification. It re-uses or further constrains FHIR resources published in the following FHIR IGs:

* [US Core Implementation Guide - STU 6.1.0](http://hl7.org/fhir/us/core/STU6.1/) (2023-06-30)
* [US Public Health Profiles Library - STU 1.0.0](https://hl7.org/fhir/us/ph-library/STU1/) (2023-08-17)
* [SMART App Launch - STU 2.0.0](http://hl7.org/fhir/smart-app-launch/STU2/) (2021-11-26)
* [Subscriptions R5 Backport - STU 1.1.0](http://hl7.org/fhir/uv/subscriptions-backport/STU1.1) (2023-01-11)

In addition, this FHIR IG aligns with the [HL7 Clinical Document Architecture (CDA)® R2 Implementation Guide: National Health Care Surveys (NHCS)](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=385).

### Technical Overview

The main sections of this IG are:

* [Background](background.html) - Provides background and uses cases. The use cases provide business context for the IG and information that implementers should familiarize themselves
  with prior to reading the remainder of the IG.
* [Specification](specification.html) - The formal specification identifying the requirements for the implementers.
* [Downloads](downloads.html) - Allows downloading a copy of this implementation guide and other useful information.

**Note:** Value sets in this Implementation Guide are developed by outside entities (e.g., HL7) and cannot be altered by NCHS. In compliance with Executive Order 14168 (January 20, 2025), the National Health Care Surveys will only publish patient encounter records where the "patient sex" or "gender" variable options are "male" or "female." In addition, we will not publish any data related to structured evaluation of risk for the social determinants of health domains. These actions will be implemented pending further direction by the Assistant Secretary for Technology Policy/Office of the National Coordinator for Health IT.

### Authors

<table>
<thead>
<tr>
<th>Name</th>
<th>Email/URL</th>
</tr>
</thead>
<tbody>
<tr>
<td>HL7 International - Public Health</td>
<td><a href="http://www.hl7.org/Special/committees/pher" target="_new">http://www.hl7.org/Special/committees/pher</a></td>
</tr>
<tr>
<td>Prachi Mehta, Health Scientist (Informatics), CDC/National Center for Health Statistics</td>
<td><a href="mailto:pnm9@cdc.gov">pnm9@cdc.gov</a></td>
</tr>
</tbody>
</table>