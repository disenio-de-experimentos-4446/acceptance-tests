# HU18 - Crear tarea
Feature: Creación de tareas para el equipo

  Scenario: Se agrega la tarea correctamente
    Given el gestor está en la sección de tareas
    When presiona el botón de agregar tarea e ingresa el título, descripción, fecha de expiración, estado de la tarea y a quien está asignada
    Then se agrega la tarea según la columna que le corresponde

  # Acceptance Test:
  # - La tarea creada se visualiza inmediatamente en la columna correcta.
  # - Se valida que todos los campos obligatorios estén completos.

  Scenario: Faltan datos en la tarea
    Given el gestor está en la sección de tareas
    When presiona el botón de agregar tarea y falta algún dato requerido
    Then se muestra un mensaje solicitando que llene los campos faltantes con información válida

  # Acceptance Test:
  # - El sistema impide crear tareas incompletas.
  # - Se muestra mensaje de error indicando los campos faltantes.
