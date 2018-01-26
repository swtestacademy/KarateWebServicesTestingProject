Feature: Pharmacies Get Default City Code

  Background:
    * def cityCall = call read('../city/city.feature')
    * url pharmaciesUrl


  @PharmaciesByCity
  Scenario: Pharmacies Get By City
    Given path 'city'
    And path cityCall.cityCode
    When method get
    Then status 200
    And match response.total_pharmacies == 123
    And match each response.results[*].city == cityCall.cityName