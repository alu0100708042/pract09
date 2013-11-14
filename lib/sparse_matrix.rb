#require './matrix.rb'
require './sparse_vector.rb'

# Clase para la representacion de matrices dispersas.
class SparseMatrix #< Matrix 

  attr_reader :m_Matrix

  def initialize(h = {})
    @m_Matrix = Hash.new({})
    for k in h.keys do 
      if h[k].is_a? SparseVector
        @m_Matrix[k] = h[k]
      else 
        @m_Matrix[k] = SparseVector.new(h[k])
      end
    end
  end

  def [](i)
    @m_Matrix[i]
  end

  def col(j)
    c = {}
    for r in @m_Matrix.keys do
	# peta dado que la clase matriz no tiene un método llamado vector      
	c[r] = @m_Matrix[r].vector[j] if @m_Matrix[r].vector.keys.include? j
    end
    SparseVector.new c
  end
  
end
