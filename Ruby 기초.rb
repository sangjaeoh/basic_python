
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
