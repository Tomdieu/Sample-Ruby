puts "!/usr/bin"
puts "1----------------------------------\n"

puts "Variables"

a = 12
nam = "Ivan Tom"
b = 12.0

puts "a = #{a}\nname = #{nam} \nb = #{b}"

puts "\n\n2----------------------------------\n"

puts "----Conditions In Ruby-------------\n"
puts ''
puts ''
if a >10
	puts "#{a} is > 10"
end

unless b < 10
	puts "#{b} !< 10"
end
	

if a > 11 and b <13
	puts "#{a} > 11 and #{b} < 13"
end

val = 15
case val
when 12
	puts "#{val} == 12"
when 13
	puts "#{val} == 13"
when 14,15,16
	puts "#{val} >= 14"
								
end

puts "3----------------------------------\n"
puts "-------Ranges in ruby-----------\n"
puts ''
puts ''
array = (1..10).to_a
puts "array = #{array}"
array1 = ("a".."z").to_a
puts "array1 = #{array1}"

age  = 12
case age
when 0..5
	puts "Child"
when 6..12
	puts "Children"
when 13..18
	puts "Teenager"
when 19..100
	puts "adult"
else
	puts "Invalid"
end

puts ''
puts ''

puts "4----------------------------------\n"
puts "-----------For loop in ruby---------\n"

for i in (0..10)
	
	next if i%2 == 0
	puts i

	#if i%2 == 0
	#	puts "#{i}"
	#end
end

puts ''
puts ''

puts "5----------------------------------\n"
puts "-----------Array in ruby---------\n"

var = ["ivan","tom","ivantomdio@gmail.com","nova","password"]

puts "#{var}"

var << 110367106
puts "#{var}"

var.push("10000")

puts "#{var}"

var.insert(2,"Tomdieu")

puts "#{var}"


puts ''
puts ''

puts "6----------------------------------\n"
puts "-----------Hashes in ruby---------\n"

var1 = {"name"=>"Tomdieu","age"=>17}

puts var1["name"]

var2 = {:name =>"Tomdieu",:age=>17}

puts var2[:age]

var3 = {name:"Ivan Tom",age:17}

puts var3.values

puts ''
puts ''

puts "7----------------------------------\n"
puts "-----------Nested Hashes in ruby---------\n"

cars ={
	bmw:{year:2021,color:"red"},
	toyota:{year:2021,color:"blue"}
}

puts "cars[:bmw][:color] = #{cars[:bmw][:color]}"

puts ''
puts ''

puts "8----------------------------------\n"
puts "-----------Iterators in ruby---------\n"

arr = (1..10)

arr.each do |x|
	puts "x -> #{x}"
end 


var1.each do |key,value|
	puts "#{key} ==> #{value}"
end


10.times do 
	puts "Hello World"
end


puts ''
puts ''

puts "9----------------------------------\n"
puts "-----------Counting Letters in ruby---------\n"

text = "I am a boy and my name is Ivan Tom i love programming and it is amazing"

text.downcase!

freq = {}
freq.default = 0

text.each_char do |x|
	freq[x] += 1
end

("a".."z").each do |x|
	puts "#{x} => #{freq[x]}"
end



puts ''
puts ''

puts "10----------------------------------\n"
puts "-----------Functions in ruby---------\n"


def say
	puts "Hi\n"
end

say

def pow(base,exp)
	puts exp
	if exp == 0
		1
	else
		base * pow(base,exp-1)
	end
end



x = pow(4,2)
puts "pow 4,2 = #{x}"
puts ''
puts ''
puts "11------------------------------------------\n"
puts "---------Global Operator--------------------\n";

#to declare a global variable we add a dollar sign infront or the variable

$g = 2

def change (x)
	$g = x
end

change 4

puts $g

puts ''
puts ''

puts "12-------------------------------------------\n"
puts "--------------Classes In Ruby-----------------\n"

class Person
	attr_accessor :name,:age
	def initialize(name,age)
		@name = name
		@age = age
	end

	def get_name
		@name
	end

	def get_age
		@age
	end

	def set_name=(name)
		@name = name
	end

	def to_s
		"#{@name} is #{@age}"
	end

	def change(n,a)
		self.name = n
		self.age = a
	end
end

p1 = Person.new("Ivan",12)
puts p1.get_name
puts p1.get_age
puts p1

p1.set_name = "Navi Coperation"

puts p1

p1.change("nova",45)

puts p1


class Animal
	attr_accessor :name,:color
	def initialize(name,color)
		self.name = name
		self.color = color
	end
	def speak
		puts "hi"
	end
	def to_s
		"#{self.name}  #{self.color}"
	end
end

class Dog < Animal  
	def speak
		puts "Woo wooo"
	end
end


d = Dog.new("canis","white")
d.speak
puts d

