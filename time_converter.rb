#convert the 12 time system to 24 time system
def timeConversion(s)
    # Write your code here
    string = s.split(":").first
    remain = s.split(":")[1..-1]
    if s[-2..-1] == "PM" && string != "12"
        s = (string.to_i + 12).to_s + ":" + remain.join(":") 
    elsif s[-2..-1] == "AM" && string == "12"
        s = "00:" +  remain.join(":")      
    end
    return s[0...-2]
end

p timeConversion("12:04:03PM")
p timeConversion("12:04:03AM")