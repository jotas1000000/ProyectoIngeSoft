Feature:

Como jugador.
Quiero poder ingresar mi nombre.
Para poder identificarme con uno de ellos.

    Scenario: Ingresar correctamente 
    Given visito la pagina Home
    And presiono el botonlink "Jugar"
    When lleno los campos con "Juan" y "Alvaro" y presiono el boton "Confirmar"
    Then deberia ver un titulo "Seleccione el Juego y la dificultad"

    Scenario: Ingresar con un faltante
    Given visito la pagina Home
    And presiono el botonlink "Jugar"
    When lleno los campos con "Juan" y "" y presiono el boton "Confirmar"
    Then deberia ver un titulo "Seleccione el Juego y la dificultad"

#Como jugador.
#Quiero conocer la modalidad de juego.
#Para elegir el que sea mas de mi agrado.

    Scenario: Seleccionar Numeros
    Given visito la pagina Home
    And presiono el botonlink "Jugar"
    When lleno los campos con "Juan" y "Alvaro" y presiono el boton "Confirmar"
    When selecciono los radio buttons "Numeros" , "Facil" y presiono el boton "Confirmar"
    Then deberia ver un titulo "Jugador Alvaro escriba el numero secreto para el jugador Juan"

    Scenario: No selecciono ningun tipo de juego
    Given visito la pagina Home
    And presiono el botonlink "Jugar"
    When lleno los campos con "Juan" y "Alvaro" y presiono el boton "Confirmar"
    When selecciono los radio buttons "" , "Facil" y presiono el boton "Confirmar"
    Then deberia ver un titulo ""

#Como jugador.
#Quiero seleccionar el nivel de juego.
#Para definir la dificultad del mismo.

    Scenario: Seleccionar la dificultad
    Given visito la pagina Home
    And presiono el botonlink "Jugar"
    When lleno los campos con "Juan" y "Alvaro" y presiono el boton "Confirmar"
    When selecciono los radio buttons "Numeros" , "Facil" y presiono el boton "Confirmar"
    Then deberia ver un titulo "Jugador Alvaro escriba el numero secreto para el jugador Juan"

    Scenario: No selecciono ninguna dificultad
    Given visito la pagina Home
    And presiono el botonlink "Jugar"
    When lleno los campos con "Juan" y "Alvaro" y presiono el boton "Confirmar"
    When selecciono los radio buttons "Numeros" , "" y presiono el boton "Confirmar"
    Then deberia ver un titulo ""

#Como Jugador
#Quiero poder ingresar el código secreto que adivinará el otro jugador
#Para poder iniciar una partida

    Scenario: Registrar un numero o color secreto correctamente
    Given visito la pagina Home
    And presiono el botonlink "Jugar"
    When lleno los campos con "Juan" y "Alvaro" y presiono el boton "Confirmar"
    When selecciono los radio buttons "Numeros" , "Facil" y presiono el boton "Confirmar"
    When ingreso en el campo el numero secreto 1234 y presiono "Confirmar"
    Then deberia ver un titulo "Jugador Juan puedes comenzar."

    Scenario: Registrar un numero o color secreto con elementos repetidos
    Given visito la pagina Home
    And presiono el botonlink "Jugar"
    When lleno los campos con "Juan" y "Alvaro" y presiono el boton "Confirmar"
    When selecciono los radio buttons "Numeros" , "Facil" y presiono el boton "Confirmar"
    When ingreso en el campo el numero secreto 1111 y presiono "Confirmar"
    Then deberia ver un titulo "Jugador Alvaro escriba el numero secreto para el jugador Juan"

    Scenario: Registrar un numero o color secreto sin el formato correcto
    Given visito la pagina Home
    And presiono el botonlink "Jugar"
    When lleno los campos con "Juan" y "Alvaro" y presiono el boton "Confirmar"
    When selecciono los radio buttons "Numeros" , "Facil" y presiono el boton "Confirmar"
    When ingreso en el campo el numero secreto 11 y presiono "Confirmar"
    Then deberia ver un titulo "Jugador Alvaro escriba el numero secreto para el jugador Juan"