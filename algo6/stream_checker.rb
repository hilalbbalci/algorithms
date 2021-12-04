class StreamChecker

  def initialize(words)
    @root = build_trie(words.map(&:reverse))
    @max = words.max_by(&:length).length
    @stream = []
  end

  def query(letter)
    @stream << letter
    clean_up
    cur = @root
    @stream.reverse_each do |c|
      x = cur.next[c]
      return false if x.nil?
      return true if !x.word.nil?
      cur = x
    end
    false
  end

  private

  def clean_up
    while @stream.size > @max
      @stream.shift
    end
  end

  def build_trie(words)
    root = Trie.new
    words.each do |w|
      cur = root
      w.each_char do |c|
        cur.next[c] = Trie.new if !cur.next.has_key?(c)
        cur = cur.next[c]
      end
      cur.word = w
    end
    root
  end

  class Trie
    attr_accessor :word, :next
    def initialize
      @word, @next = nil, {}
    end
  end
end