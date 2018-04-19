require 'binding.pry'
class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)

  def initialize
    #TO DO doit régler sa valeur, ainsi que son numéro de case
#    attr_accessor :value, :case_number
board = []
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
#    BoardCase.case_number =
#    BoardCase.value = "x" "O" " "
    # :x , :0 , :" "
#     def display_board(board)
#
# end
  end


  def to_s
    #TO DO : doit renvoyer la valeur au format string

  end

end

class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
  attr_accessor :BoardCases[]

def initialize
  #TO DO :
  #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
  #Board.BoardCase

  #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
  attr_accessor :array
end

def to_s
  #TO DO : afficher le plateau
  p Board
end

def play
  #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
end

def victory?
  #TO DO : qui gagne ?
end

class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
  attr_accessor :name , :value

  def initialize
    #TO DO : doit régler son nom, sa valeur, son état de victoire
  end

  class Game
    def initialize
      #TO DO : créé 2 joueurs, créé un board
      Player1 = Player.new
      Player2 = Player.new
      new_Board = Board.new
      #    initialise 9 instances de BoardCases).
      # Game s'occupe de finir la partie si un joueur a gagné, de demander aux utilisateurs où ils veulent jouer
      # à chaque tour
    end

    def go
      # TO DO : lance la partie
    end

    def turn
      #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné,
      #passe au joueur suivant si la partie n'est pas finie
    end

  end

  Game.new.go
