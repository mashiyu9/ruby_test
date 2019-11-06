class Player
  def hand
    while true 
      puts "出す手を選んでください 0 : グー, 1 : チョキ, 2 : パー"
      my_hand = gets.to_i
      if my_hand <=2 && my_hand >= 0
        return my_hand
      else
        puts "0~2の数字を選択してください" 
      end
    end
  end
end

class Enemy
  def hand
    enemy_hand = rand(3) + 1
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する  
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    if player_hand == 0 
      if enemy_hand == 1
        puts "相手の手はグー"
        puts "引き分けです"
      elsif enemy_hand == 2
        puts "相手の手はチョキ}"
        puts "あなたの勝ちです"
      elsif enemy_hand == 3
        puts "相手の手はパーです"
        puts "あなたの負けです"
      end
    elsif     
      if player_hand == 1 
        if enemy_hand == 1
          puts "相手の手はグー"
          puts "あなたの負けです"
        elsif enemy_hand == 2
          puts "相手の手はチョキ"
          puts "引き分けです"
        elsif enemy_hand == 3
          puts "相手の手はパー"
          puts "あなたの勝ちです"
        end
      end
    elsif player_hand == 2
      if enemy_hand == 1
        puts "相手の手はグー"
        puts "あなたの勝ちです"
      elsif enemy_hand == 2
        puts "相手の手はチョキ"
        puts "あなたの負けです"
      elsif enemy_hand == 3
        puts "相手の手はパーです"
        puts "引き分けです"
      end
    end


      

      


    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)

# ここに書かれているRubyの記述はあくまでヒントとして用意された雛形なので