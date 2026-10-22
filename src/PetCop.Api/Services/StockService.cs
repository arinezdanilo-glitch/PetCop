using Microsoft.EntityFrameworkCore;
namespace PetCop.Api.Services;

// HU-35: Descuento automático de stock por atención médica (programación en parejas, sesión 1)
// NOTA: ajustar nombres de DbContext/entidades a los de su proyecto real.
public class StockService
{
    private readonly PetCopDbContext _context;
    public StockService(PetCopDbContext context) => _context = context;

    public async Task<bool> ProcesarDescuentoInsumosAsync(int atencionId, List<InsumoUtilizadoDto> insumos)
    {
        using var transaction = await _context.Database.BeginTransactionAsync();
        try
        {
            foreach (var item in insumos)
            {
                var producto = await _context.Productos.FindAsync(item.ProductoId);
                if (producto == null || producto.StockActual < item.Cantidad)
                    throw new InvalidOperationException($"Stock insuficiente para el producto ID: {item.ProductoId}");

                producto.StockActual -= item.Cantidad;
                _context.Kardex.Add(new KardexEntry {
                    ProductoId = item.ProductoId, Cantidad = item.Cantidad, Tipo = "SALIDA_CONSULTA" });
            }
            await _context.SaveChangesAsync();
            await transaction.CommitAsync();
            return true;
        }
        catch { await transaction.RollbackAsync(); throw; }
    }
}
