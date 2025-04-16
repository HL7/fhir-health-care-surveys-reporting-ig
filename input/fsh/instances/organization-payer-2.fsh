Instance: organization-payer-2
InstanceOf: USCoreOrganizationProfile|6.1.0
Title: "Payer 2"
Description: "Payer 2"
Usage: #example
* meta
  * lastUpdated = "2020-09-08T00:00:00+00:00"
  * source = "Organization/PayerOrganizationExample1"
* identifier
  * system = "urn:oid:2.16.840.1.113883.6.300"
  * value = "95216"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#pay
  * text = "Payer"
* name = "UPMC Health Plan"
* telecom[0]
  * system = #phone
  * value = "1-844-220-4785 TTY: 711"
  * use = #work
* telecom[+]
  * system = #phone
  * value = "1-866-406-8762"
  * use = #work
* address
  * type = #physical
  * line[0] = "UPMC Health Plan"
  * line[+] = "Attn: Commercial Plans"
  * line[+] = "U.S. Steel Tower"
  * line[+] = "600 Grant Street"
  * city = "Pittsburgh"
  * state = "PA"
  * postalCode = "15219"