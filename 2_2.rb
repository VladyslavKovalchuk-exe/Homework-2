def convert_to_pig_latin(sentence)
 
 words = sentence.split(' ')  # Розбиваємо речення на слова
 
 pig_latin_sentence = words.map do |word|

    punctuation = word.match(/[[:punct:]]$/) ? word[-1] : ''
   
 clean_word = word.gsub(/[[:punct:]]$/, '')  # Видаляємо розділові знаки
   
    if clean_word.length > 1
      pig_latin_word = clean_word[1..-1] + clean_word[0] + 'ay'
    else
      pig_latin_word = clean_word + 'ay'
    end
    
    pig_latin_word + punctuation  # Додаємо розділові знаки назад
  end

  pig_latin_sentence.join(' ')  # Збираємо перетворене речення назад в рядок
end

puts convert_to_pig_latin("Hello world!")
puts convert_to_pig_latin("I love Ruby programming!")
