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


  Scenario Outline: Intentar crear un usuario ya existente
    Given request { "username": "<username>", "password": "<password>" }
    When method post
    Then status 200
    And match response.errorMessage == "<errorMessage>"

    Examples:
      | username         | password    | errorMessage             |
      | usuarioExistente | password123 | This user already exist. |

