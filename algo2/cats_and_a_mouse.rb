def catAndMouse(x, y, z)
    if (x-z).abs > (y-z).abs
        return 'Cat B'
    elsif (x-z).abs < (y-z).abs
        return 'Cat A'
    else
        return 'Mouse C'
    end
end