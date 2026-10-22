#!/usr/bin/env bash
# Ejemplo del flujo para UNA historia (hacerlo con cada HU, cada integrante con su cuenta)
set -e
git checkout develop && git pull
git checkout -b feature/HU-01-iniciar-sesion
# ... programar ...
git add . && git commit -m "feat(auth): login con hash de contraseña (HU-01)"
git commit --allow-empty -m "test(auth): pruebas de credenciales inválidas (HU-01)"
git push -u origin feature/HU-01-iniciar-sesion
# Abrir Pull Request hacia develop:
gh pr create --base develop --title "HU-01 Iniciar sesión" --body "Closes #1"
