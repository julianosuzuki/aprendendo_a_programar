#encoding: utf-8
palavras = []
while palavras.last != "#{nil}"
  puts "Digite quantas palavras quiser:"
  palavras.push gets.chomp.to_s
end
palavras.pop
puts "[#{palavras.sort.join(", ")}]"

larguraDaLinha = 40
tabela_conteudo = "Tabela de Conteúdo"
cap_um = "Livro 1: "
cap_dois = "Livro 2: "
cap_tres = "Livro 3: "
num_pag1 = "Número de páginas: "
num_pag2 = "Número de páginas: "
num_pag3 = "Número de páginas: "

cont = 1
nome_capitulos = []
num_pag = []

while cont <= 3
  puts "Digite o nome do #{cont} livro"
  nome_capitulos.push gets.chomp.to_s
  puts "Digite a quantidade de páginas do #{cont} livro"
  num_pag.push gets.chomp.to_s
  cont = cont + 1
end

puts tabela_conteudo.center larguraDaLinha
puts (cap_um.ljust (larguraDaLinha/10)) + (nome_capitulos[0].ljust (larguraDaLinha/2.3)) + (num_pag1.rjust (larguraDaLinha/10)) + (num_pag[0].ljust (larguraDaLinha/2.5))
puts (cap_dois.ljust (larguraDaLinha/10)) + (nome_capitulos[1].ljust (larguraDaLinha/2.3)) + (num_pag1.rjust (larguraDaLinha/10)) + (num_pag[1].ljust (larguraDaLinha/2.5))
puts (cap_tres.ljust (larguraDaLinha/10)) + (nome_capitulos[2].ljust (larguraDaLinha/2.3)) + (num_pag1.rjust (larguraDaLinha/10)) + (num_pag[2].ljust (larguraDaLinha/2.5))



