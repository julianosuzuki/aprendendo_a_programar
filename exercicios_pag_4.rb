#encoding: utf-8
puts "---Exercício = Nome Completo-------"
puts "Digite seu primeiro nome:"
nome = gets.chomp
puts "Digite seu sobrenome:"
sobre_nome = gets.chomp
nome_completo = nome + " " + sobre_nome
puts "Prazer em conhece-lô " + nome_completo

"---Exercício = Número da sorte-------"
puts "Digite seu número favorito"
numero = gets.chomp
melhor = numero.to_i + (20*50) + 5
puts "Eu sugiro número " + melhor.to_s + ", como número favorito para você!"