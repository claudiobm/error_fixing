# encoding: utf-8

class String
  
  def eliminate_accents
    word = self.dup
    word.eliminate_accents!
    word
  end
  
  def eliminate_accents!
    self.downcase!
    self.gsub!(/[ÁÂÃáâã]/, "a")
    self.gsub!(/[ÉÊéê]/, "e")
    self.gsub!(/[ÍÎíî]/, "i")
    self.gsub!(/[ÓÔÕóôõ]/, "o")
    self.gsub!(/[ÚÛúû]/, "u")
    self.gsub!(/[Çç]/, "c")
    self
  end
  
  def slugfy
    word = self.dup
    word.slugfy!
    word
  end
  
  def slugfy!
    self.eliminate_accents!
    self.gsub!(" ","_")
    self.gsub!(/[^a-zA-Z0-9|_-]/,"")
    self
  end

	def wikilize!
		self.eliminate_accents!
		self.gsub!(" ","_")
		self.camelize
	end

	def wikilize
		word = self.dup
		word.wikilize!
	end
  
end
