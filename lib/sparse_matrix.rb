require './matrix.rb'
require './sparse_vector.rb'
require './dense_matrix.rb'

# Clase para la representacion de matrices dispersas.
class SparseMatrix < Matrix

  attr_reader :m_Matrix

  def initialize(h = {})
    @m_Matrix = Hash.new({})
     row= 0
    for k in h.keys do
      row = k  if (row < k.to_i == true)   
      if h[k].is_a? SparseVector
        @m_Matrix[k] = h[k]
      else 
        @m_Matrix[k] = SparseVector.new(h[k])
      end
    end
    super(row,row)
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
		
	
	
	for r in @m_Matrix.keys do 
		sum = {}
		if matrizb.m_Matrix.keys.include? r
			for j in @m_Matrix[r].vector.keys do 
				
				sum[j] = @m_Matrix[r].vector[j]+matrizb[r].vector[j]	
				
				sumita[r] = {j=>sum[j]}
			end
			
		else
			
			sum[r]=@m_Matrix[r]
		end
	
	
	end

   SparseMatrix.new(sumita)
  end
  
   # Se define un metodo para hallar el máximo que retornará un número

   def max(other)
	max = -1000000
	for r in @m_Matrix.keys do
		for j in @m_Matrix[r].vector.keys do 
			max = @m_Matrix[r].vector[j] if (max < @m_Matrix[r].vector[j] == true)		
		end
	end
	for r in other.m_Matrix.keys do
		for j in other.m_Matrix[r].vector.keys do 
			max = other.m_Matrix[r].vector[j] if (max < other.m_Matrix[r].vector[j] == true)	
		end
	
	end
	max
   end

     # Se define un metodo para hallar el máximo que retornará un número

   def min(other)
	min = 1000000
	for r in @m_Matrix.keys do
		for j in @m_Matrix[r].vector.keys do 
			min = @m_Matrix[r].vector[j] if (min > @m_Matrix[r].vector[j] == true)	
		end
	
	end
	for r in other.m_Matrix.keys do
		for j in other.m_Matrix[r].vector.keys do 
			min = other.m_Matrix[r].vector[j] if (min > other.m_Matrix[r].vector[j] == true)	
		end
	
	end
	min
   end
end
