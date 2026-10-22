# Cambios respecto al backlog anterior (48 HU → 55 HU)

**Motivo:** el login era una sola historia, pero hay tres roles con permisos distintos, y el inventario es exclusivo del Administrador.

| Cambio | Detalle |
|---|---|
| Login dividido | HU-10 → HU-01 Iniciar sesión, HU-02 Cerrar sesión/expiración, HU-03 Gestionar usuarios, HU-04 Asignar roles y permisos |
| Roles por historia | Cada HU indica qué roles la usan (ver `roles-permisos.md`) |
| Inventario solo ADM | Antes HU-27 (antigua) lo consultaba recepcionista/cajero; ahora HU-31 es solo ADM y HU-39 da al recepcionista solo lectura de precio/stock en caja |
| Duplicados fusionados | Consultar tratamientos + Asociar tratamientos al historial (HU-18/19 antiguas) → asociación incluida en "Registrar tratamientos"; Registro y consulta de vacunas unificados; el filtro por fechas (HU-46 antigua) pasó a criterio de cada reporte |
| Caja separada | Apertura y cierre de caja en dos historias (3+3) |
| Historias nuevas | Cerrar sesión, Asignar roles, Consultar Kardex, Catálogo en caja, Recordatorio de vacuna, Carnet PDF, Exportar reportes, Alertas de desparasitación |
| Totales corregidos | 194 pts; iteraciones: 44 / 34 / 41 / 42 / 33 (todas ≤ capacidad de 50) |
