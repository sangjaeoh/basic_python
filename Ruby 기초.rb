
#Ruby .rb
# 수와 계산
puts(10 + 5)	#15
puts(10 - 5)	#5
puts(10 * 5)	#50
puts(10 / 5)	#2

puts( 2.2.ceil() )		#3
puts( 2.7.floor() )		#2
puts( 2**10 )			#1024
puts( Math::PI )		#3.141592653589793



#문자와 데이터 타입

#문자의 표현
puts('Hello')			#Hello
puts("Hello")			#Hello
puts("Hello 'world'")	#Hello 'world'
puts('Hello "world"')	#Hello "world"

#문자열의 제어
puts('Hello '+'world')	#Hello world
puts('Hello '*3)		#Hello Hello Hello
puts('Hello'[0])		#H
puts('Hello'[1])		#e
puts('Hello'[2])		#l

puts('hello world'.capitalize())						#Hello world
puts('hello world'.upcase())								#HELLO WORLD
puts('Hello world'.length())								#11
puts('Hello world'.sub('world', 'programming'))			#Hello programming

#특수한 문자들
puts("egoing's \"tutorial\"")							#egoing's "tutorial"													'
puts("\\")																#\
puts("Hello\nworld")											#Hello
																					#world
puts("Hello\t\tworld")										#Hello       world
puts("\a")																#기본경고음 출력
puts('Hello\nworld')											#Hello\nworld   루비의''은 <![CDATA[]]>느낌

#문자와 숫자를 통해서 알아보는 데이터 타입
puts(10+5)					#15
puts("10"+"5")			#105

#변수의 기본 문법
x=10
y=5
puts(x+y)					#15

title = "python & ruby"
puts("Title is "+title)		#Title is python & ruby


#문자열에서 변수의 사용
name = "이상효"
puts("안녕하세요. "+name+"님")								#안녕하세요. 이상효님
puts(name+"님을 위한 강의를 준비했습니다.")		#이상효님을 위한 강의를 준비했습니다.


#수 계산에서 변수의 사용
donation = 200
student = 10
sponsor = 100
puts((donation*student)/sponsor)	#20

#비교와 블리언
a=1
b=1
puts(a==b)		#True
puts(1==2)		#false
puts(1>2)			#false
puts(1<2)			#True
puts(true)		#True
puts(false)		#false


# 조건문
if true
  puts("code1")		#code1
  puts("code2")		#code2
end
puts("code3")			#code3

input = 11
real = 11
if real == input
  puts("Hello!")							#Hello!
else
  puts("Who are you?")
end

input = 33
real_egoing = 11
real_k8805 = "ab"
if real_egoing == input
  puts("Hello!, egoing")
elsif real_k8805 == input
  puts("Hello!, k8805")
else
  puts("Who are you?")
end

#입력
puts("입력해주세요")
in_str = gets.chomp()
puts(in_str.upcase() + " World!")

#논리연산자 : 문자 그대로 사용
if real_egoing == input or real_k8805 == input
if real_egoing == input and real_k8805 == input


# 배열
al = ['A', 'B', 'C', 'D']
puts(al.length) # 4
al.push('E')
print(al) # ["A", "B", "C", "D", "E"]
al.delete_at(0)
print("\n")
print(al) # ["B", "C", "D", "E"]

# 타입확인
puts(al.class) #Array

#반복문 break사용가능
while false do
  puts('Hello world')
end
puts('after while')

i = 0
while i < 10 do
    puts('puts("Hello world '+(i*9).to_s()+'")')
    i = i + 1
end

#배열 반복문
members = ['egoing', 'leezche', 'graphittie']
i = 0
while i < members.length do
    puts(members[i])
    i = i + 1
end

#반복문 for
members = ['egoing', 'leezche', 'graphittie']
for member in members do
    puts(member)
end

for item in (5..10) do
  puts(item)			#5678910
end

#함수 define:정의
def a3()
    puts('aaa')			#aaa
end
a3()

def a3()
    return 'aaa'		#aaa
end
p(a3())

def a(num)
    return 'a'*num	#aaa
end
p a(3)

def make_string(str, num)
    return str*num						#aaa
end
puts(make_string('b', 3))

#모듈
module File
  module_function()
  def a()
    return 'a'
  end
end

require_relative 'File'
puts(file1.def())

#클래스 생성
class Name
	def initialize(v1,v2)	#생성자 함수명 고정
		p v1, v2
		@v1 = v1						#@v1 은 인스턴스 변수로 같은 클래스 전역에서 사용가능
		@v2 = v2
	end

	def method_name()
		return @v1+@v2
	end
end
name = Name.new(10,10)
p name.method_name()

class C
  def initialize(v)
    @value = v
  end
  def show()
    p @value
  end
end
c1 = C.new(10)
# p c1.value
# c1.value = 20
c1.show()


#상속
class Class1
  def method1()
    return 'm1'
  end
end
c1 = Class1.new()
p c1, c1.method1()

class Class2 < Class1
  def method2
    return 'm2'
  end
end
c2 = Class2.new()
p c2, c2.method1()    #m1
p c2, c2.method2()    #m2


#계산기 예제
class Cal
  attr_reader :v1, :v2
  attr_writer :v1
  def initialize(v1,v2)
    @v1 = v1
    @v2 = v2
  end
  def add()
    return @v1+@v2
  end
  def subtract()
    return @v1-@v2
  end
  def setV1(v)
    if v.is_a?(Integer)
      @v1 = v
    end
  end
  def getV1()
    return @v1
  end
