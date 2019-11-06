class Player
  def hand
    puts "出す手を選んでください 0 : グー 1 : チョキ, 2 : パー"
    while true 
      
      my_hand = gets.chomp
      p my_hand
      if (my_hand == "0") || (my_hand == "1") || (my_hand == "2")
        return my_hand.to_i
      else
        puts "0~2の数字を入力してください" 
      end
    end
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
  end
end

class Enemy
  def hand
    enemy_hand = rand(2).to_i
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する  
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    # janken = Janken.new
    janken_juge = (player_hand - enemy_hand + 3)
    if janken_juge % 3 == 0 
      puts "相手は#{enemy_hand}を出しました"
      puts "引き分けです"
      player = Player.new
      enemy = Enemy.new
      janken = Janken.new
      janken.pon(player.hand, enemy.hand)
      # janken.pon(player.hand,enemy.hand)
    elsif janken_juge % 3 == 1
      puts "相手は#{enemy_hand}を出しました"
      puts "あなたの負けです"
      return 
    elsif janken_juge % 3 == 2
      puts "相手は#{enemy_hand}を出しました"
      puts "あなたの勝ちです"
      return 
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
# while player.hand == enemy.hand
  janken.pon(player.hand, enemy.hand)
# end
