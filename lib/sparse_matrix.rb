require './matrix.rb'
require './sparse_vector.rb'

# Clase para la representacion de matrices dispersas.
class SparseMatrix < Matrix

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
	c[r] = @m_Matrix[r].vector[j] if @m_Matrix[r].vector.keys.include? j
    end
    SparseVector.new c
  end
  
  def +(matrizb)
	
	sumita={}
		
	#a.m_Matrix[1000].vector.keys[0]
	
	for r in @m_Matrix.keys do 
		sum = {}
		if matrizb.m_Matrix.keys.include? r
			for j in @m_Matrix[r].vector.keys do 
				
				sum[j] = @m_Matrix[r].vector[j]+matrizb[r].vector[j]	
				
				sumita[r] = {j=>sum[j]}
				#puts "#{r} => #{sumita[r]}"
			end
			
		else
			
			sum[r]=@m_Matrix[r]
		end
		#for j in vector.keys do
		#	@m_Matrix[r][j]+matrizb[r][j]	
		#end
	
	end

   SparseMatrix.new(sumita)
  end

end
