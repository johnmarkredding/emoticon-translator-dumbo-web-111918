require 'yaml'

def load_library(path)
  new_hash = {}
  emos = YAML.load_file(path)
  new_hash["get_meaning"] = emos.invert
  new_hash["get_emoticon"] = emos
  new_hash
end

def get_japanese_emoticon
end

def get_english_meaning
end