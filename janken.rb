class Player
    def hand
        puts "Veuillez saisir un nombre."
        puts "0: Pierre\n1: Papier\n2: Ciseaux\n"
        input_hand = gets.to_i
        while true
            if (input_hand == 0) || (input_hand == 1) || (input_hand == 2)
                return input_hand
            else
                puts "Veuillez saisir un nombre."
                puts "0: Pierre\n1: Papier\n2: Ciseaux\n"
                input_hand = gets.to_i
            end
        end
    end
end
class Enemy
    def hand
        return rand(1..2)
    end
end
class Janken
    def pon(player_hand, enemy_hand)
        janken = ["Pierre", "Papier", "Ciseaux"]
        puts "La main de l'adversaire est #{ janken[enemy_hand] }."
        if player_hand == enemy_hand
            puts "Amour"
            true
        elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
            puts "vous avez gagné"
            false
        else
            puts "Vous avez perdu"
            false
        end
    end
end
class GameStart
    def jankenpon
        player = Player.new
        enemy = Enemy.new
        janken = Janken.new
        next_game = true
        while next_game
            next_game = janken.pon(player.hand, enemy.hand)
        end
    end
end
game = GameStart.new
game.jankenpon