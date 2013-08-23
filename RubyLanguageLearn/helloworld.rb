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


#####################################

#class Person
#  attr_accessor :name

#  def set_name(your_name)
#    @name = your_name
#  end
#end

#m = Person.new
#p m.name
#m.set_name('today')
#p m.name # => 猜是什么

#####################################

#test = "%s %s %s %s"

#puts test % [1,2,3,4]
#puts test % ["one","two","three","four"]

#####################################



#days = "Mon Tue Wed Thu Fri Sat Sun"
#months = "Jan\nFeb\nApr\nMay\nJun\nJil\nAug"

#puts "days:", days
#puts "months:", months

#one = <<PARAGRAPH
#There's something going on here.
#With the three double-quotes.
#We'll be able to type as much as we like.
#Even 4 lines if we want, or 5, or 6.
#PARAGRAPH

#puts one

################转译符#####################


#tabby_cat = "\tI'm tabbed in."
#persian_cat = "I'm split\non a line."
#backslash_cat = "I'm \\ a \\ cat."

#fat_cat = <<MY_HEREDOC
#I'll do a list:
#\t* Cat food
#\t* Fishies
#\t* Catnip\n\t* Grass
#MY_HEREDOC

#puts tabby_cat
#puts persian_cat
#puts backslash_cat
#puts fat_cat

#####################################

#print "How old are you?"
#age = gets.chomp()
#print "How tall are you?"
#height = gets.chomp()
#print "How much do you weigh?"
#weight = gets.chomp()

#puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

#####################################

#require 'open-uri'

#open("http://www.ruby-lang.org/en") do |f|
#	f.each_line {|line| p line}
#	puts f.base_uri
#	puts f.content_type
#	puts f.charset
#	puts f.content_encoding
#	puts f.last_modified
#end


#Require：
#require方法让你加载一个库，并且只加载一次，如果你多次加载会返回false。只有当你要加载的库位于一个分离的文件中时才有必要使用require。使用时不需要加扩展名，一般放在文件的最前面：
#    require ‘test_library’
#Load：
#load用来多次加载一个库，你必须指定扩展名：
#   load ‘test_library.rb’
#Include:
#当你的库加载之后，你可以在你的类定义中包含一个module，让module的实例方法和变量成为类本身的实例方法和类变量，它们mix进来了。根据锄头书，include并不会把module的实例方法拷贝到类中，只是做了引用，包含module的不同类都指向了同一个对象。如果你改变了module的定义，即使你的程序还在运行，所有包含module的类都会改变行为。
#   module Log
#      def class_type
#           “This class is of type: #{self.class}”
 #      end
 #  end
#   class TestClass
#       include Log
#   end
#   tc=TestClass.new.class_type    #=>This class is of type: TestClass
#Extend:
#extend会把module的实例方法作为类方法加入类中：
#   module Log
#       def class_type
#           “This class is of type: #{self.class}”
#       end
#   end
 #  class TestClass
 #      extend Log
 #  end
 #  tc=TestClass.class_type       #=>This class is of type: TestClass 



#########################################

#first, second, third = ARGV

#puts "The script is called: #{$0}"
#puts "Your first variable is: #{first}"
#puts "Your second variable is: #{second}"
#puts "Your third variable is: #{third}"


#**执行语句：ruby ex13.rb first 2nd 3rd




#########################################

user = ARGV.first
prompt = '>'

puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."

puts "Do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer.  Nice.
MESSAGE
































