Feature: ubicar un barco
  Como usuario
  quiero ubicar mis barcos
  para jugar a la batalla naval

  @wip
  Scenario: Ubico mi barco exitosamente
    Given Selecciono un barco para ubicar
    When  Lo ubico
    Then  El barco ocupa una posicion en el tablero

  @wip
  Scenario: No se puede ubicar un barco en una posición ya ocupada
    Given Selecciono un barco para ubicar
    When  Lo ubico
    Then  El barco no se puede ubicar

  @wip
  Scenario: No puedo ubicar mi barco en una posición fuera del tablero
    Given Selecciono un barco para ubicar
    When  Lo ubico
    Then  El barco no se puede ubicar