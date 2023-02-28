# SwiftUIViewModifiers
Ejemplos prácticos para mejorar la aplicación.

## Crear esqueletos
- `Redacted`: nos ayuda a crear un esqueleto modificando la vista vista.
-- Se puede usar para simular que aún no obtenemos los datos de la petición.
-- Con este modificador se convierte a toda la vista en esqueleto.
- `Unredacted`: es para evitar que la vista se convierta en esqueleto.
-- Solo se convertir en esqueleto algunos elementos de la vista.

## Nuevos modificadores para los estilos de la fuente
- Usando los modificadores 'fontWidth' y 'Width' para cambiar el estilo de la fuente.
-- El 'Width' se usa directamente en la fuente.
-- El 'fontWidth' es directamente un modificador.
- Hay tres nuevos estilos de fuentes:
-- Compressed: las letras están mas pegadas.
-- Condensed: las letras están un poco pegadas.
-- Standard: esta ya se usa, es la estándar por defecto.
-- Expanded: las letras están más separadas
