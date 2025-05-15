# HU19 - Editar tarea
Feature: Edición de tareas del proyecto

  Scenario: Se edita la tarea correctamente
    Given el gestor está en la sección de tareas
    When presiona el botón de editar tarea y cambia la fecha de expiración, estado o asignación
    Then se muestra un mensaje confirmando que se actualizó la tarea y se actualiza la columna correspondiente

  # Acceptance Test:
  # - La tarea actualizada refleja los cambios inmediatamente.
  # - Mensaje de confirmación visible para el usuario.

  Scenario: No se edita la tarea correctamente
    Given el gestor está en la sección de tareas
    When presiona el botón de editar tarea con datos erróneos
    Then se muestra un mensaje solicitando que se ingrese información válida o mostrando el error

  # Acceptance Test:
  # - Validación estricta de los datos ingresados.
  # - Mensaje claro y detallado de errores en la edición.
