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