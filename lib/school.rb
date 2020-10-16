#Debugging!
require 'pry'

#Create the School class
class School
    #Since we want to keep our code short and simple
    #Lets use readers and writers in order to help us
    attr_accessor :name, :roster

    #We want to make sure our new objects are assigned values
    #Which is why we will initialzie them
    def initialize(name)
        @name = name
        @roster = {} #We leave roster as an open variable since we must be able to add to the array
    end


    #Lets add a method where students and their grade levels are assigned accordingly
    #roster will include the students name, and their grade level
    def add_student(student, level)
     
        roster[level] ||= []
        roster[level] << student
      end 

      #We are simply adding an interger variable to the grade level string
      def grade(level)
        roster.detect do |x, y| 
          if x == level
            return y 
          end 
        end 
      end 
      



      #Here wea re sorting the students based on their names and grade level
    def sort
        @roster.each do |grade, name|
            name.sort!
        end
    end
end
