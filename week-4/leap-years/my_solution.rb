
# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def leap_year?(yearVar)
   if (yearVar % 4 == 0)
      if (yearVar % 100 == 0)
         if(yearVar % 400 == 0)
            return true
         end
         return false
      end
      return true
   end
   return false
end