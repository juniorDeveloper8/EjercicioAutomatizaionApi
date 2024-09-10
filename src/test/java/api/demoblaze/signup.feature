Feature: Pruebas de Signup

  Background:
    * url 'https://api.demoblaze.com/signup'

  Scenario Outline: Intentar crear un usuario ya existente
    Given request { "username": "<username>", "password": "<password>" }
    When method post
    Then status 200
    And match response.errorMessage == "<errorMessage>"

    Examples:
      | username         | password    | errorMessage             |
      | usuarioExistente | password123 | This user already exist. |

  Scenario Outline: Crear un nuevo usuario
    Given request { "username": "<username>", "password": "<password>" }
    When method post
    Then status 200
    And match response.errorMessage == null

    Examples:
      | username          | password     |
      | RoberthZambrano55 | password1234 |
#      | RoberthZambrano100 | password1234 |
#      | Zambrano852 | password1234 |
