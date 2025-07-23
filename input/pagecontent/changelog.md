### STU 2 - Ballot

#### Jira Tickets

|JIRA Ticket|Ticket Description|
|---------|----------|
[FHIR-43293](https://jira.hl7.org/browse/FHIR-43293) | Remove Trust Service Provider from Actors and Systems diagram |

<!-- <table border="1">
    <thead>
       <tr style="background-color:#DCDCDC">
            <th style="text-align: center; vertical-align: middle;">Artifact</th>
            <th style="text-align: center; vertical-align: middle;">Change Description</th>
        </tr>
    </thead> -->

#### Detailed Description of Changes

<table border="1">
    <thead>
       <tr style="background-color:#DCDCDC">
            <th style="text-align: center; vertical-align: middle;">Artifact</th>
            <th style="text-align: center; vertical-align: middle;">Change Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Whole IG</td>
            <td>Update dependency on US Core to <a href="https://hl7.org/fhir/us/core/STU6.1/index.html">US Core 6.1.0</a></td>
        </tr>
        <tr>
            <td><a href="changelog.html">Change Log</a></td>
            <td>New Change Log</td>
        </tr>
        <tr>
            <td>All relevant profiles</td>
            <td>Update descriptions, update examples, add USCDI+ mappings to descriptions</td>
        </tr>
        <tr>
            <td>All examples</td>
            <td>Update examples to support changes</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-hcs-diagnosticreport.html">HCS Diagnostic Report</a></td>
            <td>New Profile</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-hcs-content-bundle.html">Health Care Surveys Content Bundle</a></td>
            <td>Add date option or date limiter to resources to support reduction in bundle sizes and limit duplicates. Condition and Observation entries will be constrained to patient encounter.</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-hcs-composition.html">Health Care Survey Report Composition</a></td>
            <td>Update HCS Composition verbiage to reflect continuity regarding procedures</td>
        </tr>
        <tr>
            <td>HDEA App Rebranding</td>
            <td>Rebrand term HDEA app to "eCR Now FHIR App-Health Care Surveys"</td>
        </tr>
        <tr>
            <td>MedMorph Decoupling</td>
            <td>Decouple the IG from MedMorph unless it needs to be referenced in some context within the IG References to MedMorph, HDEA will be removed from Home, Use Cases and Specifications.</td>
        </tr>
        <tr>
            <td>Gender-Related Data for Executive Order Requirements</td>
            <td>Only accept "male" or "female" options in compliance with Executive Order 14168</td>
        </tr>
        <tr>
            <td>Trust Service Provider Removal (FHIR-43293)</td>
            <td>Remove Trust Service Provider from section 2.1.5 Health Care Surveys Actors and Definitions AND Figure 2.3</td>
        </tr>
        <tr>
            <td>CI Build Link Fix (FHIR-43291)</td>
            <td>The CI Build link is not working (Decision: Add "-ig" to "http://build.fhir.org/ig/HL7/fhir-health-care-surveys-reporting")</td>
        </tr>
    </tbody>
</table>