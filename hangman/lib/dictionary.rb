class Dictionary
  def initialize(test: false)
    @test = test
    @word_list = ["test","Manchester", "Madrid", "Glasgow"]
  end
  def get_word
    return @word_list[0].chars if @test
    @word_list[rand(1...@word_list.count)].chars
  end
end