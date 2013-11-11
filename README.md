# Pract09

TODO: Gema en la que se implementa la clase SparseMatrix que alude a el formato de matriz con más de un
60% de ceros. En ella se tienen métodos para la realización de operaciones aritméticas, y métodos de comparación. 
Esos métodos son +(other),-(other),*(other), ==(other), to_s, initialize(h={}). La clase hereda de la clase Matrix, 
en la clase SparseMatrixse sobrecargan los métodos de la clase matrix para hacer operaciones con hashes.


## Installation

Añadir esta línea a el Gemfile de la aplicación:

    gem 'pract09'

Y entonces ejecuta:

    $ bundle

O instala tu mismo la gema:

    $ gem install pract09

## Usage

TODO: Para instanciar la clase llamaremos a su constructor al cual podemos pasarle de forma opcional un hash.
z = SparseMatrix.new 1000 => { 100 => 1, 500 => 200}, 20000 => { 1000 => 3, 9000 => 200}
Para comprobar su funcionamiento se podría hacer lo siguiente:
puts "z[1000][500] = #{z[1000][500]}"
puts "z.col(500) = #{z.col(500)}"
La primera sentencia devolverá el valor  que tendría asociado  en una matriz en la fila 1000 columna 500.
La segunda columna devuelve todas las filas que tendría la columna 500 en una matriz.
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


