require 'rspec'
require 'pry'
require_relative '../lib/html'

describe Html do
  it 'takes a string and generates a paragraph' do
    doc = Html.new
    doc.add_paragraph("This is my paragraph")
    doc.save
    expect(File).to exist('index.html')
    expect { File.read('index.html').to include("doc.paragraph") }
  end
end
