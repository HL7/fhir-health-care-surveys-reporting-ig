Instance: healthcare-surveys-reporting-bundle
InstanceOf: HealthcareSurveysReportingBundle
Title: "HCS Reporting Bundle Example"
Description: "An example showing a Reporting Bundle for HCS"
Usage: #example
* type = #message
* timestamp = "2020-11-20T11:15:33-10:00"
* entry[0].fullUrl = "http://example.org/fhir/MessageHeader/messageheader-example-reportheader"
* entry[=].resource = Inline-Instance-for-reporting-bundle-example-1
* entry[+].fullUrl = "http://example.org/fhir/Bundle/healthcare-surveys-content-bundle"
* entry[=].resource = healthcare-surveys-content-bundle 
* entry[+].fullUrl = "http://example.org/fhir/Organization/organization-pha"
* entry[=].resource = organization-pha