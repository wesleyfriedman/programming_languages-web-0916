def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_hash|
    language_hash.each do |name, type_hash|
      if !new_hash.key?(name)
        new_hash[name] = {}
      end
      new_hash[name][:type] = type_hash[:type]
      if new_hash[name].key?(:style)
        new_hash[name][:style] << style
      else
        new_hash[name][:style] = [style]
      end
    end
  end
  return new_hash
end
