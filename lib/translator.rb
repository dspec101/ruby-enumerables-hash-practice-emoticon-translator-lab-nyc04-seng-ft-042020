# require modules here
require 'pry'
require 'yaml'

def load_library(file_path)
library = YAML.load_file(file_path)
  result = {}
  library.each do |meaning, emoticons|
  result[meaning] = {}
  result[meaning][:english] = emoticons[0]
  result[meaning][:japanese] = emoticons[1]
  end
  result
end

def get_english_meaning(file_path, japanese_emoticon)
library = load_library(file_path)

library.each do |key, hash|
  binding.pry 
  hash[:japanese]
end
if library["meaning"].include?(japanese_emoticon)
  result = library["meaning"]
 else
    "Sorry, that emoticon was not found"
  end
  result
end	
    
def get_japanese_emoticon(file_path, english_emoticon)
library = load_library(file_path)
if library["meaning"].include?(english_emoticon)
  result = library["meaning"][japanese]
 else
    "Sorry, that emoticon was not found"
  end
  result
end	
      
    
