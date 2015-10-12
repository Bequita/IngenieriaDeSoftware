Feature: ubicar un barco
  Como usuario
  quiero ubicar mis barcos
  para jugar a la batalla naval

  Scenario: Ubico mi barco exitosamente
    Given Una batalla naval
    When  Ubico un barco destructor en la posicion a3
    Then  El barco destructor ocupa 3 posiciones en el tablero, a3 a4 a5

  Scenario: No se puede ubicar un barco en una posición ya ocupada
    Given Una batalla naval, un barco y la posicion f5 ocupada
    When  Ubico un barco crucero en la posicion f5
    Then  El barco no se puede ubicar, porque ya hay un barco en esa posicion

  Scenario: No puedo ubicar mi barco en una posición fuera del tablero
    Given Una batalla naval
    When  Ubico un barco en la posicion k5
    Then  El barco no se puede ubicar, porque cae fuera del tablero