Feature:

Como jugador 
Quiero poder ver el menu de inicio
Para iniciar con el juego

    Scenario: ingresar al menu
    Given visito la pagina de instrucciones
    And presiono el boton link "Ir a la pagina principal"
    Then deberia ir a la pagina home del juego "Vacas y Toros"