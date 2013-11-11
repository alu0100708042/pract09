# Pract09

## Descripción
Gema que implementa la clase SparseMatrix que alude a el formato de matriz con más de un 60% de ceros. 
En ella se describen métodos para la realización de operaciones aritméticas, y métodos de comparación. 
Esos métodos son +(other),-(other),*(other), ==(other), to_s, initialize(h={}). 
La clase SparseMatrix hereda de la clase Matrix, en la cual ya vienen descritas las operaciones entre matrices. 
En la clase SparseMatrix se sobrecargan los métodos de la clase Matrix para hacer operaciones con hashes que van
a representar a vectores y martrices dispersas.

La jerarquía de clases será la que sigue:
Matrix clase base.
SparseMatrix, clase que hereda de Matrix.
SparseVector, clase que es usada por SparseMatrix para crear hashes.


## Instalación

Añadir esta línea a el Gemfile de la aplicación:

    gem 'pract09'

Y entonces ejecuta:

    $ bundle

O instala tu mismo la gema:

    $ gem install pract09

## Uso

Para instanciar la clase llamaremos a su constructor al cual podemos pasarle, de forma opcional, un hash.

	z = SparseMatrix.new 1000 => { 100 => 1, 500 => 200}, 20000 => { 1000 => 3, 9000 => 200}

Para comprobar su funcionamiento se podría hacer lo siguiente:

	puts "z[1000][500] = #{z[1000][500]}"
	puts "z.col(500) = #{z.col(500)}"

La primera sentencia devolverá el valor que tendría asociado en una matriz la fila 1000 y columna 500.
La segunda sentencia devolverá todos los valores que tendría la columna 500 en una matriz.

## Contribucciones

1. Fork it

2. Crear una rama 

	$ git checkout -b miRama
	
3. Hacer un commit con los cambios realizados 

	$ git commit -a -m 'Mensaje descriptivo'

4. Empujar los cambios al repositorio

	$ git push -u origin miRama
	
5. Actualizar nuestro repositorio local

	$ git pull origin miRama


