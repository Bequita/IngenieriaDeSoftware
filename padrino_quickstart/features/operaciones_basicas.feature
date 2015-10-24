Feature: Operaciones basicas

  Scenario: suma
    Given voy a la pagina operaciones y selecciono suma
    And   un operando es 1
    And   otro operando es 2
    When  los sumo
    Then  el resultado es 3

  Scenario: resta
    Given voy a la pagina operaciones y selecciono resta
    And   un operando es 5
    And   otro operando es 4
    When  los resto
    Then  el resultado es 1

  Scenario: promedio
    Given voy a la pagina operaciones y selecciono promedio
    And   un operando a promediar es 10
    And   otro operando a  promediar es 4
    When  los promedio
    Then  el resultado es 7