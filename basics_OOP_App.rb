class Person
    attr_accessor :name, :age
  
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def introduce
      puts "Hi, my name is #{@name} and I'm #{@age} years old."
    end
  end
  
  class Man < Person
    attr_accessor :profession
  
    def initialize(name, age, profession)
      super(name, age)
      @profession = profession
    end
  
    def introduce
      puts "Hi, my name is #{@name}, I'm #{@age} years old, and I work as a #{@profession}."
    end
  
    def work
      puts "I'm a #{@profession} and I'm working."
    end
  end
  
  class Woman < Person
    attr_accessor :interests
  
    def initialize(name, age, interests)
      super(name, age)
      @interests = interests
    end
  
    def introduce
      puts "Hi, my name is #{@name}, I'm #{@age} years old, and my interests are #{@interests}."
    end
  
    def pursue_interests
      puts "I'm pursuing my interests in #{@interests}."
    end
  end
  
  # Usage example
  person = Person.new("John", 25)
  person.introduce
  
  man = Man.new("Mike", 30, "Engineer")
  man.introduce
  man.work
  
  woman = Woman.new("Lisa", 28, "Painting")
  woman.introduce
  woman.pursue_interests
  