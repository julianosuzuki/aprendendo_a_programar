puts "Digite o primeiro ano"
ano1 = gets.chomp.to_i
puts "Digite o segundo ano"
ano2 = gets.chomp.to_i

ano_atual = ano1

while ano_atual <= ano2
  if ((ano_atual % 4) == 0) and ((ano_atual % 100) != 0 or (ano_atual % 400) == 0)
      puts ano_atual
  end
  ano_atual = ano_atual + 1
end