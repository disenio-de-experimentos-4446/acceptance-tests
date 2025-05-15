# HU10 - Autenticar usuarios por medio de código de organización
Feature: Autenticación por código de organización

  Scenario: Miembro de equipo se registra correctamente con código válido
    Given el gestor envía el código de invitación al usuario miembro de equipo
    When el usuario ingresa el código al registrarse en la aplicación
    Then ingresa sin problema a la organización del código

  # Acceptance Test:
  # - El código enviado es aceptado y permite el registro.
  # - El usuario queda registrado dentro de la organización asociada al código.

  Scenario: Miembro de equipo ingresa un código inválido
    Given el gestor no envía el código de invitación al usuario miembro de equipo
    When el usuario no ingresa el código o ingresa un código incorrecto al registrarse
    Then sale un error solicitando que ingrese un código válido

  # Acceptance Test:
  # - Se valida que el código no esté vacío ni incorrecto.
  # - Se muestra mensaje de error claro al usuario para ingresar un código válido.
