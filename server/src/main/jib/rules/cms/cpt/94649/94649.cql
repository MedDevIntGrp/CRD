library Rule version '0.1.0'
using FHIR version '3.0.0'
include FHIRHelpers version '3.0.0' called FHIRHelpers

parameter Patient Patient
parameter device_request DeviceRequest
parameter practitioner_location Location

define "Age":
  AgeInYears()

define RULE_APPLIES:
  "Age" >= 0 and "Age" <= 90

define PRIORAUTH_REQUIRED:
  false

define DOCUMENTATION_REQUIRED:
  true

define RESULT_Summary:
  'Authorization required.'

define RESULT_Details:
  'Authorization is required, follow the link for more information.'

define RESULT_InfoLink:
    'https://www.cms.gov/Outreach-and-Education/Medicare-Learning-Network-MLN/MLNProducts/Downloads/ProviderComplianceTipsforNebulizersandRelatedDrugs-ICN909469.pdf'
