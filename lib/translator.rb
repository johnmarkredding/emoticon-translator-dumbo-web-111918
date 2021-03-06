require 'yaml'

def load_library(path)
  new_hash = {
    'get_meaning' => {},
    'get_emoticon' => {}
  }
  emos = YAML.load_file(path)
  
  emos.each do |k_word,v_arr|
    new_hash["get_meaning"][v_arr[1]] = k_word
    new_hash["get_emoticon"][v_arr[0]] = v_arr[1]
  end
  new_hash
end

def get_japanese_emoticon(path, emoti)
  emo_hash = load_library(path)
  emo_hash["get_emoticon"][emoti] != nil ? emo_hash["get_emoticon"][emoti] : "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoti)
  emo_hash = load_library(path)
  emo_hash["get_meaning"][emoti] != nil ? emo_hash["get_meaning"][emoti] : "Sorry, that emoticon was not found"
end