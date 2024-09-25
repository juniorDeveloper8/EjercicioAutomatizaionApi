Feature: Pruebas de Signup

  Background:
    * url 'https://api.demoblaze.com/signup'
    * def testData = karate.read('classpath:api/demoblaze/template/signup_data.json')
    * def user = testData.user
    * def usuarioExistente = testData.usuarioExistente
    * print 'Loaded test data:', testData

  Scenario: Crear un nuevo usuario
    Given request { username: '#(user.username)', password: '#(user.password)' }
    When method post
    Then status 200
    And match response.errorMessage == user.errorMessage

  Scenario: Intentar crear un usuario ya existente
    Given request { username: '#(signup_data.usuarioExistente.username)', password: '#(signup_data.usuarioExistente.password)' }
    When method post
    Then status 200
    And match response.errorMessage == usuarioExistente.errorMessage