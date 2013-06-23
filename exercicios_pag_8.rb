#encoding: utf-8

def numeroPortugues numero
  if numero < 0  #  Nada de números negativos.
    return "Por favor, digite um número positivo."
  end
  if numero == 0
    return "zero"
  end

  numExtenso = ""  #  Esta é a string que vamos retornar.

  unidades = ["um", "dois", "tres", "quatro", "cinco", "seis", "sete", "oito", "nove"]
  dezenas = ["dez", "vinte", "trinta" , "quarenta", "cinqüenta", "sessenta",   "sessenta",    "oitenta",   "noventa"]
  centenas = ["cem", "duzentos", "trezentos", "quatrocentos", "quinhentos", "seiscentos", "setesentos", "oitocentos", "novecentos"]
  especiais = ["onze", "doze", "treze", "catorze", "quinze", "dezesseis",  "dezesete",    "dezoito", "dezenove"]

  #  "falta" é quanto do número ainda falta escrever.
  #  "escrevendo" é a parte que estamos escrevendo agora.

  falta  = numero
  escrevendo = falta/1000           #  Quantas centenas ainda faltam escrever?
  falta  = falta - escrevendo*1000  #  Subtraia essas centenas.

  if escrevendo > 0
    if ((escrevendo == 1) and (falta > 0)) or (escrevendo < 10)
      numExtenso = numExtenso  + unidades[escrevendo-1] + " mil"
    elsif
      numExtenso = numExtenso + dezenas[escrevendo-1] + " mil"
    elsif
      numExtenso = numExtenso + centenas[escrevendo-1] + " mil"
    else
      numExtenso = numExtenso + especiais[escrevendo-1] + " mil"
    end

    if falta > 0
      #  Nós não escrevemos dois centosecinqüenta e um"...
      numExtenso = numExtenso + " e "
    end
  end

  escrevendo = falta/100           #  Quantas centenas ainda faltam escrever?
  falta  = falta - escrevendo*100  #  Subtraia essas centenas.

  if escrevendo > 0
    if ((escrevendo == 1) and (falta > 0))
      numExtenso = numExtenso + "cento"
    else
      numExtenso = numExtenso + centenas[escrevendo-1]
    end

    if falta > 0
      #  Nós não escrevemos dois centosecinqüenta e um"...
      numExtenso = numExtenso + " e "
    end
  end

  escrevendo = falta/10           #  Quantas dezenas faltam escrever?
  falta  = falta - escrevendo*10  #  Subtraia dessas dezenas.

  if escrevendo > 0
    if ((escrevendo == 1) and (falta > 0))
      #  Não podemos escrever "dez e dois", temos que escrever "doze",
      #  então vamos fazer uma exceção.
      numExtenso = numExtenso + especiais[falta-1]
      #  O "-1" aqui é porque especiais[3] é "catorze", e não "treze".

      #  Já que cuidamos do dígito das unidades,
      #  não falta mais nada
      falta = 0
    else
      numExtenso = numExtenso + dezenas[escrevendo-1]
      #  E o "-1" aqui é porque dezenas[3] é "quarenta", e não "trinta".
    end

    if falta > 0
      #  Como nós não escrevemos "sessentaequatro"...
      numExtenso = numExtenso + " e "
    end
  end

  escrevendo = falta  #  Quantas unidades faltam ser escritas?
  falta  = 0          #  Subtraia elas.

  if escrevendo > 0
    numExtenso = numExtenso + unidades[escrevendo-1]
    #  Novamente: O "-1" aqui é porque unidades[3] é "quatro", e não "três".
  end

  #  Agora podemos, simplesmente, retornar o nosso "numExtenso"...
  numExtenso
end

puts numeroPortugues(  0)
puts numeroPortugues(  9)
puts numeroPortugues( 10)
puts numeroPortugues( 11)
puts numeroPortugues( 17)
puts numeroPortugues( 32)
puts numeroPortugues( 88)
puts numeroPortugues( 99)
puts numeroPortugues(199)
puts numeroPortugues(999)
puts numeroPortugues(234)
puts numeroPortugues(1015)
puts numeroPortugues(3234)
puts numeroPortugues(3211)
puts numeroPortugues(9999)
puts numeroPortugues(999999)
puts numeroPortugues(100000000000)