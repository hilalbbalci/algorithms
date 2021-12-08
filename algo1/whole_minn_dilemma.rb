def playlist(songs)
    # Write your code here
    count  = 0
  i = 0
  while i < songs.length-1
    j = i + 1
        while j < songs.length
            if (songs[i] + songs[j]) % 60 == 0
                count += 1
            end
            j+=1
        end
        i+=1
  end
  count
end