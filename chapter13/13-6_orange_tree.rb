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
    if (@age * rand) > 15
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
      puts ("You pick an orange and burrow your rodent-like little mouth into 
            it, searching desperately for happiness in your food.
            The succulent, juicy fruit provides a temporary respite from your 
            existential despair as it dribbles down your chin.")
    else
      puts ("Your tree is out of oranges this year. Sadness!")
    end
  end

end

my_tree = OrangeTree.new
100.times do
  my_tree.count_the_oranges
  my_tree.pick_an_orange
  my_tree.count_the_oranges
  my_tree.one_year_passes
  my_tree.height
end





