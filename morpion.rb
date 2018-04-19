class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)

  def initialize
    #TO DO doit régler sa valeur, ainsi que son numéro de case
    board = []
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "

  end

end

class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
  attr_accessor :BoardCases[]

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    Board.BoardCase
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
    attr_accessor :array
    def initialize
  @case1 = BoardCase.new(1)
  @case2 = BoardCase.new(2)
  @case3 = BoardCase.new(3)
  @case4 = BoardCase.new(4)
  @case5 = BoardCase.new(5)
  @case6 = BoardCase.new(6)
  @case7 = BoardCase.new(7)
  @case8 = BoardCase.new(8)
  @case9 = BoardCase.new(9)
  @plateau = [@case1.value, @case2.value, @case3.value, @case4.value, @case5.value, @case6.value, @case7.value, @case8.value, @case9.value]
end
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

    def initialize(name, value)		# <= Initilaise les joueurs.
  		@name = name
  		@value = value
  	end

    class Game
      def initialize
        #TO DO : créé 2 joueurs, créé un board
        Player1 = Player.new
        Player2 = Player.new
        new_Board = Board.new
        #    initialise 9 instances de BoardCases).
        # Game s'occupe de finir la partie si un joueur a gagné,
        #de demander aux utilisateurs où ils veulent jouer
        # à chaque tour
      end

      def go
        # TO DO : lance la partie
      end

      def turn
        #TO DO : affiche le plateau,
        p Board
        # demande au joueur il joue quoi,
        p "Que jouez-vous ?"
        input = gets.strip  #.strip pour eviter espaces inutiles
        index = input_to_index(input)
        if valid_move?(board, index)
          move(board, index)
          display_board(board)
        else
          turn(board)

        #  vérifie si un joueur a gagné,
        #passe au joueur suivant si la partie n'est pas finie
        if joueur a gagner
          p "Vous avez gagner!"
        else
          p "Que jouez-vous ?"
        end
      end

    end

    Game.new.go
