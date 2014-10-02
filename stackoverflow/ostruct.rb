require 'ostruct'

class Foo

  def fetch_object
    foobar = Bar.find
    foobar.fail
  end

end

class Bar

  def self.find
    OpenStruct.new(name: 'Foo Bar')
  end

end
