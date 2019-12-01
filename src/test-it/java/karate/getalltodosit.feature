Feature: Get All Todos

  Background:
    * url config.placeholderUrl

  Scenario: get all todos and then get the first todo by id

    Given path 'todos'
    When method get
    Then status 200

    * def first = response[0]

    Given path 'todos', first.id
    When method get
    Then status 200

  Scenario: get all todos and then get the last todo by id

    Given path 'todos'
    When method get
    Then status 200

    * def last = response[response.length-1]

    Given path 'todos', last.id
    When method get
    Then status 200
