# HU29 - Visualizar las estadísticas del proyecto
Feature: Visualización de analíticas del proyecto

  Scenario: Se cargan los gráficos correctamente
    Given el gestor está en la sección de métricas
    When cargan los gráficos
    Then se muestran gráficos de tareas completadas y análisis de presupuesto

  # Acceptance Test:
  # - Los gráficos son visibles y reflejan datos actuales.
  # - No hay retrasos o errores en la carga.

  Scenario: No se cargan los gráficos correctamente
    Given el gestor está en la sección de métricas
    When no cargan los gráficos como se debería
    Then se muestra un mensaje de error solicitando recargar la sección

  # Acceptance Test:
  # - Se detectan fallos en la carga y se informa al usuario.
  # - Se ofrece opción o instrucción para recargar la página.
