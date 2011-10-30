class Array
   
	def / len
		inject([]) do |ary, x|
			ary << [] if [*ary.last].nitems % len == 0
			ary.last << x
			ary.reverse
		end
	end
   
end
