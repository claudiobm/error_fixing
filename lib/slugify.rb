require "string_helper"

module Slugify
	LIST_FIELD = [:name, :title]
	
  def slugify(word, unique = true)
    slug = ""
    slug = word.slugfy

    if unique
      i = 1
      if self.id
        while self.class.where(['slug = ? AND id <> ?', slug, self.id]).count > 0 do
          slug = ("#{i}-#{slug}}")
          i = i + 1
        end
      else
        while self.class.where(['slug = ?', slug]).count > 0 do
          slug = ("#{i}-#{slug}")
          i = i + 1
        end
      end
    end

    slug
  end

  def create_slug
    unless @slugify.blank?
      self.slug = slugify(@slugify)
    else
    	LIST_FIELD.each do |field|
    		if(self.respond_to? field)
		      self.slug = slugify(eval("self.#{field}.to_s.slugfy") ) if self.slug.blank?
		      break
		    end
	    end
    end
  end
  
end
