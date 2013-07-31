# -*- coding:utf-8 -*-

########### Hello World #############
#puts "Hello World."
#puts "Hello Alex."
#puts "So easy..."

#puts "我说yes你说no，yes，yes，no，no..."




########### 运 算 符 #############

# + 加號
# - 減號
# / 除號
# * 乘號
# % 百分比符號
# < 小於符號
# > 大於符號
# <= 小於等於符號
# >= 大於等於號

#puts "I will now count my chickens:"
#
#puts "Hens", 25 + 30 / 6
#puts "Roosters", 100 - 25 * 3 % 4
#
#
#puts "Is it true that 3 + 2 < 5 - 7?"
#puts 3 + 2 < 5 - 7
#
#puts "Is it greater or equal?", 5 >= -2
#puts "Is it less or equal?", 5 <= -2



########### 变量和命名 #############

#num_one = 100
#num_two = 40
#number = num_one - num_two
#chinese_name = "高鹏"
#englishName = "alex"
#puts "100减去40等于： #{number}"
#
#puts "你好，我叫：#{chinese_name}"
#puts "Hi, his name is \"#{englishName}\""





########### 多个变量和打印 #############

#my_name = 'Zed A. Shaw'
#my_age = 35 # not a lie
#my_height = 74 # inches
#my_weight = 180 # lbs
#my_eyes = 'Blue'
#my_teeth = 'White'
#my_hair = 'Brown'
#
#puts "Let's talk about %s." % my_name
#puts "He's %d inches tall." % my_height
#puts "He's %d pounds heavy." % my_weight
#puts "Actually that's not too heavy."
#puts "He's got %s eyes and %s hair." % [my_eyes, my_hair]
#puts "His teeth are usually %s depending on the coffee." % my_teeth
#
## this line is tricky, try to get it exactly right
#puts "If I add %d, %d, and %d I get %d." % [
#    my_age, my_height, my_weight, my_age + my_height + my_weight]




class Person
  attr_accessor :name

  def set_name(your_name)
    @name = your_name
  end
end

m = Person.new
p m.name
m.set_name('today')
p m.name # => 猜是什么