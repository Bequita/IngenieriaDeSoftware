Feature: Operaciones basicas

  Scenario: suma
    Given voy a la pagina operaciones
    And   un operando suma es 1
    And   otro operando suma es 2
    When  los sumo
    Then  el resultado es 3

  Scenario: resta
    Given voy a la pagina operaciones
    And   un operando resta es 5
    And   otro operando resta es 4
    When  los resto
    Then  el resultado es 1

  @wip
  Scenario: promedio
    Given voy a la pagina operaciones
    And   un operando a promediar es 10
    And   otro operando es 4
    When  los promedio
    Then  el resultado es 7