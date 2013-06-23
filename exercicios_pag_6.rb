#encoding: utf-8
puts "-----Exercício - Elefante-----"
elefante = 1
while elefante <= 100
  elefante = elefante + 1
  if elefante == 1
    puts elefante.to_s + " elefante encomoda muita gente, "
    puts (elefante + 1).to_s + " elefantes" + (" incomodam" * elefante) + " muito mais!"
  else
    puts elefante.to_s + " elefantes encomodam muita gente, "
    puts (elefante + 1).to_s + " elefantes" + (" incomodam, " * elefante) + " muito mais!"
  end
end

puts "-----Exercício - Velhar surda-----"
fala = ""
while fala != "TCHAU"
  puts "Diga algo para a velha:"
  fala = gets.chomp
  if fala != fala.upcase
    puts "QUE?! FALA MAIS ALTO!"
    puts rand(1930..1950)
  else
    puts "NÃO, NÃO DESDE 1938!"
    puts rand(1930..1950)
  end
end
puts "AH TÁ, TCHAU!"

puts "-----Exercício - Velhar finge que é surda-----"
fala = ""
fala_tchau_3 = 0

while fala_tchau_3 < 3
  puts "Diga algo para a velha:"
  fala = gets.chomp
  if fala == "TCHAU"
    fala_tchau_3 = fala_tchau_3 + 1
  else
    fala_tchau_3 = 0
  end

  if fala != fala.upcase
    puts "QUE?! FALA MAIS ALTO!"
  else
    puts "NÃO, NÃO DESDE 1938!"
  end
end
puts "AH TÁ, ENTENDI! TCHAU!!"

puts "-----Exercício - Anos Bissextos-----"
puts "Digite o primeiro ano:"
ano1 = gets.chomp
puts "Digite o segundo ano:"
ano2 = gets.chomp

if (ano1.to_i % 4) == 0 or (ano1.to_i % 400) == 0
  puts "Ano Bissexto: " + ano1.to_s
end
while ano1.to_i <= ano2.to_i
  ano1 = ano1.to_i + 1
  if (ano1.to_i % 4) == 0
    puts "Ano Bissexto: " + ano1.to_s
  end
end