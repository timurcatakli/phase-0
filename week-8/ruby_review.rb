# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

def dr_evils_cipher_original(coded_message)
  input = coded_message.downcase.split("") # Gets argument and splits each character and creates an array
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |x| # Iterate the input array
    found_match = false  # By default the match value is set to false
    cipher.each_key do |y| # Iterating the cipher array
      if x == y  # take the first element of input array and look for a match in cipher array
        decoded_sentence << cipher[y]
        found_match = true
        break  # As there is a match no need to execute the rest
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #These chars are used for space
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Creating an array of numbers and check to see if x is a number
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  # If there is no match insert the char as it is to the array
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  #It is returning the decoded array as a sentence by joining elements...
end

# Your Refactored Solution

def replace(character)
  arr_text = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
  char_index = arr_text.index(character) - 4
  return arr_text[char_index + 26] if char_index < 0
  return arr_text[char_index]
end

def dr_evils_cipher(coded_message)
  decoded_text = coded_message.gsub(/\@|\^|\*|\#|\$|\%|\&/, ' ')
  decoded_text = decoded_text.gsub(/[a-zA-Z]/) {|s| replace(s)}
  return decoded_text
end





# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
# &fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!

# What concepts did you review or learn in this challenge?
# I reviewed creating functions and also it was a nice opportunity to use regular expressions...

# What is still confusing to you about Ruby?
# My problem i that I am confusing Ruby with JS...

# What are you going to study to get more prepared for Phase 1?
# Try to solve as many challenges as possible.



