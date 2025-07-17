ValueSet: CareTeamMemberFunctionSNOMEDCT
Id: 2.16.840.1.113762.1.4.1099.27
Title: "Care Team Member Function (SNOMEDCT)"
Description: """This value set was established through considerable analysis and research conducted in the HL7 Learning Health System WG. https://confluence.hl7.org/display/LHS/2019-03-19+Agenda+and+Minutes
2022-04-07 Updated per https://jira.hl7.org/browse/CDA-20035 on 2022-04-07"""
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-author"
* ^extension[=].valueContactDetail.name = "HL7 US Realm Program Management Author"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/resource-lastReviewDate"
* ^extension[=].valueDate = "2024-06-04"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/valueset-effectiveDate"
* ^extension[=].valueDateTime = "2024-07-06T00:00:00Z"
* ^url = "http://hl7.org/fhir/us/health-care-surveys-reporting/ValueSet/2.16.840.1.113762.1.4.1099.27"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113762.1.4.1099.27"
* ^version = "20230706"
* ^date = "2023-07-06T01:01:05-04:00"
* ^publisher = "HL7 US Realm Program Management Steward"
* ^experimental = false
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/pher"
* ^jurisdiction = urn:iso:std:iso:3166#US
* ^purpose = "(Clinical Focus: This value set contains concepts that describe a functional role played by a member of a care team on a particular care team.),(Data Element Scope: Terms that describe a care team member's functional role on the care team.),(Inclusion Criteria: SNOMED CT Occupations and person concepts commonly used to describe a functional role on a person's care team.),(Exclusion Criteria: This value set is not used to describe a qualification held by a practitioner though many times there is a tight relationship between the practioner's qualifications and the functional role he or she plays on a care team.\nThis value set removed concepts that overlap with concepts in the HL7 Participation Function value set because it is designed to be grouped with that earlier value set.)"
* ^expansion.identifier = "urn:uuid:66eee7c2-0477-44ba-acfc-5602b7ab502c"
* ^expansion.timestamp = "2024-12-10T06:10:33-05:00"
* ^expansion.total = 594
* ^expansion.contains[0].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1012901000168106
* ^expansion.contains[=].display = "Gynecologic oncologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1032781000168105
* ^expansion.contains[=].display = "Kinesiology practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #106289002
* ^expansion.contains[=].display = "Dentist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #106292003
* ^expansion.contains[=].display = "Professional nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #106293008
* ^expansion.contains[=].display = "Nursing personnel (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #106294002
* ^expansion.contains[=].display = "Midwifery personnel (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #106310008
* ^expansion.contains[=].display = "Worker in religion (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #106311007
* ^expansion.contains[=].display = "Minister of religion/related member of religious order (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #106330007
* ^expansion.contains[=].display = "Philologist, translator/interpreter (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #11015003
* ^expansion.contains[=].display = "Minister of religion (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #116154003
* ^expansion.contains[=].display = "Patient (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #11661002
* ^expansion.contains[=].display = "Neuropathologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1172950003
* ^expansion.contains[=].display = "Massage therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1186716007
* ^expansion.contains[=].display = "Intellectual disability psychiatrist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1186914001
* ^expansion.contains[=].display = "Intellectual disability nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #11911009
* ^expansion.contains[=].display = "Nephrologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #119246008
* ^expansion.contains[=].display = "Imam (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #11935004
* ^expansion.contains[=].display = "Obstetrician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1251537007
* ^expansion.contains[=].display = "Sport medicine specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1251542004
* ^expansion.contains[=].display = "Medical coder (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1251548000
* ^expansion.contains[=].display = "Neuroradiologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1254982001
* ^expansion.contains[=].display = "Medical surgical nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1254983006
* ^expansion.contains[=].display = "Chronic care nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1254984000
* ^expansion.contains[=].display = "Rehabilitation nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1255370008
* ^expansion.contains[=].display = "Specialist in naturopathy (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1255371007
* ^expansion.contains[=].display = "Specialist in homeopathy (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1255372000
* ^expansion.contains[=].display = "Phytotherapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1255373005
* ^expansion.contains[=].display = "Specialist in traditional Chinese medicine (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1255374004
* ^expansion.contains[=].display = "Clinical nutritionist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1255514008
* ^expansion.contains[=].display = "Regulatory affairs pharmacist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1255515009
* ^expansion.contains[=].display = "Pharmacogenomics pharmacist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1255517001
* ^expansion.contains[=].display = "Intern in healthcare (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1255518006
* ^expansion.contains[=].display = "Organizational and social psychologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1255519003
* ^expansion.contains[=].display = "Cardiopulmonary technician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1255719001
* ^expansion.contains[=].display = "Neurophysiology technician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1256114007
* ^expansion.contains[=].display = "Nuclear medicine technologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1259214004
* ^expansion.contains[=].display = "Immunohemotherapy specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1259964002
* ^expansion.contains[=].display = "Oral medicine specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1268923002
* ^expansion.contains[=].display = "Obstetric nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1271000175101
* ^expansion.contains[=].display = "Primary obstetrician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1276561000168102
* ^expansion.contains[=].display = "Prosthetist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1276571000168108
* ^expansion.contains[=].display = "Orthotist and prosthetist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1287116005
* ^expansion.contains[=].display = "Chaperone (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1287641002
* ^expansion.contains[=].display = "Oncologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1290289004
* ^expansion.contains[=].display = "Fellow physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1304201007
* ^expansion.contains[=].display = "Neurological physiotherapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1304209009
* ^expansion.contains[=].display = "Cardiorespiratory physiotherapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1304210004
* ^expansion.contains[=].display = "Musculoskeletal physiotherapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #133932002
* ^expansion.contains[=].display = "Caregiver (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #13580004
* ^expansion.contains[=].display = "School dental assistant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #1421009
* ^expansion.contains[=].display = "Specialized surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #14613005
* ^expansion.contains[=].display = "Ordained rabbi (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #14698002
* ^expansion.contains[=].display = "Medical microbiologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158939004
* ^expansion.contains[=].display = "Child care officer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158942005
* ^expansion.contains[=].display = "Residential child care worker (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158943000
* ^expansion.contains[=].display = "Residential youth care worker (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158965000
* ^expansion.contains[=].display = "Medical practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158966004
* ^expansion.contains[=].display = "Medical administrator - national (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158967008
* ^expansion.contains[=].display = "Consultant physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158968003
* ^expansion.contains[=].display = "Consultant surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158969006
* ^expansion.contains[=].display = "Consultant gynecology/obstetrics (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158971006
* ^expansion.contains[=].display = "Hospital registrar (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158972004
* ^expansion.contains[=].display = "House officer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158973009
* ^expansion.contains[=].display = "Occupational physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158974003
* ^expansion.contains[=].display = "Clinical medical officer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158975002
* ^expansion.contains[=].display = "Medical practitioner - teaching (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158977005
* ^expansion.contains[=].display = "Dental administrator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158978000
* ^expansion.contains[=].display = "Dental consultant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158979008
* ^expansion.contains[=].display = "Dental general practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158980006
* ^expansion.contains[=].display = "Dental practitioner - teaching (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158983008
* ^expansion.contains[=].display = "Nurse administrator - national (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158984002
* ^expansion.contains[=].display = "Nursing officer - region (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158985001
* ^expansion.contains[=].display = "Nursing officer - district (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158986000
* ^expansion.contains[=].display = "Nursing administrator - professional body (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158987009
* ^expansion.contains[=].display = "Nursing officer - division (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158988004
* ^expansion.contains[=].display = "Nurse education director (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158989007
* ^expansion.contains[=].display = "Occupational health nursing officer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158990003
* ^expansion.contains[=].display = "Nursing officer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158992006
* ^expansion.contains[=].display = "Midwifery sister (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158993001
* ^expansion.contains[=].display = "Nursing sister (theater) (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158994007
* ^expansion.contains[=].display = "Staff nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158995008
* ^expansion.contains[=].display = "Staff midwife (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158996009
* ^expansion.contains[=].display = "State enrolled nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158997000
* ^expansion.contains[=].display = "District nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158998005
* ^expansion.contains[=].display = "Private nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #158999002
* ^expansion.contains[=].display = "Community midwife (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159001001
* ^expansion.contains[=].display = "Clinic nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159002008
* ^expansion.contains[=].display = "Practice nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159003003
* ^expansion.contains[=].display = "School nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159004009
* ^expansion.contains[=].display = "Nurse teacher (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159005005
* ^expansion.contains[=].display = "Student nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159006006
* ^expansion.contains[=].display = "Dental nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159007002
* ^expansion.contains[=].display = "Community pediatric nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159010009
* ^expansion.contains[=].display = "Hospital pharmacist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159011008
* ^expansion.contains[=].display = "Retail pharmacist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159012001
* ^expansion.contains[=].display = "Industrial pharmacist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159014000
* ^expansion.contains[=].display = "Trainee pharmacist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159016003
* ^expansion.contains[=].display = "Medical radiographer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159017007
* ^expansion.contains[=].display = "Diagnostic radiographer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159018002
* ^expansion.contains[=].display = "Therapeutic radiographer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159019005
* ^expansion.contains[=].display = "Trainee radiographer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159021000
* ^expansion.contains[=].display = "Ophthalmic optician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159022007
* ^expansion.contains[=].display = "Trainee optician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159025009
* ^expansion.contains[=].display = "Remedial gymnast (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159026005
* ^expansion.contains[=].display = "Speech/language therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159027001
* ^expansion.contains[=].display = "Orthoptist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159028006
* ^expansion.contains[=].display = "Trainee remedial therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159033005
* ^expansion.contains[=].display = "Dietitian (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159034004
* ^expansion.contains[=].display = "Podiatrist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159035003
* ^expansion.contains[=].display = "Dental auxiliary (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159036002
* ^expansion.contains[=].display = "Electrocardiogram technician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159037006
* ^expansion.contains[=].display = "Electroencephalogram technician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159038001
* ^expansion.contains[=].display = "Artificial limb fitter (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159039009
* ^expansion.contains[=].display = "Audiology technician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159040006
* ^expansion.contains[=].display = "Pharmacy technician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159041005
* ^expansion.contains[=].display = "Trainee medical technician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159141008
* ^expansion.contains[=].display = "Geneticist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159148002
* ^expansion.contains[=].display = "Research chemist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159174008
* ^expansion.contains[=].display = "Civil engineer - research (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #159972006
* ^expansion.contains[=].display = "Surgical corset fitter (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #160008000
* ^expansion.contains[=].display = "Dental technician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #17561000
* ^expansion.contains[=].display = "Cardiologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #184152007
* ^expansion.contains[=].display = "Care assistant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #184154008
* ^expansion.contains[=].display = "Care manager (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #18803008
* ^expansion.contains[=].display = "Dermatologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #18850004
* ^expansion.contains[=].display = "Laboratory hematologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #19244007
* ^expansion.contains[=].display = "Gerodontist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #20145008
* ^expansion.contains[=].display = "Removable prosthodontist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #21365001
* ^expansion.contains[=].display = "Specialized dentist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #21450003
* ^expansion.contains[=].display = "Neuropsychiatrist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224529009
* ^expansion.contains[=].display = "Clinical assistant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224530004
* ^expansion.contains[=].display = "Senior registrar (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224531000
* ^expansion.contains[=].display = "Registrar (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224532007
* ^expansion.contains[=].display = "Senior house officer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224533002
* ^expansion.contains[=].display = "Medical officer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224534008
* ^expansion.contains[=].display = "Health visitor, nurse/midwife (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224535009
* ^expansion.contains[=].display = "Registered nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224536005
* ^expansion.contains[=].display = "Midwifery tutor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224537001
* ^expansion.contains[=].display = "Accident and Emergency nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224538006
* ^expansion.contains[=].display = "Triage nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224540001
* ^expansion.contains[=].display = "Community nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224541002
* ^expansion.contains[=].display = "Nursing continence advisor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224542009
* ^expansion.contains[=].display = "Coronary care nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224543004
* ^expansion.contains[=].display = "Diabetic nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224544005
* ^expansion.contains[=].display = "Family planning nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224545006
* ^expansion.contains[=].display = "Care of the elderly nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224546007
* ^expansion.contains[=].display = "Infection control nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224547003
* ^expansion.contains[=].display = "Intensive therapy nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224548008
* ^expansion.contains[=].display = "Learning disabilities nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224549000
* ^expansion.contains[=].display = "Neonatal nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224550000
* ^expansion.contains[=].display = "Neurology nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224551001
* ^expansion.contains[=].display = "Industrial nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224552008
* ^expansion.contains[=].display = "Oncology nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224554009
* ^expansion.contains[=].display = "Marie Curie nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224555005
* ^expansion.contains[=].display = "Pain control nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224556006
* ^expansion.contains[=].display = "Palliative care nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224557002
* ^expansion.contains[=].display = "Chemotherapy nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224558007
* ^expansion.contains[=].display = "Radiotherapy nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224559004
* ^expansion.contains[=].display = "Recovery nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224560009
* ^expansion.contains[=].display = "Stoma care nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224562001
* ^expansion.contains[=].display = "Pediatric nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224563006
* ^expansion.contains[=].display = "Mental health nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224564000
* ^expansion.contains[=].display = "Community mental health nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224565004
* ^expansion.contains[=].display = "Renal nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224566003
* ^expansion.contains[=].display = "Hemodialysis nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224567007
* ^expansion.contains[=].display = "Tissue viability nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224569005
* ^expansion.contains[=].display = "Nurse grade (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224570006
* ^expansion.contains[=].display = "Clinical nurse specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224571005
* ^expansion.contains[=].display = "Nurse practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224572003
* ^expansion.contains[=].display = "Nursing sister (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224573008
* ^expansion.contains[=].display = "Charge nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224574002
* ^expansion.contains[=].display = "Ward manager (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224575001
* ^expansion.contains[=].display = "Nursing team leader (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224576000
* ^expansion.contains[=].display = "Nursing assistant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224577009
* ^expansion.contains[=].display = "Healthcare assistant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224578004
* ^expansion.contains[=].display = "Nursery nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224579007
* ^expansion.contains[=].display = "Healthcare service manager (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224580005
* ^expansion.contains[=].display = "Occupational health service manager (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224581009
* ^expansion.contains[=].display = "Community nurse manager (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224583007
* ^expansion.contains[=].display = "Behavior therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224584001
* ^expansion.contains[=].display = "Behavior therapy assistant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224585000
* ^expansion.contains[=].display = "Drama therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224586004
* ^expansion.contains[=].display = "Domiciliary occupational therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224587008
* ^expansion.contains[=].display = "Occupational therapy helper (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224588003
* ^expansion.contains[=].display = "Psychotherapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224589006
* ^expansion.contains[=].display = "Community-based physiotherapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224590002
* ^expansion.contains[=].display = "Play therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224591003
* ^expansion.contains[=].display = "Play specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224592005
* ^expansion.contains[=].display = "Play leader (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224593000
* ^expansion.contains[=].display = "Community-based speech/language therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224594006
* ^expansion.contains[=].display = "Speech/language assistant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224595007
* ^expansion.contains[=].display = "Professional counselor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224596008
* ^expansion.contains[=].display = "Marriage guidance counselor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224597004
* ^expansion.contains[=].display = "Trained nurse counselor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224598009
* ^expansion.contains[=].display = "Trained social worker counselor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224599001
* ^expansion.contains[=].display = "Trained personnel counselor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224600003
* ^expansion.contains[=].display = "Psychoanalyst (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224601004
* ^expansion.contains[=].display = "Assistant psychologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224602006
* ^expansion.contains[=].display = "Community-based podiatrist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224603001
* ^expansion.contains[=].display = "Foot care worker (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224604007
* ^expansion.contains[=].display = "Audiometrician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224606009
* ^expansion.contains[=].display = "Technical healthcare occupation (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224607000
* ^expansion.contains[=].display = "Occupational therapy technical instructor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224608005
* ^expansion.contains[=].display = "Administrative healthcare staff (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224609002
* ^expansion.contains[=].display = "Complementary health worker (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224610007
* ^expansion.contains[=].display = "Supporting services personnel (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224614003
* ^expansion.contains[=].display = "Research associate (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224615002
* ^expansion.contains[=].display = "Research nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224620002
* ^expansion.contains[=].display = "Human aid to communication (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224621003
* ^expansion.contains[=].display = "Palantypist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224622005
* ^expansion.contains[=].display = "Note taker (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224623000
* ^expansion.contains[=].display = "Cuer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224624006
* ^expansion.contains[=].display = "Lipspeaker (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224625007
* ^expansion.contains[=].display = "Interpreter for British sign language (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224626008
* ^expansion.contains[=].display = "Interpreter for Signs supporting English (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #224936003
* ^expansion.contains[=].display = "General practitioner locum (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #22515006
* ^expansion.contains[=].display = "Medical assistant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #225725005
* ^expansion.contains[=].display = "Chaplain (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #225726006
* ^expansion.contains[=].display = "Lactation consultant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #225727002
* ^expansion.contains[=].display = "Midwife counselor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #22731001
* ^expansion.contains[=].display = "Orthopedic surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #229774002
* ^expansion.contains[=].display = "Caregiver (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #22983004
* ^expansion.contains[=].display = "Thoracic surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #23278007
* ^expansion.contains[=].display = "Community health physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #24430003
* ^expansion.contains[=].display = "Physical medicine specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #24590004
* ^expansion.contains[=].display = "Urologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #25941000087102
* ^expansion.contains[=].display = "Adult gerontology primary care nurse practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #25961008
* ^expansion.contains[=].display = "Electroencephalography specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #26031000087100
* ^expansion.contains[=].display = "Pediatric nurse practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #26042002
* ^expansion.contains[=].display = "Dental hygienist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #26071000087103
* ^expansion.contains[=].display = "Primary health care nurse practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #26091000087104
* ^expansion.contains[=].display = "Public health nurse practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #26369006
* ^expansion.contains[=].display = "Public health nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #265937000
* ^expansion.contains[=].display = "Nursing occupation (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #265939002
* ^expansion.contains[=].display = "Medical/dental technicians (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #28229004
* ^expansion.contains[=].display = "Optometrist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #283875005
* ^expansion.contains[=].display = "Parkinson's disease nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #28411006
* ^expansion.contains[=].display = "Neonatologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #28544002
* ^expansion.contains[=].display = "Medical biochemist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #302211009
* ^expansion.contains[=].display = "Specialist registrar (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #303124005
* ^expansion.contains[=].display = "Member of mental health review tribunal (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #303129000
* ^expansion.contains[=].display = "Hospital manager (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #303133007
* ^expansion.contains[=].display = "Responsible medical officer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #303134001
* ^expansion.contains[=].display = "Independent doctor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #304291006
* ^expansion.contains[=].display = "Bereavement counselor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #304292004
* ^expansion.contains[=].display = "Surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #307988006
* ^expansion.contains[=].display = "Medical technician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #308002005
* ^expansion.contains[=].display = "Remedial therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309294001
* ^expansion.contains[=].display = "Emergency department physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309295000
* ^expansion.contains[=].display = "Clinical oncologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309296004
* ^expansion.contains[=].display = "Family planning doctor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309322005
* ^expansion.contains[=].display = "Associate general practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309323000
* ^expansion.contains[=].display = "Partner of general practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309324006
* ^expansion.contains[=].display = "General practitioner assistant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309326008
* ^expansion.contains[=].display = "Deputizing general practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309327004
* ^expansion.contains[=].display = "General practitioner registrar (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309328009
* ^expansion.contains[=].display = "Ambulatory pediatrician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309329001
* ^expansion.contains[=].display = "Community pediatrician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309330006
* ^expansion.contains[=].display = "Pediatric cardiologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309331005
* ^expansion.contains[=].display = "Pediatric endocrinologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309332003
* ^expansion.contains[=].display = "Pediatric gastroenterologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309333008
* ^expansion.contains[=].display = "Pediatric nephrologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309334002
* ^expansion.contains[=].display = "Pediatric neurologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309335001
* ^expansion.contains[=].display = "Pediatric rheumatologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309336000
* ^expansion.contains[=].display = "Pediatric oncologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309337009
* ^expansion.contains[=].display = "Pain management specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309338004
* ^expansion.contains[=].display = "Intensive care specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309339007
* ^expansion.contains[=].display = "Adult intensive care specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309340009
* ^expansion.contains[=].display = "Pediatric intensive care specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309341008
* ^expansion.contains[=].display = "Blood transfusion doctor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309342001
* ^expansion.contains[=].display = "Histopathologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309343006
* ^expansion.contains[=].display = "Physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309345004
* ^expansion.contains[=].display = "Chest physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309346003
* ^expansion.contains[=].display = "Thoracic physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309347007
* ^expansion.contains[=].display = "Clinical hematologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309348002
* ^expansion.contains[=].display = "Clinical neurophysiologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309349005
* ^expansion.contains[=].display = "Clinical physiologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309350005
* ^expansion.contains[=].display = "Diabetologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309351009
* ^expansion.contains[=].display = "Andrologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309352002
* ^expansion.contains[=].display = "Neuroendocrinologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309353007
* ^expansion.contains[=].display = "Reproductive endocrinologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309354001
* ^expansion.contains[=].display = "Thyroidologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309355000
* ^expansion.contains[=].display = "Clinical geneticist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309356004
* ^expansion.contains[=].display = "Clinical cytogeneticist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309357008
* ^expansion.contains[=].display = "Clinical molecular geneticist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309358003
* ^expansion.contains[=].display = "Genitourinary medicine physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309359006
* ^expansion.contains[=].display = "Palliative care physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309360001
* ^expansion.contains[=].display = "Rehabilitation physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309361002
* ^expansion.contains[=].display = "Child and adolescent psychiatrist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309362009
* ^expansion.contains[=].display = "Forensic psychiatrist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309363004
* ^expansion.contains[=].display = "Liaison psychiatrist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309364005
* ^expansion.contains[=].display = "Psychogeriatrician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309366007
* ^expansion.contains[=].display = "Rehabilitation psychiatrist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309367003
* ^expansion.contains[=].display = "Obstetrician and gynecologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309368008
* ^expansion.contains[=].display = "Breast surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309369000
* ^expansion.contains[=].display = "Cardiothoracic surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309371000
* ^expansion.contains[=].display = "Cardiac surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309372007
* ^expansion.contains[=].display = "Ear, nose and throat surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309373002
* ^expansion.contains[=].display = "Endocrine surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309374008
* ^expansion.contains[=].display = "Thyroid surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309375009
* ^expansion.contains[=].display = "Pituitary surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309376005
* ^expansion.contains[=].display = "Gastrointestinal surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309377001
* ^expansion.contains[=].display = "General gastrointestinal surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309378006
* ^expansion.contains[=].display = "Upper gastrointestinal surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309379003
* ^expansion.contains[=].display = "Colorectal surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309380000
* ^expansion.contains[=].display = "Hand surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309381001
* ^expansion.contains[=].display = "Hepatobiliary surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309382008
* ^expansion.contains[=].display = "Ophthalmic surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309383003
* ^expansion.contains[=].display = "Pediatric surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309384009
* ^expansion.contains[=].display = "Pancreatic surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309385005
* ^expansion.contains[=].display = "Transplant surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309386006
* ^expansion.contains[=].display = "Trauma surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309388007
* ^expansion.contains[=].display = "Vascular surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309389004
* ^expansion.contains[=].display = "Medical practitioner grade (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309390008
* ^expansion.contains[=].display = "Hospital consultant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309391007
* ^expansion.contains[=].display = "Visiting specialist registrar (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309392000
* ^expansion.contains[=].display = "Research registrar (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309393005
* ^expansion.contains[=].display = "General practitioner grade (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309394004
* ^expansion.contains[=].display = "General practitioner principal (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309395003
* ^expansion.contains[=].display = "Hospital specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309396002
* ^expansion.contains[=].display = "Associate specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309397006
* ^expansion.contains[=].display = "Research fellow (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309398001
* ^expansion.contains[=].display = "Profession allied to medicine (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309399009
* ^expansion.contains[=].display = "Hospital-based dietitian (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309400002
* ^expansion.contains[=].display = "Domiciliary physiotherapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309401003
* ^expansion.contains[=].display = "General practitioner-based physiotherapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309402005
* ^expansion.contains[=].display = "Hospital-based physiotherapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309403000
* ^expansion.contains[=].display = "Private physiotherapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309404006
* ^expansion.contains[=].display = "Physiotherapy helper (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309409001
* ^expansion.contains[=].display = "Hospital-based speech and language therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309410006
* ^expansion.contains[=].display = "Arts therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309411005
* ^expansion.contains[=].display = "Dance therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309412003
* ^expansion.contains[=].display = "Music therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309413008
* ^expansion.contains[=].display = "Renal dietitian (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309414002
* ^expansion.contains[=].display = "Liver dietitian (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309415001
* ^expansion.contains[=].display = "Oncology dietitian (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309416000
* ^expansion.contains[=].display = "Pediatric dietitian (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309417009
* ^expansion.contains[=].display = "Diabetes dietitian (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309418004
* ^expansion.contains[=].display = "Audiologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309419007
* ^expansion.contains[=].display = "Hearing therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309420001
* ^expansion.contains[=].display = "Audiological scientist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309421002
* ^expansion.contains[=].display = "Hearing aid dispenser (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309422009
* ^expansion.contains[=].display = "Community-based occupational therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309423004
* ^expansion.contains[=].display = "Hospital-based occupational therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309427003
* ^expansion.contains[=].display = "Social services occupational therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309428008
* ^expansion.contains[=].display = "Orthotist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309429000
* ^expansion.contains[=].display = "Surgical fitter (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309434001
* ^expansion.contains[=].display = "Hospital-based podiatrist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309435000
* ^expansion.contains[=].display = "Podiatry assistant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309436004
* ^expansion.contains[=].display = "Lymphedema nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309437008
* ^expansion.contains[=].display = "Community learning disabilities nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309439006
* ^expansion.contains[=].display = "Clinical nurse teacher (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309440008
* ^expansion.contains[=].display = "Community practice nurse teacher (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309441007
* ^expansion.contains[=].display = "Nurse tutor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309442000
* ^expansion.contains[=].display = "Nurse teacher practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309443005
* ^expansion.contains[=].display = "Nurse lecturer practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309444004
* ^expansion.contains[=].display = "Outreach nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309445003
* ^expansion.contains[=].display = "Anesthetic nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309446002
* ^expansion.contains[=].display = "Nurse manager (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309450009
* ^expansion.contains[=].display = "Nurse administrator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309452001
* ^expansion.contains[=].display = "Midwifery grade (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309453006
* ^expansion.contains[=].display = "Registered midwife (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309454000
* ^expansion.contains[=].display = "Student midwife (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309455004
* ^expansion.contains[=].display = "Parentcraft sister (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309457007
* ^expansion.contains[=].display = "Vicar (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309459005
* ^expansion.contains[=].display = "Healthcare professional grade (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #309460000
* ^expansion.contains[=].display = "Restorative dentist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310170009
* ^expansion.contains[=].display = "Pediatric audiologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310171008
* ^expansion.contains[=].display = "Immunopathologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310172001
* ^expansion.contains[=].display = "Audiological physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310173006
* ^expansion.contains[=].display = "Clinical pharmacologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310174000
* ^expansion.contains[=].display = "Private doctor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310175004
* ^expansion.contains[=].display = "Agency nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310176003
* ^expansion.contains[=].display = "Behavioral therapist nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310177007
* ^expansion.contains[=].display = "Cardiac rehabilitation nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310178002
* ^expansion.contains[=].display = "Genitourinary nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310179005
* ^expansion.contains[=].display = "Rheumatology nurse specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310180008
* ^expansion.contains[=].display = "Continence nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310181007
* ^expansion.contains[=].display = "Contact tracing nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310182000
* ^expansion.contains[=].display = "General nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310184004
* ^expansion.contains[=].display = "Liaison nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310185003
* ^expansion.contains[=].display = "Diabetic liaison nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310186002
* ^expansion.contains[=].display = "Nurse psychotherapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310187006
* ^expansion.contains[=].display = "Company nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310188001
* ^expansion.contains[=].display = "Hospital midwife (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310189009
* ^expansion.contains[=].display = "Genetic counselor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310190000
* ^expansion.contains[=].display = "Mental health counselor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310191001
* ^expansion.contains[=].display = "Clinical psychologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310192008
* ^expansion.contains[=].display = "Educational psychologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310193003
* ^expansion.contains[=].display = "Coroner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310194009
* ^expansion.contains[=].display = "Appliance officer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #310512001
* ^expansion.contains[=].display = "Medical oncologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #311441001
* ^expansion.contains[=].display = "School medical officer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #312485001
* ^expansion.contains[=].display = "Integrated midwife (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #3430008
* ^expansion.contains[=].display = "Radiation therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #36682004
* ^expansion.contains[=].display = "Physiotherapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #37154003
* ^expansion.contains[=].display = "Periodontist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #372102007
* ^expansion.contains[=].display = "Registered nurse first assist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #373864002
* ^expansion.contains[=].display = "Outpatient (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #37504001
* ^expansion.contains[=].display = "Orthodontist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #3842006
* ^expansion.contains[=].display = "Chiropractor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #387619007
* ^expansion.contains[=].display = "Optician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #394572006
* ^expansion.contains[=].display = "Medical secretary (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #394618009
* ^expansion.contains[=].display = "Hospital nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #39677007
* ^expansion.contains[=].display = "Internal medicine specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #397897005
* ^expansion.contains[=].display = "Paramedic (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #397903001
* ^expansion.contains[=].display = "Staff grade obstetrician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #397908005
* ^expansion.contains[=].display = "Staff grade practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #3981000175106
* ^expansion.contains[=].display = "Nurse complex case manager (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #398130009
* ^expansion.contains[=].display = "Medical student (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #398238009
* ^expansion.contains[=].display = "Acting obstetric registrar (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #40127002
* ^expansion.contains[=].display = "Dietitian (general) (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #40204001
* ^expansion.contains[=].display = "Hematologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #404940000
* ^expansion.contains[=].display = "Physiotherapist technical instructor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #405277009
* ^expansion.contains[=].display = "Resident physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #405278004
* ^expansion.contains[=].display = "Certified registered nurse anesthetist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #405279007
* ^expansion.contains[=].display = "Attending physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #405623001
* ^expansion.contains[=].display = "Assigned practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #405684005
* ^expansion.contains[=].display = "Professional initiating surgical case (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #405685006
* ^expansion.contains[=].display = "Professional providing staff relief during surgical procedure (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #40570005
* ^expansion.contains[=].display = "Interpreter (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #407542009
* ^expansion.contains[=].display = "Informal caregiver (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #407543004
* ^expansion.contains[=].display = "Primary caregiver (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #408290003
* ^expansion.contains[=].display = "Diabetes key contact (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #408798009
* ^expansion.contains[=].display = "Consultant pediatrician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #408799001
* ^expansion.contains[=].display = "Consultant neonatologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #409974004
* ^expansion.contains[=].display = "Health educator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #409975003
* ^expansion.contains[=].display = "Certified health education specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #413854007
* ^expansion.contains[=].display = "Circulating nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #415075003
* ^expansion.contains[=].display = "Perioperative nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #415506007
* ^expansion.contains[=].display = "Scrub nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #416034003
* ^expansion.contains[=].display = "Primary screener (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #416035002
* ^expansion.contains[=].display = "Secondary screener (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #416160000
* ^expansion.contains[=].display = "Fellow of American Academy of Osteopathy (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #4162009
* ^expansion.contains[=].display = "Dental assistant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #41672002
* ^expansion.contains[=].display = "Respiratory disease specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #416800000
* ^expansion.contains[=].display = "Inpatient (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #41904004
* ^expansion.contains[=].display = "Medical X-ray technician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #420158005
* ^expansion.contains[=].display = "Performer of method (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #420409002
* ^expansion.contains[=].display = "Oculoplastic surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #420678001
* ^expansion.contains[=].display = "Retinal surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #421841007
* ^expansion.contains[=].display = "Admitting physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #422140007
* ^expansion.contains[=].display = "Medical ophthalmologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #422234006
* ^expansion.contains[=].display = "Ophthalmologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #428024001
* ^expansion.contains[=].display = "Clinical trial participant (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #429577009
* ^expansion.contains[=].display = "Patient advocate (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #43018001
* ^expansion.contains[=].display = "Babysitter (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #432100008
* ^expansion.contains[=].display = "Health coach (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #43702002
* ^expansion.contains[=].display = "Occupational health nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #440051000124108
* ^expansion.contains[=].display = "Medical examiner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #442251000124100
* ^expansion.contains[=].display = "Licensed practical nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #442867008
* ^expansion.contains[=].display = "Respiratory therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #443090005
* ^expansion.contains[=].display = "Podiatric surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #444912007
* ^expansion.contains[=].display = "Hypnotherapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #445313000
* ^expansion.contains[=].display = "Asthma nurse specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #445451001
* ^expansion.contains[=].display = "Nurse case manager (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #445521000124102
* ^expansion.contains[=].display = "Advanced practice midwife (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #445531000124104
* ^expansion.contains[=].display = "Lay midwife (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #446050000
* ^expansion.contains[=].display = "Primary care physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #44652006
* ^expansion.contains[=].display = "Pharmaceutical assistant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #446701002
* ^expansion.contains[=].display = "Addiction medicine specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #449161006
* ^expansion.contains[=].display = "Physician assistant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #450044741000087104
* ^expansion.contains[=].display = "Acupuncturist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #45181000087107
* ^expansion.contains[=].display = "Pediatric ophthalmologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #45191000087109
* ^expansion.contains[=].display = "Pediatric otorhinolaryngologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #45201000087106
* ^expansion.contains[=].display = "Pediatric urologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #453061000124100
* ^expansion.contains[=].display = "Pharmacist specialist (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #453071000124107
* ^expansion.contains[=].display = "Primary care pharmacist (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #453081000124105
* ^expansion.contains[=].display = "Infusion pharmacist (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #453091000124108
* ^expansion.contains[=].display = "Receiving provider (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #453101000124102
* ^expansion.contains[=].display = "Consultant pharmacist (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #453111000124104
* ^expansion.contains[=].display = "Dispensing pharmacist (person)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #453121000124107
* ^expansion.contains[=].display = "Emergency department healthcare professional (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #453231000124104
* ^expansion.contains[=].display = "Primary care provider (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #45440000
* ^expansion.contains[=].display = "Rheumatologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #45544007
* ^expansion.contains[=].display = "Neurosurgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #457141000124107
* ^expansion.contains[=].display = "Locum tenens attending physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #457151000124109
* ^expansion.contains[=].display = "Locum tenens admitting physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #45956004
* ^expansion.contains[=].display = "Sanitarian (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #46255001
* ^expansion.contains[=].display = "Pharmacist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #471302004
* ^expansion.contains[=].display = "Government midwife (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #48639005
* ^expansion.contains[=].display = "Ordained minister (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #48740002
* ^expansion.contains[=].display = "Philologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #49203003
* ^expansion.contains[=].display = "Dispensing optician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #49993003
* ^expansion.contains[=].display = "Oral surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #50149000
* ^expansion.contains[=].display = "Endodontist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #50681000087109
* ^expansion.contains[=].display = "Bariatric surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #5191000124109
* ^expansion.contains[=].display = "Private midwife (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #5275007
* ^expansion.contains[=].display = "Auxiliary nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #53564008
* ^expansion.contains[=].display = "Ordained clergy (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #54503009
* ^expansion.contains[=].display = "Faith healer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #56397003
* ^expansion.contains[=].display = "Neurologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #56466003
* ^expansion.contains[=].display = "Public health physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #56542007
* ^expansion.contains[=].display = "Medical record administrator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #56545009
* ^expansion.contains[=].display = "Cardiovascular surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #57654006
* ^expansion.contains[=].display = "Fixed prosthodontist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #59058001
* ^expansion.contains[=].display = "General physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #59169001
* ^expansion.contains[=].display = "Orthopedic technician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #59317003
* ^expansion.contains[=].display = "Dental prosthesis maker and repairer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #59944000
* ^expansion.contains[=].display = "Psychologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #60008001
* ^expansion.contains[=].display = "Public health nutritionist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #611581000124105
* ^expansion.contains[=].display = "Cognitive neuropsychologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #611601000124100
* ^expansion.contains[=].display = "Neonatal nurse practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #611611000124102
* ^expansion.contains[=].display = "Counseling psychologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #611621000124105
* ^expansion.contains[=].display = "Clinical neuropsychologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #611701000124107
* ^expansion.contains[=].display = "Sleep psychologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #61207006
* ^expansion.contains[=].display = "Medical pathologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #61246008
* ^expansion.contains[=].display = "Laboratory medicine specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #61345009
* ^expansion.contains[=].display = "Otorhinolaryngologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #61894003
* ^expansion.contains[=].display = "Endocrinologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #62247001
* ^expansion.contains[=].display = "Family medicine specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #63098009
* ^expansion.contains[=].display = "Clinical immunologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #64220005
* ^expansion.contains[=].display = "Religious worker (member of religious order) (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #651501000124106
* ^expansion.contains[=].display = "Pediatric emergency medicine physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #65803006
* ^expansion.contains[=].display = "Missionary (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #66476003
* ^expansion.contains[=].display = "Oral pathologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #66862007
* ^expansion.contains[=].display = "Radiologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #671101000124102
* ^expansion.contains[=].display = "Family nurse practitioner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #67811000052107
* ^expansion.contains[=].display = "Pediatric hematology and oncology physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #6816002
* ^expansion.contains[=].display = "Specialized nurse (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #68191000052106
* ^expansion.contains[=].display = "Neuropsychologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #6868009
* ^expansion.contains[=].display = "Hospital administrator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #68867008
* ^expansion.contains[=].display = "Public health dentist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #68950000
* ^expansion.contains[=].display = "Prosthodontist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #69280009
* ^expansion.contains[=].display = "Specialized physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #71838004
* ^expansion.contains[=].display = "Gastroenterologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #720503005
* ^expansion.contains[=].display = "Sleep medicine specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #721936008
* ^expansion.contains[=].display = "Occupation medicine specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #721937004
* ^expansion.contains[=].display = "Preventive medicine specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #721938009
* ^expansion.contains[=].display = "Tropical medicine specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #721939001
* ^expansion.contains[=].display = "Vascular medicine specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #721940004
* ^expansion.contains[=].display = "Legal medicine specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #721941000
* ^expansion.contains[=].display = "Health psychologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #721942007
* ^expansion.contains[=].display = "Cardiovascular perfusionist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #721943002
* ^expansion.contains[=].display = "Clinical immunology and allergy specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #73265009
* ^expansion.contains[=].display = "Nursing aid (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #734293001
* ^expansion.contains[=].display = "Clinical pharmacist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #734294007
* ^expansion.contains[=].display = "Pharmacist prescriber (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #75271001
* ^expansion.contains[=].display = "Professional midwife (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #76166008
* ^expansion.contains[=].display = "Practical aid (pharmacy) (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #76231001
* ^expansion.contains[=].display = "Osteopath (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #763292005
* ^expansion.contains[=].display = "Radiation oncologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768730001
* ^expansion.contains[=].display = "Home health aide (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768731002
* ^expansion.contains[=].display = "Home helper (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768732009
* ^expansion.contains[=].display = "School health educator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768733004
* ^expansion.contains[=].display = "Spiritual advisor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768734005
* ^expansion.contains[=].display = "Research study coordinator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768815003
* ^expansion.contains[=].display = "Investigative specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768816002
* ^expansion.contains[=].display = "Associate investigator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768817006
* ^expansion.contains[=].display = "Co-principal investigator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768818001
* ^expansion.contains[=].display = "Principal investigator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768819009
* ^expansion.contains[=].display = "Medically responsible investigator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768820003
* ^expansion.contains[=].display = "Care coordinator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768821004
* ^expansion.contains[=].display = "Care team coordinator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768822006
* ^expansion.contains[=].display = "Rehabilitation coordinator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768825008
* ^expansion.contains[=].display = "Doula (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768826009
* ^expansion.contains[=].display = "Crisis counselor (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768827000
* ^expansion.contains[=].display = "Nutritionist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768828005
* ^expansion.contains[=].display = "Epidemiologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768829002
* ^expansion.contains[=].display = "Community dietician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768832004
* ^expansion.contains[=].display = "Case manager (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768833009
* ^expansion.contains[=].display = "Discharging physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768834003
* ^expansion.contains[=].display = "Disease manager (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768836001
* ^expansion.contains[=].display = "Patient navigator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768837005
* ^expansion.contains[=].display = "Hospitalist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #768839008
* ^expansion.contains[=].display = "Consultant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #76899008
* ^expansion.contains[=].display = "Infectious disease specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #769038007
* ^expansion.contains[=].display = "Researcher (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #78703002
* ^expansion.contains[=].display = "General surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #78729002
* ^expansion.contains[=].display = "Diagnostic radiologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #789543004
* ^expansion.contains[=].display = "Sonographer (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #79898004
* ^expansion.contains[=].display = "Auxiliary midwife (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #79918004
* ^expansion.contains[=].display = "Ordained priest (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #80409005
* ^expansion.contains[=].display = "Translator (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #80546007
* ^expansion.contains[=].display = "Occupational therapist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #80584001
* ^expansion.contains[=].display = "Psychiatrist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #80933006
* ^expansion.contains[=].display = "Nuclear medicine specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #81464008
* ^expansion.contains[=].display = "Clinical pathologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #82296001
* ^expansion.contains[=].display = "Pediatrician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #83273008
* ^expansion.contains[=].display = "Anatomic pathologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #83685006
* ^expansion.contains[=].display = "Gynecologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #840583002
* ^expansion.contains[=].display = "Allied health assistant (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #840584008
* ^expansion.contains[=].display = "Allied health student (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #85733003
* ^expansion.contains[=].display = "General pathologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #8724009
* ^expansion.contains[=].display = "Plastic surgeon (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #878785002
* ^expansion.contains[=].display = "Clinical respiratory physiologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #878786001
* ^expansion.contains[=].display = "Operating room technician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #878787005
* ^expansion.contains[=].display = "Anesthesia technician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #88189002
* ^expansion.contains[=].display = "Anesthesiologist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #897187007
* ^expansion.contains[=].display = "Sexual assault nurse examiner (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #90201008
* ^expansion.contains[=].display = "Pedodontist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #90655003
* ^expansion.contains[=].display = "Geriatrics specialist (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #90981000221101
* ^expansion.contains[=].display = "Endoscopist physician (occupation)"
* ^expansion.contains[+].system = "http://snomed.info/sct"
* ^expansion.contains[=].version = "http://snomed.info/sct/731000124108/version/20240901"
* ^expansion.contains[=].code = #9371000175105
* ^expansion.contains[=].display = "Adolescent medicine specialist (occupation)"
* include codes from system http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20240901
    where concept descendent-of #223366009
* include codes from system http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20240901
    where concept descendent-of #303118004
* include codes from system http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20240901
    where concept is-a #106310008
* include codes from system http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20240901
    where concept is-a #224610007
* include codes from system http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20240901
    where concept is-a #769038007
* include codes from system http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20240901
    where concept is-a #768820003
* include codes from system http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20240901
    where concept is-a #768734005
* include codes from system http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20240901
    where concept is-a #229774002
* exclude codes from system http://snomed.info/sct|http://snomed.info/sct/731000124108/version/20240901
    where concept is-a #105455006