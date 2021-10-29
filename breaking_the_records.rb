#Maria plays college basketball and wants to go pro. 
#Each season she maintains a record of her play. 
#She tabulates the number of times she breaks her season record for most points and least points in a game. 
#Points scored in the first game establish her record for the season, and she begins counting from there.
def breakingRecords(scores)
    # Write your code here
    min  = scores.first #10
    max = scores.first #10
    count_min = 0
    count_max = 0
    
    scores[1..-1].each do |x| # 5 20 20 4 5 2 25 1
        if x < min 
            count_min += 1 #min => 1
            min = x
        elsif x > max
            count_max += 1 #max => 1
            max = x
        end
    end
        return [count_max, count_min]
end