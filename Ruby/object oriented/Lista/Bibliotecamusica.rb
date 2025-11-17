# Realiza uma lista com dados de uma música Small girl feat. Lee Youngji (D.O.) 2024 para imprimir.

class Bibliotecamusica 
  def initialize
    @musica = []   
  end

  # Getter
  def musicas
    @musica
  end

  # Setter (adiciona uma musica)
  def adicionar_musica(musica)
    @musica << musica
  end

  # Método extra (remover)
  def remover_musica(musica)
    @livros.delete(musica)
  end
end

m = Bibliotecamusica.new
m.adicionar_musica("Small girl feat. Lee Youngji (D.O.) 2024");


puts m.musicas.inspect