end
class CalMultiply < Cal
  def multiply()
    return @v1*@v2
  end
end
class CalDivide < CalMultiply
  def divide()
    return @v1/@v2
  end
end
c1 = CalMultiply.new(10,10)
p c1.add()
p c1.multiply()
c2 = CalDivide.new(20, 10)
p c2, c2.add()
p c2, c2.multiply()
p c2, c2.divide()



#클래스맴버
require 'date'
d1 = Date.new(2000, 1, 1)
d2 = Date.new(2010, 1, 1)
p d1.year()
p d2.year()
p Date.today()

#클래스 메소드
class Cs
  def Cs.class_method()
    p "Class method"
  end
  def instance_method()
    p "Instance method"
  end
end
i = Cs.new()
Cs.class_method()
i.instance_method()
#Cs.instance_method() 오류발생 #클래스메소드는 클래스 소속으로만 사용
#i.class_method() 오류발생    #인스턴스메소드는 인스턴스 소속으로만 사용

#클래스 변수
class Cs
  @@count = 0         #@는 인스턴스변수 @@는 클래스변수
  def initialize()
    @@count = @@count + 1
  end
  def Cs.getCount()
    return @@count
  end
end
i1 = Cs.new()   #1
i2 = Cs.new()   #2
i3 = Cs.new()   #3
i4 = Cs.new()   #4
p Cs.getCount() #4


#계산기 예제2
class Cal
  attr_reader :v1, :v2
  attr_writer :v1
  @@_history = []
  def initialize(v1,v2)
    @v1 = v1
    @v2 = v2
  end
  def add()
    result = @v1+@v2
    @@_history.push("add : #{@v1}+#{@v2}=#{result}")
    return result
  end
  def subtract()
    result = @v1-@v2
    @@_history.push("subtract : #{@v1}-#{@v2}=#{result}")
    return result
  end
  def setV1(v)
    if v.is_a?(Integer)
      @v1 = v
    end
  end
  def getV1()
    return @v1
  end
  def Cal.history()
    for item in @@_history
      p item
    end
  end
end
class CalMultiply < Cal
  def multiply()
    result = @v1*@v2
    @@_history.push("multipy : #{@v1}*#{@v2}=#{result}")
    return result
  end
end
class CalDivide < CalMultiply
  def divide()
    result = @v1/@v2
    @@_history.push("divide : #{@v1}/#{@v2}=#{result}")
    return result
  end
end
c1 = CalMultiply.new(10,10)
p c1.add()
p c1.multiply()
c2 = CalDivide.new(20, 10)
p c2, c2.add()
p c2, c2.multiply()
p c2, c2.divide()
Cal.history()


#오버라이드
class C1
  def m()
    return 'parent'
  end
end
class C2 < C1
  def m()
    return super()+' child'
  end
end
o = C2.new()
p o.m()   #parent child

#계산기예제3 오버라이드 상속
class Cal
  attr_reader :v1, :v2
  attr_writer :v1
  @@_history = []
  def initialize(v1,v2)
    @v1 = v1
    @v2 = v2
  end
  def add()
    result = @v1+@v2
    @@_history.push("add : #{@v1}+#{@v2}=#{result}")
    return result
  end
  def subtract()
    result = @v1-@v2
    @@_history.push("subtract : #{@v1}-#{@v2}=#{result}")
    return result
  end
  def setV1(v)
    if v.is_a?(Integer)
      @v1 = v
    end
  end
  def getV1()
    return @v1
  end
  def Cal.history()
    for item in @@_history
      p item
    end
  end
  def info()
    return "Cal => v1 : #{@v1}, v2 : #{@v2}"
  end
end
class CalMultiply < Cal
  def multiply()
    result = @v1*@v2
    @@_history.push("multipy : #{@v1}*#{@v2}=#{result}")
    return result
  end
  def info()
    return "CalMultiply => #{super()}"
  end
end
class CalDivide < CalMultiply
  def divide()
    result = @v1/@v2
    @@_history.push("divide : #{@v1}/#{@v2}=#{result}")
    return result
  end
  def info()
    return "CalDivide => #{super()}"
  end
end
c0 = Cal.new(30, 60)
p c0.info()
c1 = CalMultiply.new(10, 10)
p c1.info()
c2 = CalDivide.new(20, 10)
p c2.info()

#객체와 모듈

#1.rb
require_relative 'lib'
obj = Lib::A.new()
p obj.a()

#lib.rb
module Lib
  class A
    def a()
      return 'a'
    end
  end
end


#Mixin
module M1
  def m1_m
    p "m1_m"
  end
end
module M2
  def m2_m
    p "m2_m"
  end
end
class C
  include M1, M2
end
c = C.new()
c.m1_m()
c.m2_m()


#믹스인 활용
module Multiply
  def multiply()
    return @v1*@v2
  end
end
module Divide
  def divide()
    return @v1/@v2
  end
end
class Cal
  include Multiply,Divide
  def initialize(v1,v2)
    @v1 = v1
    @v2 = v2
  end
  def add()
    return @v1+@v2
  end
  def subtract()
    return @v1-@v2
  end
end


c = Cal.new(100,10)
p c.add()
p c.multiply()
p c.divide()
