# Manual de usuario — PetCop

## 1. Ingreso al sistema
1. Abra la dirección del sistema e ingrese **usuario** y **contraseña**.
2. Tras 5 intentos fallidos la cuenta se bloquea temporalmente; contacte al administrador.
3. Para salir use **Cerrar sesión** (la sesión también expira tras 15 min de inactividad).

Cada rol ve solo su menú (ver `roles-permisos.md`).

## 2. Recepcionista
**Propietarios y mascotas:** menú *Propietarios* → *Nuevo*; complete nombre, teléfono y dirección. En *Mascotas* → *Nueva* elija el propietario. Use el buscador para encontrar registros.
**Citas:** *Citas* → *Nueva cita*: mascota, fecha, hora y motivo. Para reprogramar o cancelar, seleccione la cita (la cancelación pide confirmación).
**Alertas:** el panel muestra desparasitaciones y vacunas próximas para avisar a los propietarios.
**Caja:** 1) *Abrir caja* con saldo inicial. 2) *Nueva venta*: escanee o busque productos, o cargue una *atención pendiente*; para clientes de paso use **Cliente Varios**. 3) Elija el pago: efectivo (ingrese lo recibido), QR (muestre el QR al cliente, vigencia 5 min), tarjeta o mixto. 4) Emita **ticket** o **factura** (NIT/CI y razón social). 5) Al terminar el turno, *Cerrar caja* y cuente el efectivo.
Nota: el recepcionista no accede al inventario completo ni a diagnósticos; solo ve precio y stock en caja.

## 3. Veterinario
**Agenda:** al ingresar ve sus citas del día. **Atención:** abra la mascota → *Nueva atención*: diagnóstico, observaciones, tratamientos, vacunas y medicamentos del catálogo. Al guardar, el stock se descuenta solo y se genera el cobro pendiente en caja; si no hay stock suficiente, el sistema avisa antes de confirmar. **Historial:** consulte atenciones, controles de peso, desparasitaciones y vacunas; exporte el carnet de vacunación en PDF.

## 4. Administrador
**Usuarios y roles:** *Administración* → *Usuarios*: crear, editar, desactivar y asignar rol.
**Inventario:** categorías y marcas, productos (código de barras, precio, stock mínimo), proveedores, órdenes de compra (ingreso de stock con lote y vencimiento), ajustes y Kardex. Colores: amarillo = vence en 30 días, rojo = vencido (no se puede vender).
**Ventas:** historial completo y anulación con motivo (restituye el stock).
**Reportes:** arqueo de caja, atenciones, más vendidos, inventario valorado, dashboard; filtre por fechas y exporte a PDF/Excel.
**Auditoría:** consulte quién hizo qué y cuándo (no editable).

## 5. Preguntas frecuentes
- *No veo un módulo:* su rol no tiene permiso; consulte al administrador.
- *No puedo vender:* verifique que la caja esté abierta y que el producto no esté vencido.
- *El QR expiró:* genere uno nuevo o cambie el método de pago.
