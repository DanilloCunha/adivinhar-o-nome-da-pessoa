def jogo_adivinha_nome
  nome_secreto = "Alice" # Nome a ser adivinhado
  tentativas = 3
  dica = "Dica = o Nome da pessoa começa com a letra A"

  puts "Bem-vindo ao jogo de adivinhação com dicas!"
  puts "Tente adivinhar o nome secreto."

  while tentativas > 0
    # Fornecer uma dica com base no número de tentativas
    case tentativas
    when 3
      puts "Dica: O nome começa com a letra '#{nome_secreto[0]}'."
    when 2
      puts "Dica: O nome tem #{nome_secreto.length} letras."
    when 1
      puts "Dica: O nome termina com a letra '#{nome_secreto[-1]}'."
    end

    print "Digite o nome: "
    nome_usuario = gets.chomp

    if nome_usuario.downcase == nome_secreto.downcase
      puts "Parabéns! Você acertou. O nome secreto é #{nome_secreto}!"
      return
    else
      tentativas -= 1
      if tentativas > 0
        puts "Errado! Você tem mais #{tentativas} tentativa(s)."
      else
        puts "Infelizmente, você perdeu! O nome secreto era #{nome_secreto}."
      end
    end
  end
end

# Inicia o jogo
jogo_adivinha_nome
