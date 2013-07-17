class CartesianProduct
  include Enumerable
  
  attr_accessor :array1
  attr_accessor :array2
  
  def initialize(array1, array2)
	if array1.length == 0 || array2.length == 0
		array1 = Array.new
		array2 = Array.new
	end
	
    @array1 = array1
	@array2 = array2
  end
  
  def each
    @array1.each do |item1|
		@array2.each do |item2|
			yield [item1, item2]
		end
    end
  end
  
end

