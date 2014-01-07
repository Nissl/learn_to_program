class OrangeTree

  def initialize 
    @age = 1
    @orange_num = 0
    @height = 5
  end

  def one_year_passes
    @age += 1
    @height += (rand * 2).to_i + 1
    if @age > 3
      @orange_num = (@height * (rand + 2)).to_i
    end
    if (@age * rand) > 30
      puts "Your tree died at age #{@age}. What a super fun game, let\'s play again!"
      exit
    end
    puts "Your tree is now age #{@age}."
  end

  def height
    puts "Your tree is now #{@height} feet tall."
  end

  def count_the_oranges
    puts "Your tree has #{@orange_num} oranges"
  end

  def pick_an_orange
    if @orange_num > 0
      @orange_num -= 1
      puts "You eat a delicious orange, acheiving a temporary escape."
    else
      puts "You go to eat an orange, but none are left this year. Sadness!"
    end
  end

end

my_tree = OrangeTree.new
while true
  my_tree.height
  my_tree.count_the_oranges
  my_tree.pick_an_orange
  my_tree.count_the_oranges
  my_tree.one_year_passes
  sleep(0.5)
end





