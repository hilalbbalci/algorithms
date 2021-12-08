
#grades an array of integers
#HackerLand University has the following grading policy:

#Every student receives a  in the inclusive range from 0 to 100.
#Any  less than  is a failing grade.
#Sam is a professor at the university and likes to round each student's  according to these rules:

#If the difference between the grade and the next multiple of 5 is less than 3, round  up to the next multiple of 5.
#If the value of  is less than 38 , no rounding occurs as the result will still be a failing grade.

def gradingStudents(grades)
    # Write your code here
    arr= []
    grades.each do |x|
        if x > 37
            if (x+1) % 5 == 0 
                    arr << (x+1)
            elsif (x + 2) % 5 == 0 && (x >=38)
                    arr << (x + 2)
            else 
                arr << x
            end
        else 
            arr << x
        end
    end 
    return arr
end

p gradingStudents([23,68,72,89])