# Complete the 'birthdayCakeCandles' function below.
# Give the tallest candles count 
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY candles as parameter.
#

def birthdayCakeCandles(candles)
    # Write your code here
    hash = Hash.new(0)
    candles.each do |c|
        hash[c] += 1
    end
    
    return hash[(hash.keys.max)]
end

p birthdayCakeCandles([3,4,4,2])
