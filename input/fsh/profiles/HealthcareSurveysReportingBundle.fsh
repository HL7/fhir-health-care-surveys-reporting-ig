Profile: HealthcareSurveysReportingBundle
Parent: Bundle
Id: hcs-reporting-bundle
Title: "Health Care Surveys Reporting Bundle"
Description: "Bundle Resource profile for exchanging health care surveys report. This bundle contains the MessageHeader resource used for routing and the Health Care Surveys Content Bundle specifying the content."
* entry ..* MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    sliceMessageHeader 1..1 MS and
    contentBundle 1..1 MS
* entry[sliceMessageHeader].resource only USPublicHealthMessageHeader
* entry[contentBundle].resource only HealthcareSurveysContentBundle