# Matriz de permisos por rol

| Módulo | Administrador | Recepcionista | Veterinario |
|---|:-:|:-:|:-:|
| Login / sesión | ✅ | ✅ | ✅ |
| Usuarios y roles | ✅ | — | — |
| Propietarios | ✅ | ✅ | — |
| Mascotas | ✅ | ✅ | — |
| Citas (crear/editar) | ✅ | ✅ | — |
| Citas (consultar) | ✅ | ✅ | ✅ |
| Historial clínico y diagnósticos | ✅ | — | ✅ |
| Vacunas (lectura) | ✅ | ✅ | ✅ |
| Inventario, proveedores, Kardex | ✅ | — | — |
| Catálogo en caja (solo lectura) | ✅ | ✅ | — |
| Caja y POS | ✅ | ✅ | — |
| Anular ventas | ✅ | — | — |
| Reportes y dashboard | ✅ | — | — |
| Auditoría | ✅ | — | — |

El inventario completo es exclusivo del Administrador. El Recepcionista solo consulta precio y stock dentro del POS. El Veterinario consume insumos automáticamente al registrar una atención (HU-35) pero no administra inventario.