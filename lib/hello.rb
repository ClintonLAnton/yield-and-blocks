def hello_t(names)
  names.each do |name|
    if name.end_with?("m")
      puts "#{name}"
    else
      puts "#{name}".upcase
    end
  end

  def hello_t(names)
    if block_given?
      i = 0

      while i < names.length
        yield(names[i])
        i = i + 1
      end
      names 
    else 
      puts "Hey! No block was given!"
    end
  end
end


