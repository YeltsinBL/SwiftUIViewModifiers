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

## Crear Máscaras de las vistas en SwiftUI
- Usando el modificador '.mask' se pueden agregar máscaras dentro de las vistas.
- En este caso se agregó una palabra dentro de una imagen.

## Overlay: creación de una CardView
- Sobreponer una vista encima de otra.
- El ZStack y el overlay pueden sobreponer una vista encima de otra.

## ToolBar 
- Para customizar el NavigationBar en la parte superior e inferior.
- Utilizamos dentro del 'Toolbar' el 'ToolbarItem' para customizarlo, por defecto la posición donde se coloca el elemento es en la parte superior derecha y se puede cambiar esa posición.
- Las posiciones dependen del orden del prioridades:
--  `ConfirmationAction`: su posición fija es la parte superior derecha y en negrita, importa el orden de la creación siempre que se use el 'DestructiveAction', dependerá quien va primero.
-- `DestructiveAction`: su posición es en la parte superior derecha, desplazando al 'ConfirmationAction' a su lado izquierdo si se crea segundo; si se crea primero; entonces irá a lado izquierdo del 'ConfirmationAction'.
-- `Principal`: siempre se pondrá en el centro de la parte superior.
-- `CancellationAction`: se coloca en la parte superior izquierda pero si se usa el 'NavigationBarLeading' entonces se coloca al lado derecha de este.
-- `PrimaryAction`: su posición es en la parte superior derecha, pero se coloca al lado izquierdo del 'ConfirmationAction' o 'DestructiveAction'.
-- `SecondaryAction`: solo se visualiza si existe otro 'ToolbarItem' y se muestra dentro de un desplegable como si fuera más opciones.
-- `NavigationBarTrailing`: su posición normal es la parte superior derecha pero por el orden de prioridades, se coloca a lado izquierdo del 'ConfirmationAction' o 'DestructiveAction'.
-- `NavigationBarLeading`: se coloca en la parte superior izquierda.
-- `Navigation`: se coloca en la parte superior izquierda pero si hubiera el ‘NavigationBarLeading' o 'CancellationAction', se coloca a lado derecho de ellos.
-- `BottomBar`: su posición es en la parte inferior derecha.
-- `Status`: su posición es en el centro de la parte inferior.
- Se puede cambiar el color al 'ToolBar' para ello usamos el 'toolbarBackground' que espera como parámetro el color y el tipo de navegación que se esta haciendo.


Guía de referencia en el canal de [SwiftBeta](https://www.youtube.com/watch?v=cT3hVSe2L4E&list=PLeTOFRUxkMcoRLKLWXKXuMzohFgNEUxd5&index=5)