Feature: Pruebas de Signup

  Background:
    * url 'https://api.demoblaze.com/signup'
    * def registro = karate.read('classpath:signup_data.json')
    * def user = registro.user
    * def usuarioExistente = registro.usuarioExistente
    * print 'Loaded test data:', registro

  Scenario: Crear un nuevo usuario
    Given request { username: '#(user.username)', password: '#(user.password)' }
    When method post
    Then status 200
    And match response.errorMessage == user.errorMessage

  Scenario: Intentar crear un usuario ya existente
    Given request { username: '#(registro.usuarioExistente.username)', password: '#(registro.usuarioExistente.password)' }
    When method post
    Then status 200
    And match response.errorMessage == usuarioExistente.errorMessage