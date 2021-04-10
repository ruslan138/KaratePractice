
   @token
  Feature: Token practice

    Scenario: save token as variable


      Given url 'https://cybertek-reservation-api-qa.herokuapp.com'
      When  path '/sign'
      Then param email = 'teacherva5@gmail.com'
      Then  param password = 'maxpayne'
      When method get
      Then status 200
      * def token = response.accessToken

      Given path 'api/students'
      * header Authorization = token
      When method get
      Then status 200
      * print response.length