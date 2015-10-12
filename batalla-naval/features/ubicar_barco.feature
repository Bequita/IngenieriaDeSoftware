Feature: ubicar un barco
  Como usuario
  quiero ubicar mis barcos
  para jugar a la batalla naval

  Scenario: Ubico mi barco exitosamente
    Given Una batalla naval
    When  Ubico un barco destructor en la posicion a3
    Then  El barco destructor ocupa 3 posiciones en el tablero, a3 a4 a5

  @wip
  Scenario: No se puede ubicar un barco en una posición ya ocupada
    Given Una posicion del juego y un barco, con un barco ya ubicado en esa celda
    When  Ubico ese barco
    Then  El barco no se puede ubicar

  @wip
  Scenario: No puedo ubicar mi barco en una posición fuera del tablero
    Given Una posicion del juego y un barco, y la posicion cae fuera del tablero
    When  Ubico ese barco
    Then  El barco no se puede ubicar