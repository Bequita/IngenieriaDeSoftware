Feature: Operaciones basicas

  Background:
    Given una calculadora

  Scenario: suma
    Given un operando es 1
    And   otro operando es 2
    When  los sumo
    Then  el resultado es 3

  Scenario: resta
    Given un operando es 5
    And   otro operando es 4
    When  los resto
    Then  el resultado es 1

  Scenario: promedio
    Given un operando es 10
    And   otro operando es 4
    When  los promedio
    Then  el resultado es 7