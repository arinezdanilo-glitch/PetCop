# Flujo de trabajo Git

## Ramas
| Rama | Uso |
|---|---|
| `main` | Producción. Solo recibe merges de `release/*` o `develop` al cerrar iteración. Protegida. |
| `develop` | Integración. Todas las features se fusionan aquí por Pull Request. |
| `feature/HU-XX-nombre` | Una rama por historia de usuario. |
| `fix/HU-XX-nombre` | Corrección de errores. |
| `release/vX.Y.Z` | Preparación de la entrega de iteración. |

## Commits (Conventional Commits)
`tipo(alcance): descripción (HU-XX)` — tipos: `feat`, `fix`, `docs`, `refactor`, `test`, `chore`.
Ejemplo: `feat(inventario): descuento automático de stock por atención (HU-35)`

## Pull Requests
1. Push de la rama feature, PR hacia `develop` con `Closes #N`.
2. Revisión obligatoria de al menos 1 compañero (Navigator).
3. CI en verde (GitHub Actions) antes del merge (Squash o Merge commit).
4. Al cerrar iteración: PR `develop` → `main` y tag `vX.Y.0`.

## Protección de ramas (Settings → Branches)
`main` y `develop`: require PR, 1 aprobación, status checks, sin push directo.

## Versionado
SemVer: iteración N ⇒ `v0.N.0`; hotfixes `v0.N.1`; versión final `v1.0.0`.
`git tag -a v0.1.0 -m "Iteración 1" && git push origin v0.1.0` y crear Release en GitHub.

## Vínculo con Jira
Incluir la clave del issue en rama y commit para el enlace automático (ej. `feature/PET-12-login`). Tablero: To Do → In Progress → In Review → Done.
