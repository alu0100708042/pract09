
require "rspec"
require "matrix"
#require "sparse_matrix"
#require "dense_matrix"


describe Matrix do
	
	before :each do
		@sm_a = SparseMatrix.new 10 => { 2 => 1, 500 => 200}, 2000 => { 1000 => 3, 9000 => 5}
		@sm_b = SparseMatrix.new 10 => { 2 => 2, 500 => 300}, 2000 => { 1000 => 5, 9000 => 7}
	end
	
	it "Comprobar la salida del metodo to_s en matrices dispersas" do
		sm_a.to_s.should ==  "[[10] [{2=>1, 5=>200}][10] [{2=>1, 5=>200}][5] [{6=>3, 3=>5}][5] [{6=>3, 3=>5}]]"
	end
	
	it "Comprobar la salida del metodo col en matrices dispersas" do
		sm_b.col(5).should == "#<SparseVector:0x00000002588520 @vector={10=>300}>"
	end
	
	it "Comprobar la suma de dos matrices dispersas" do
		(@sm_a+sm_b).to_s.should == "[[10] [{5=>500}][5] [{3=>10}]]"
	end
	
	it "Comprobar la resta de dos matrices dispersas" do
		(@sm_b-sm_a).to_s.should == "[[10] [{5=>500}][5] [{3=>10}]]"
	end
	
	it "Comprobar el metodo min entre matrices dispersas" do
		sm_a.min(sm_b).should == "1"
	end
	
	it "Comprobar el metodo max entre matrices dispersas" do
		sm_a.max(sm_b).should == "300"
	end
	 
end