class Mammal < Animal
	def speak
		super # the super method simply call the method speak of the parent class Animal(Super class)
		puts "mammal"
	end
end


m = Mammal.new("Bats","black")

puts m


puts ''
puts ''
puts '13 Further manipulation of class in Ruby'
puts ''

puts "Lets Us Create A Class Call Vectors"

class Vector
	attr_accessor :x , :y
	def initialize(x,y)
		self.x = x
		self.y = y
	end
	
	def to_s
		"#{self.x}i+#{self.y}j"
	end

	def +(other)
		Vector.new(self.x+other.x,self.y+other.y)
	end	
	
end

v1 = Vector.new(1,5)
v2 = Vector.new(2,4)

v3 = v1+v2

puts "v1 = #{v1}"
puts "v2 = #{v2}"
puts "v3 = #{v3}"

puts ''
puts 'further mainpulation of classes'
puts ''
puts ''

class Cat
	attr_accessor :name,:age
	include Comparable
	# => The Function Comparator can be use to add comparism operator 
	# => in a class such as(<,>,>=,<=,==, and !=)
	#
	def initialize(name,age)
		self.name = name
		self.age = age
	end

	def <=>(other)
		self.age <=> other.age
	end

	def to_s
		"#{self.name}  #{self.age}"
	end
end

cat1 = Cat.new("miomio",14)
cat2 = Cat.new("canis",78)
puts "cat1 = #{cat1}"
puts "cat2 = #{cat2}"
puts "cat1 < cat2 = #{cat1 < cat2}"


puts ''
puts ''

puts '-------------------------------------------------'
puts '----------Namespace In Ruby---------------------'
puts ''
puts ''
	# =>name space are declared using the key word module 
	# => namespace can be use to store many classes
puts 'To inherit from another class in ruby we use the sign < '
puts ''
module Human
	class Woman
		attr_accessor :name,:age
		def initialize(name,age)
			self.name = name
			self.age = age
		end

		def get_name
			self.name
		end

		def get_age
			self.age
		end

		def to_s
			"#{self.name} #{self.age}"
		end
	end

	class Men
		attr_accessor :name,:age
		def initialize(name,age)
			self.name = name
			self.age = age
		end 
		def get_name
			self.name
		end

		def get_age
			self.age
		end

		def to_s
			"#{self.name}  #{self.age}"
		end
	end

	class Child < Woman
		attr_accessor :childname,:childage
		def initialize(name,n,age)
			super(name,age)
			self.childname = n
		end

		def mother_name 
			self.name
		end

		def get_name
			self.childname
		end

		def get_age
			self.age
		end

		def to_s
			"#{self.childname}  #{self.age}  Mother => #{self.name}"
		end
		
	end
	
end


	# => To access namespace twe use Namespace_Name :: class_name 

father = Human::Men.new("Daddy",45)
mother = Human::Woman.new("Mom",35)
me = Human::Child.new("Mom","ivan",15)

puts "Father = #{father}"
puts "Mother = #{mother}"
puts "me = #{me}"



puts "manipulation of files in ruby"

# File Mode
# r Read-Only start at the beginning of a file
# r+ read-write start at the beginning of a file
# w write-only truncates the existing file to zero lenght or create a new file for writing
# w+ read-write truncates the existing file to zero lenght
# a write only append to the end of the file if file exists,other wise create
# a+ read-write append or reads from end of file

file = File.new("Ruby_test.txt","w+")

file.puts("I Love programming")

file.puts("My Best Programming Languages are Ruby,Python,Java,C And C++")



txt = "
		<html>
		<title>Hello World</title>
		<body>
		<p>
			<b>Html Is A Bit Booring</b>
		</p>
		</body>
		</html>
	"

file.puts(txt)

file.close

#ANother Way Of Adding Text To A file In Ruby

File.open("Ruby_test.txt", "a+") { |file| #here the |file| is a shotcut of file = File.open("Ruby_text.txt","a+")
	file.puts("Java\n=>System.out.println('Hello World');\nPython\n=>print('Hello World')")
  }


 #Reading The Contents of a file in Ruby Line By Line



puts "The Contents Of The File Ruby_test.txt using readlines which read line by line"
File.readlines("Ruby_test.txt").each do |line|
	puts "---#{line}"
end


puts "\n\nThe Contents Of The File Ruby_test.txt using read\n\n"

txt = File.read("Ruby_test.txt")
puts txt


puts "\nLooping Through the lines of the file\n\n"

i = 0
txt.each_line { |line|
	puts "Line #{i}   #{line}"
	i += 1
  }


puts "Deleteing The File Ruby_test.txt using File.delete Function"

puts "Do you want to delete The file Ruby_test.txt ?(y/n) : "
r = gets.chomp
if(r == 'y')
	File.delete("Ruby_test.txt")
	puts "File Ruby_test.txt deleted successfully"
else
	puts "File Deletion cancel"
end
