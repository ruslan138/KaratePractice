
  Feature: data driven test

    @scenario
    Scenario Outline: test state name <zip>
      Given  url 'https://api.zippopotam.us/us/<zip>'
      When  method get
      Then  match response.places[0].state == '<state>'

      Examples:

      |zip|state|
      |23451|Virginia|
      |11225|New York|