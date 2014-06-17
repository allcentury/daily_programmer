class Html
  attr_reader :paragraph 
  def initialize
    @paragraph = ""
    @title = ""
    @head = ""
  end
  def add_paragraph(text)
    @paragraph = "<p>#{text}</p>"
  end

  def save

    File.open('index.html', 'w') do |file|
      file.write("<!DOCTYPE html>\n<html>\n\t<head>\n<title></title>\n\t</head>\n\n\t<body>\n\t\t\t#{@paragraph}\n\t</body>\n</html>")
    end
  end
end
