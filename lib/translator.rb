require 'yaml'

def load_library(path)
  new_hash = {}
  emos = YAML.load_file(path)
  new_hash["get_meaning"] = emos.invert
end

def get_japanese_emoticon
end

def get_english_meaning
end