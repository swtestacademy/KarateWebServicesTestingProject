Feature: Default Feature

  @GetDefaultHeader
  Scenario:
    * def headerFun = read('classpath:default/default-header.js')
    * def cont = headerFun('application/json')
    * print cont