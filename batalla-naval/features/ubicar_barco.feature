Feature: ubicar un barco
  Como usuario
  quiero ubicar mis barcos
  para jugar a la batalla naval

  Background:
    Given Una batalla naval

  Scenario: Ubico mi barco exitosamente
    Given Un tablero
    When  Quiero ubicar un barco
    Then  El barco ocupa una posicion en el tablero

  @wip
  Scenario: No se puede ubicar un barco en una posición ya ocupada
    Given Un tablero
    When  Quiero ubicar un barco
    Then  El barco no se puede ubicar

  @wip
  Scenario: No puedo ubicar mi barco en una posición fuera del tablero
    Given Un tablero
    When  Quiero ubicar un barco
    Then  El barco no se puede ubicar