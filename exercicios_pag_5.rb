#encoding: utf-8
puts "-----Exercício - Despedido-----"
puts "O que você quer de novo mano?"
desejo = gets.chomp.upcase
puts ("O que você quer dizer com \'" + desejo + "\'. Esta Despedido!").upcase
puts " "
larguraDaLinha = 40
tabela_conteudo = "Tabela de Conteúdo"
cap_um = "Capítulo 1: "
cap_dois = "Capítulo 2: "
cap_tres = "Capítulo 3: "
num = "Números"
letras = "Letras"
var = "Variáveis"
pag1 = "página 1"
pag73 = "página 73"
pag118 = "página 118"
puts tabela_conteudo.center larguraDaLinha
puts ""
puts (cap_um.ljust (larguraDaLinha/4)) + (num.ljust (larguraDaLinha/4)) + (pag1.rjust (larguraDaLinha/2))
puts (cap_dois.ljust (larguraDaLinha/4)) + (letras.ljust (larguraDaLinha/4)) + (pag73.rjust (larguraDaLinha/2))
puts (cap_tres.ljust (larguraDaLinha/4)) + (var.ljust (larguraDaLinha/4)) + (pag118.rjust (larguraDaLinha/2))