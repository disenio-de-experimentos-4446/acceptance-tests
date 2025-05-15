# HU17 - Visualizar tareas
Feature: Visualización de tareas del proyecto

  Scenario: Mostrar tareas correctamente
    Given el gestor está en la sección de proyecto
    When presiona el botón de ver tareas y se redirige a esa sección
    Then observa las tareas To-Do, Doing y Done

  # Acceptance Test:
  # - La sección de tareas carga y muestra las tareas categorizadas correctamente.
  # - Se visualizan las tareas en las columnas correspondientes.

  Scenario: No se muestran tareas
    Given el gestor está en la sección de proyecto
    When presiona el botón de ver tareas y no tiene tareas agregadas
    Then observa un mensaje que le solicite agregar tareas para empezar

  # Acceptance Test:
  # - Cuando no hay tareas, se muestra un mensaje que invita a crear tareas.
