class Player

attr_reader :name, :position

#init mean to start with 
  def initialize(name)
    @name = name
    @position = 0 #starting position
  end


  def move(spaces)
    @position += spaces
  end


end

