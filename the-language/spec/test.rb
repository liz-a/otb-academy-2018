module A
    @@bar = 0
  end
  
  class Foo
    include A
  
    def bar
      @@bar
    end
  
    def plus
      @@bar += 1
    end
  end
  
  class Baz
    include A
  
    def bar
      @@bar
    end
  
  end
  
  p Foo.new.bar
  p Foo.new.plus
  p Foo.new.bar
  p Baz.new.bar