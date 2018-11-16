require 'yaml'

def load_library(path)
  new_hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }
  emos = YAML.load_file(path)
  
  emos.each || do |k_word,v_arr|
    v_arr
  end
  
  new_hash["get_meaning"] = emos
  new_hash["get_emoticon"] = emos.invert
  new_hash
end

def get_japanese_emoticon
end

def get_english_meaning
end