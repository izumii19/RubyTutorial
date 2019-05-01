# frozen_string_literal: true

# lsコマンド
def ls_command
  "lsメソッドがよばれた"
end

puts(%Q'"ls"と入力してください')
input = gets

# TODO これはあとでけす
# print(input)

if input.chomp! == "ls"
  puts ls_command
end

