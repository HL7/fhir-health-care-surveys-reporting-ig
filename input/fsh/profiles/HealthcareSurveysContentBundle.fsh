Profile: HealthcareSurveysContentBundle
Parent: Bundle
Id: hcs-content-bundle
Title: "Health Care Surveys Content Bundle"
Description: "Bundle Resource profile for health care surveys report content. This bundle is always part of the Health Care Surveys Reporting Bundle and organizes the information using a Composition resource and will contain all the resources referenced from a Composition resource."
* entry ..* MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains composition 1..1 MS
* entry[composition].resource only HealthCareSurveysComposition