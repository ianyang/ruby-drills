class Tester
  attr_accessor :number, :phone, :array, :delimiter

  def initialize()
    @number=()
    @phone=()
    @array=[]
    @delimiter=','
  end

  def convert_to_ordinal()
    if @number.to_s[-1]=="1"
      p @number.to_s + "st"
    elsif @number.to_s[-1]=="2"
      p @number.to_s + "nd"
    elsif @number.to_s[-1]=="3"
      p @number.to_s + "rd"
    else
      p @number.to_s + "th"
    end
  end

  def convert_to_phone_number()
    p "+1 ("+@phone.to_s[0..2]+") "+@phone.to_s[3..5]+"-"+@phone.to_s[5..-1]
  end

  def convert_to_currency()
    p "$"+@number.to_s.reverse.gsub(%r{([0-9]{3}(?=([0-9])))}, "\\1#{@delimiter}").reverse
  end

  def convert_to_euros()
    @number = @number.to_f*0.77.round(2)
    p @number.to_s.reverse.gsub(%r{([0-9]{3}(?=([0-9])))}, "\\1#{@delimiter}").reverse+" EUR"
  end

  def convert_to_phrase()
    for @number in @array[0..-2]
      print @number.to_s+", "
    end
      print "and "+@array[-1]
  end

end