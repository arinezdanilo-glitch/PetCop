// HU-42: Pago con QR dinámico (programación en parejas, sesión 2) + mejora del Navigator (temporizador y clearInterval)
let pollingId = null, timerId = null;

async function generarPagoQR(montoTotal, ventaId) {
  const payload = { monto: montoTotal, referencia: `VENTA-${ventaId}`, expiracionMinutos: 5 };
  const response = await fetch('/api/pagos/generar-qr', {
    method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(payload) });
  const data = await response.json();
  if (data.success) {
    document.getElementById('qrImage').src = data.qrBase64;
    iniciarTemporizador(payload.expiracionMinutos * 60);
    iniciarPollingEstadoPago(data.transaccionId);
  }
}

function iniciarTemporizador(segundos) {
  const el = document.getElementById('qrTimer');
  timerId = setInterval(() => {
    el.textContent = `${Math.floor(segundos / 60)}:${String(segundos % 60).padStart(2, '0')}`;
    if (--segundos < 0) detenerTemporizadores('expirado');
  }, 1000);
}

function iniciarPollingEstadoPago(transaccionId) {
  pollingId = setInterval(async () => {
    const r = await (await fetch(`/api/pagos/estado/${transaccionId}`)).json();
    if (r.estado === 'CONFIRMADO') detenerTemporizadores('confirmado');
  }, 3000);
}

function detenerTemporizadores(motivo) {   // mejora sugerida: limpiar intervalos
  clearInterval(pollingId); clearInterval(timerId);
  document.dispatchEvent(new CustomEvent('qr:fin', { detail: motivo }));
}
