Feature: Pharmacies Get Default City Code

  Background:
    * url pharmaciesUrl

  @GetPharmaciesByDefaultCity
  Scenario: Pharmacies Get Istanbul
    Given path 'city/34'
    When method get
    Then status 200
    And match response.total_pharmacies == 123
    And match each response.results[*].city == 'İstanbul'