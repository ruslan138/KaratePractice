
Feature: obmd api

  @om
  Scenario:  pass single querry param
    Given  url 'http://www.omdbapi.com/'
    * param apikey = 'a9faab96'
    When  method get
    Then status 200

  @om2
  Scenario:  pass single querry param
    Given  url 'http://www.omdbapi.com/'
   # * param apikey = 'a9faab96'
    * params  {apikey : 'a9faab96', t : 'jump street'}
    When  method get
    Then status 200
    Then  match response contains {"Year": "2012"}