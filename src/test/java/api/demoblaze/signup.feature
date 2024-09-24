Feature: Pruebas de Signup

  Background:
    * url 'https://api.demoblaze.com/signup'
    * def testData = karate.read('classpath:api/demoblaze/template/signup_data.json')
    * print 'Loaded test data:', testData

  Scenario: Crear un nuevo usuario (userExisting)
    * def user = testData.users.find(u => u.username == 'userExisting')
    * print 'User data for username userExisting:', user
    * def userExists = user != null
    * assert userExists == true
    Given request { "username": user.username, "password": user.password }
    When method post
    Then status 200
    And match response.errorMessage == user.errorMessage

  Scenario: Intentar crear un usuario ya existente
    * def existingUser = testData.users.find(u => u.username == 'userExisting')
    Given request { "username": existingUser.username, "password": existingUser.password }
    When method post
    Then status 200
    And match response.errorMessage == existingUser.errorMessage