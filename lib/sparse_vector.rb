

# Clase para la representacion de vectores dispersos.
class SparseVector 
  attr_reader :m_Vector

  def initialize(h = {})
    @m_Vector = Hash.new(0)
    @m_Vector = @m_Vector.merge!(h)
  end

  def [](i)
    @m_Vector[i] 
  end

  def to_s
    @m_Vector.to_s
  end
  
end
