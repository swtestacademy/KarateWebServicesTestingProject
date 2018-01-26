Feature: Cites Feature

  Background:
    * url pharmaciesUrl

  @Cities
  Scenario: Get Cities
    Given path 'city'
    When method get
    Then status 200
    And match response.total_cities == 14
    And def cityCode = response.results[8].city_id
    And def cityName = response.results[8].city_name
    And print cityCode
    * print cityName