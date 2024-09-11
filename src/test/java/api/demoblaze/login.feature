Feature: Pruebas de Inicio de Sesión

  Background:
    * url 'https://api.demoblaze.com/login'
    * def testData = karate.read('classpath:api/demoblaze/template/login_data.json')

  Scenario Outline: Iniciar sesión con <username> y <password>
    * def loginData = karate.get('testData.logins').find(x => x.username == '<username>' && x.password == '<password>')
    Given request { "username": "<username>", "password": "<password>" }
    When method post
    Then status <status>
    * def response = response
    * def hasAuthToken = response.Auth_token
    * def hasErrorMessage = response.errorMessage
    * if (hasAuthToken) karate.match(response.Auth_token, '#string')
    * if (hasErrorMessage) karate.match(response.errorMessage, <errorMessage>)
    And print response

    Examples:
      | username               | password    | status | errorMessage           |
      | prueba30               | testing852  | 200    | null                   |
      | usuarioExistentsdfsdfe | password123 | 200    | 'User does not exist.' |
