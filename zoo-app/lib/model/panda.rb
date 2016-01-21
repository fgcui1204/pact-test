class Panda
  attr_reader :name

  def initialize name
    @name = name
  end

  def == other
    other.is_a?(Panda) && other.name == name
  end
end
