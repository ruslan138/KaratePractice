Feature: Basic Zippo test


  #verify status and header
  Scenario: test status
   Given  url 'https://api.zippopotam.us/us/11225'
    When method get
    Then status 200
    * match header Content-Type == 'application/json'

 #@run
 Scenario: send header
  Given url 'https://api.zippopotam.us/us/11225'
  * header Accept = 'application/json'
  When method get
  Then status 200
  * match header Content-Type == 'application/json'



  Scenario:
   * print "hello world"
   * def name = "insert boss"
   * print name
   * print "hello" + name
   * print 1+1

 @run
   Scenario: verify response
    Given url 'https://api.zippopotam.us/us/11225'
    When  method get
    #Then  print response
     * print response.country
     * print response.country == 'United States'