Instance: organization-payer-upmc
InstanceOf: USCoreOrganizationProfile
Title: "Payer Organization Example - UPMC"
Description: "An example of an Organization (Payer - UPMC Health Plan)"
Usage: #example

* identifier
  * system = "urn:oid:2.16.840.1.113883.6.300"
  * value = "95216"
* active = true
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