require 'yaml'

def load_library(path)
  new_hash = {}
  emos = YAML.load_file(path)
  new_hash["get_meaning"] = emos
  new_hash["get_emoticon"] = emos.invert
  new_hash
end

def get_japanese_emoticon
end

def get_english_meaning
end