Feature: disparar a barcos enemigos
  Como usuario
  quiero disparar a los barcos enemigos
  para hundirlos

  Scenario: Disparo y toco agua
    Given Una batalla naval y un tablero vacio
    When  Disparo a la coordenada a3
    Then  Toco agua, porque no habia ningun barco

  Scenario: Disparo y toco un barco pero no lo hundo
    Given Una batalla naval y un barco ubicado en las coordenadas b5 b6 b7
    When  Disparo a la coordenada b5
    Then  Le acierto al barco, pero no lo hundo

  Scenario: Disparo y toco un barco y lo hundo
    Given Una batalla naval y un barco ubicado en las coordenadas f7
    When  Disparo a la coordenada f7
    Then  Le acierto al barco, y lo hundo