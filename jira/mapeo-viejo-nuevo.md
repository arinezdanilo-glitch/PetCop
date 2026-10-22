# Mapeo del backlog viejo (48 HU) → nuevo (55 HU)

Aplicar sobre el tablero SWP renombrando cada tarjeta. Las subtareas se conservan.

| HU vieja | Título viejo | Acción | HU nueva | Título nuevo |
|---|---|---|---|---|
| HU-01 | Registrar nuevo propietario | Renombrar | HU-05 | Registrar propietario |
| HU-02 | Modificar datos del propietario | Renombrar | HU-06 | Modificar propietario |
| HU-03 | Consultar información de propietarios | Renombrar | HU-07 | Consultar propietarios |
| HU-04 | Registrar nueva mascota | Renombrar | HU-08 | Registrar mascota |
| HU-05 | Modificar datos de la mascota | Renombrar | HU-09 | Modificar mascota |
| HU-06 | Consultar información de mascotas | Renombrar | HU-10 | Consultar mascotas |
| HU-07 | Registrar nueva cita | Renombrar | HU-11 | Registrar cita veterinaria |
| HU-08 | Modificar o cancelar cita | Renombrar | HU-12 | Modificar o cancelar cita |
| HU-09 | Consultar citas programadas | Renombrar | HU-13 | Consultar agenda de citas |
| HU-10 | Autenticación y gestión de roles | Renombrar y reducir a solo login; crear HU-02, 03, 04 aparte | HU-01 | Iniciar sesión |
| HU-11 | Registrar atención en historial | Renombrar | HU-14 | Registrar atención en historial clínico |
| HU-12 | Consultar historial clínico | Renombrar | HU-15 | Consultar historial clínico |
| HU-13 | Registrar controles médicos | Renombrar | HU-16 | Registrar control médico |
| HU-14 | Consultar controles anteriores | Renombrar | HU-17 | Consultar controles médicos |
| HU-15 | Registrar desparasitación | Renombrar | HU-18 | Registrar desparasitación |
| HU-16 | Controlar próxima desparasitación | Renombrar | HU-19 | Alertas de próxima desparasitación |
| HU-17 | Registrar tratamientos y medicamentos | Renombrar | HU-20 | Registrar tratamientos y medicamentos |
| HU-18 | Consultar tratamientos | Renombrar | HU-21 | Consultar tratamientos de una mascota |
| HU-19 | Asociar tratamientos al historial | Renombrar | HU-20 | Registrar tratamientos y medicamentos |
| HU-20 | Registro e historial de vacunas | Renombrar | HU-22 | Registrar y consultar vacunas |
| HU-21 | Categorías y marcas | Renombrar | HU-25 | Registrar categorías y marcas |
| HU-22 | Alta de productos | Renombrar | HU-26 | Dar de alta productos |
| HU-23 | Modificar productos | Renombrar | HU-27 | Modificar y desactivar productos |
| HU-24 | Registrar proveedores | Renombrar | HU-28 | Registrar proveedores |
| HU-25 | Entradas por orden de compra | Renombrar | HU-29 | Registrar entradas por orden de compra |
| HU-26 | Salidas/ajustes | Renombrar | HU-30 | Registrar salidas y ajustes de inventario |
| HU-27 | Consultar catálogo y stock | Renombrar: ahora solo Administrador | HU-31 | Consultar inventario y stock |
| HU-28 | Alertas de stock mínimo | Renombrar | HU-32 | Configurar alertas de stock mínimo |
| HU-29 | Lotes y vencimientos | Renombrar | HU-33 | Control de lotes y vencimientos |
| HU-30 | Descuento automático por atención | Renombrar | HU-35 | Descuento automático de stock por atención |
| HU-31 | Apertura y cierre de caja | Renombrar: solo apertura; crear HU-37 cierre | HU-36 | Apertura de caja |
| HU-32 | Carrito de venta rápido | Renombrar | HU-38 | Carrito de venta rápido y Cliente Varios |
| HU-33 | Cargar atenciones al carrito | Renombrar | HU-40 | Cargar atenciones pendientes al carrito |
| HU-34 | Pago en efectivo | Renombrar | HU-41 | Pago en efectivo |
| HU-35 | Pago con QR | Renombrar | HU-42 | Pago con QR |
| HU-36 | Pago con tarjeta | Renombrar | HU-43 | Pago con tarjeta |
| HU-37 | Pagos mixtos | Renombrar | HU-44 | Pagos mixtos |
| HU-38 | Comprobante / ticket | Renombrar | HU-45 | Emitir ticket de venta |
| HU-39 | Factura electrónica | Renombrar | HU-46 | Emitir factura electrónica |
| HU-40 | Historial de transacciones | Renombrar | HU-47 | Consultar historial de ventas |
| HU-41 | Anular venta | Renombrar | HU-48 | Anular venta con devolución de stock |
| HU-42 | Reporte de arqueo | Renombrar | HU-49 | Reporte de arqueo y cierre de caja |
| HU-43 | Reporte de atenciones | Renombrar | HU-50 | Reporte de atenciones realizadas |
| HU-44 | Más vendidos y rotación | Renombrar | HU-51 | Reporte de productos más vendidos y rotación |
| HU-45 | Inventario valorado y bajas | Renombrar | HU-52 | Reporte de inventario valorado y bajas |
| HU-46 | Filtros por rango de fechas | **Cerrar como duplicada** (duplicado: pasó a ser criterio de cada reporte) | — | — |
| HU-47 | Dashboard | Renombrar | HU-53 | Dashboard de ingresos clínica vs tienda |
| HU-48 | Auditoría | Renombrar | HU-55 | Auditoría de acciones de usuarios |

## Tarjetas NUEVAS a crear (importar jira-import-nuevas.csv)

- HU-02 Cerrar sesión y expiración por inactividad
- HU-03 Gestionar usuarios internos
- HU-04 Asignar roles y permisos
- HU-23 Recordatorio de próxima vacuna
- HU-24 Exportar carnet de vacunación en PDF
- HU-34 Consultar Kardex
- HU-37 Cierre de caja
- HU-39 Consultar catálogo en caja
- HU-54 Exportar reportes a PDF y Excel
