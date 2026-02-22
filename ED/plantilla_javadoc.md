/
@author,Indica quién ha escrito el código.,@author Tu nombre

@version,Indica la versión actual del archivo.,@version 1.0

@since,Indica desde qué versión existe esta clase.,@since 1.0

{@link},Crea un enlace clicable a otra clase en la web.,{@link Pedido}

Se colocan antes de cada constructor o método.

@param: Explica qué es cada variable que recibe el método. Ejemplo: @param id El identificador del cliente.

@return: Describe qué resultado devuelve el método. Ejemplo: @return El precio total.

@throws: Detalla qué excepciones (errores) puede lanzar el código y por qué. Ejemplo: @throws IllegalArgumentException si el precio es negativo.    

Se pueden usar dentro de cualquier descripción.

{@link}: Crea un enlace clicable a otra clase o método en la web generada. Ejemplo: {@link Pedido}.

{@code}: Formatea el texto como código (fuente monocromo), ideal para valores como null o nombres de variables. Ejemplo: {@code true}.

{@value}: Muestra el valor real de una constante static final. Ejemplo: El IVA es {@value}.

@deprecated se usa para marcar código que ya no se recomienda utilizar ⚠️. Es como poner un cartel de "fuera de servicio" en una pieza de software: el código sigue funcionando para que no se rompa nada antiguo, pero avisas a otros programadores de que hay una forma mejor o más moderna de hacerlo. Ejemplo:/**
 * @deprecated Este método no tiene en cuenta las nuevas leyes fiscales.
 * Usa {@link #calcularTotalConImpuestosNuevos()} en su lugar.
 */
@Deprecated
public double calcularTotal() {
    // ... código antiguo ...
}

