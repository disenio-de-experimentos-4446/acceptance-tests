# HU26 - Postear un post
Feature: Creación de posts en la comunidad

  Scenario: Se crea un post exitosamente
    Given el gestor está en la sección de comunidad
    When presiona el botón de agregar post e ingresa título, descripción e imagen referencial
    Then el post es agregado a la lista y se muestra un mensaje confirmando la publicación

  # Acceptance Test:
  # - El post aparece inmediatamente en el listado.
  # - Se confirma al usuario la publicación exitosa.

  Scenario: Falla la creación de un post
    Given el gestor está en la sección de comunidad
    When ingresa incorrectamente los datos del post
    Then se muestra un mensaje de error solicitando ingresar correctamente los datos

  # Acceptance Test:
  # - El sistema valida datos obligatorios y formatos correctos.
  # - Mensaje de error claro que indique qué corregir.
