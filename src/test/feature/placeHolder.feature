
  Feature: PlaceHolder test

    Background: 
      * url 'https://jsonplaceholder.typicode.com'


      Scenario: verify value in responce

        Given path "/albums/1"
        When  method get
        Then status 200
        And match response.id == 1



    Scenario: verify value in responce

      Given path "/albums"
      When  method get
      Then status 200
      And print  response[0]
      And  match  response[0].id == 1



    Scenario: verify value in responce

      Given path "/albums/1"
      When  method get
      Then status 200
      And match response == { "userId": 1, "id": 1, "title": "quidem molestiae enim" }



    Scenario: verify value in responce

      Given path "/albums/1"
      When  method get
      Then status 200
      * match response ==
      """
    { "userId": 1, "id": 1, "title":
    "quidem molestiae enim" }
      """

      @data
    Scenario: verify data type

      Given path "/albums/1"
      When  method get
      Then status 200
      And match response == { "userId": '#number', "id": '#number', "title": '#string' }


    @data2
    Scenario: verify data type

      Given path "/albums/1"
      When  method get
      Then status 200
      And match response.id == '#present'
      And match response.dodd == '#notpresent'

    @data3
    Scenario: verify data type

      Given path "/albums/1"
      When  method get
      Then status 200
      And match response contains {"id": 1}
      And match response contains {"title": #string}


    @data4
    Scenario: verify length

      Given path "/albums"
      When  method get
      Then status 200
      And assert response.length == 100
