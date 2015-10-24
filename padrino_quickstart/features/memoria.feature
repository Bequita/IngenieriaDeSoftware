Feature: memoria de cantidad de operaciones

  Scenario: no hice operaciones
    Given voy a la pagina operaciones
    And   no hice operaciones
    When  consulto cantidad de operaciones realizadas
    Then  la cantidad de operaciones es 0

  Scenario: cuando hago operaciones la cantidad de incrementa
    Given voy a la pagina operaciones
    And   hago una suma
    And   hago una resta
    When  consulto cantidad de operaciones realizadas
    Then  la cantidad de operaciones es 2

  @wip
  Scenario: cuando reseteo la cantidad de operaciones vuelve a cero
    Given voy a la pagina operaciones
    And   hago una suma
    And   hago una resta
    And   reseteo la memoria
    When  consulto cantidad de operaciones realizadas
    Then  la cantidad de operaciones es 0