def change_make(coins, target)
    table = Array.new(target+1, target+1) #[0,8,8,8,8,8,8,8]
    table[0] = 0

    coins.each do |coin|
        i = 0
        while i < table.length
            if coin <= i #1 > 0
                idx = i - coin #idx = 1
                pot_res = table[idx] + 1 #pot_res = 9
                table[i] = [pot_res, table[i]].min 
            end
            i += 1
        end
    end 
    return table[-1].nil? ? -1 : table[-1]
end


coins = [1,2,3]
target = 7
p change_make(coins, target)