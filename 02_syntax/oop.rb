class Dog
  # class method - also called static
  def self.description
    puts "A (usually) hairy four-legged friendly creature with sharp teets"
  end

  # constructor
  def initialize(name)
    @name = name # instance variable - maintains the state of the instance
  end

  # instance method
  def respond_to_call(name)
    if name == @name
      puts "#{@name} wags tail and runs to his master"
    else
      puts "#{@name} ignores the call"
    end
  end
end

alik = Dog.new('alik')

alik.respond_to_call('alik')
alik.respond_to_call('punta')

