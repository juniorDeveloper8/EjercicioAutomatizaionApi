Feature: Pruebas de Inicio de Sesión

  Background:
    * url 'https://api.demoblaze.com/login'
    * def login = karate.read('classpath:loginJson.json')

  Scenario: Iniciar sesión con un usuario válido
    Given request { username: '#(login.userValid.username)', password: '#(login.userValid.password)' }
    When method post
    Then status 200
    * def response = response
    * def hasAuthToken = response.Auth_token
    * def hasErrorMessage = response.errorMessage
    * if (hasAuthToken) karate.match(response.Auth_token, '#string')
    * if (hasErrorMessage) karate.match(response.errorMessage, null)
    And print response

  Scenario: Iniciar sesión con un usuario que no existe
    Given request { username: '#(login.loginInvalid.username)', password: '#(login.loginInvalid.password)' }
    When method post
    Then status 200
    * def response = response
    * def hasAuthToken = response.Auth_token
    * def hasErrorMessage = response.errorMessage
    * if (hasAuthToken) karate.match(response.Auth_token, null)
    * if (hasErrorMessage) karate.match(response.errorMessage, 'User does not exist.')
    And print response
