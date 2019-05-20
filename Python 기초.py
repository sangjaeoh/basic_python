#Python .py

import sys
import io
sys.stdout = io.TextIOWrapper(sys.stdout.detach(), encoding = 'utf-8')
sys.stderr = io.TextIOWrapper(sys.stderr.detach(), encoding = 'utf-8')

#수와 계산
print(10 + 5)   #15
print(10 - 5)	#5
print(10 * 5)	#50
print(10 / 5)	#2.0


import math
print(math.ceil(2.2))	#3
print(math.floor(2.7))	#2
print(math.pow(2,10))	#1024.0
print(math.pi)			#3.141592653589793


#문자와 데이터 타입

#문자의 표현
print('Hello')				#Hello
print("Hello")				#Hello
print("Hello 'world'")		#Hello 'world'
print('Hello "world"')		#Hello "world"

#문자열의 제어
print('Hello '+'world')		#Hello world
print('Hello '*3)			#Hello Hello Hello
print('Hello'[0])			#H
print('Hello'[1])			#e
print('Hello'[2])			#l

print('hello world'.capitalize())						#Hello world
print('hello world'.upper())							#HELLO WORLD
print('hello world'.__len__())							#11
print(len('hello world'))								#11
print('Hello world'.replace('world', 'programming'))	#Hello programming

#특수한 문자들
print("egoing's \"tutorial\"")		#egoing's "tutorial"
print("\\")							#\
print("Hello\nworld")				#Hello
									#world
print("Hello\t\tworld")				#Hello       world
print("\a")							#기본경고음 출력
print('Hello\nworld')				#Hello
									#world

#문자와 숫자를 통해서 알아보는 데이터 타입
print(10+5)			#15
print("10"+"5")		#105

#변수의 기본 문법
x=10
y=5
print(x+y)						#15

title = "python & ruby"
print("Title is "+title)		#Title is python & ruby


#문자열에서 변수의 사용
name = "이상효"
print("안녕하세요. "+name+"님")			  #안녕하세요. 이상효님
print(name+"님을 위한 강의를 준비했습니다.")	#이상효님을 위한 강의를 준비했습니다.


#수 계산에서 변수의 사용
donation = 200
student = 10
sponsor = 100
print((donation*student)/sponsor)	#20

#비교와 블리언
a=1
b=1
print(a==b)		#True
print(1==2)		#False
print(1>2)		#False
print(1<2)		#True
print(True)		#True
print(False)	#False


# 조건문
if True:
    print("code1")			#code1
    print("code2")			#code2
print("code3")				#code3

input = 11
real = 11
if real == input:
    print("Hello!")					#Hello!
else:
    print("Who are you?")

input = 33
real_egoing = 11
real_k8805 = "ab"
if real_egoing == input:
  print("Hello!, egoing")
elif real_k8805 == input:
  print("Hello!, k8805")
else:
  print("Who are you?")

# 입력
in_str = input("입력해주세요.\n")
print(in_str.upper()+" World!")

# 논리연산자 : 문자 그대로 사용
if real_egoing == in_str or real_k8805 == in_str:
if real_egoing == in_str and real_k8805 == in_str:

# 타입확인
type()

# 배열
al = ['A', 'B', 'C', 'D']
print(len(al)) # 4
al.append('E')
print(al) #['A', 'B', 'C', 'D', 'E']
del(al[0])
print(al) #['B', 'C', 'D', 'E']


#반복문 break사용가능
while False:
    print('Hello world')
print('After while')

i = 0
while i < 10:
    print('print("Hello world '+str(i*9)+'")')
    i = i + 1

#리스트 반복문
members = ['egoing', 'leezche', 'graphittie']
i = 0
while i < len(members):
    print(members[i])
    i = i + 1

#반복문 for
members = ['egoing', 'leezche', 'graphittie']
for member in members:
    print(member)

for item in range(5, 11):
    print(item)			#5678910


#함수 define:정의
def a3():
    print('aaa')		#aaa
a3()

def a3():
    return 'aaa'		#aaa
print(a3())

def a(num):
    return 'a'*num		#aaa
print(a(3))

def make_string(str, num):
    return str*num				#aaa
print(make_string('b', 3))

#모듈
import file1, file2
import file as A
from file import 함수A
print(file1.def())
print(함수A())

#클래스 생성
class Name(object):
	def __init__(self,v1,v2): #생성자 함수명 고정
		self.v1 = v1		  #첫번째 매개변수는 인스턴스변수가 된다 이름은 상관X
		self.v2 = v2

	def method_name(self):
		return self.v1+self.v2

name =Name(v1,v2)  #인스턴스생성
name.method_name()


class C(object):
    def __init__(self, v):
        self.value = v
    def show(self):
        print(self.value)

c1 = C(10)
print(c1.value)
c1.value = 20
print(c1.value)
c1.show()
#10 , 20 , 20


#상속
class Class1(object):
    def method1(self): return 'm1'
c1 = Class1()
print(c1, c1.method1())

class Class3(Class1):               #Class1을 상속받음
    def method2(self): return 'm2'
c3 = Class3()
print(c3, c3.method1())             #m1
print(c3, c3.method2())             #m2

class Class2(object):
    def method1(self): return 'm1'
    def method2(self): return 'm2'
c2 = Class2()
print(c2, c2.method1())
print(c2, c2.method2())


#계산기 예제
class Cal(object):
    def __init__(self, v1, v2):
        if isinstance(v1, int):
            self.v1 = v1
        if isinstance(v2, int):
            self.v2 = v2
    def add(self):
        return self.v1+self.v2
    def subtract(self):
        return self.v1-self.v2
    def setV1(self, v):
        if isinstance(v, int):
            self.v1 = v
    def getV1(self):
        return self.v1
class CalMultiply(Cal):
    def multiply(self):
        return self.v1*self.v2
class CalDivide(CalMultiply):
    def divide(self):
        return self.v1/self.v2
c1 = CalMultiply(10,10)
print(c1.add())
print(c1.multiply())
c2 = CalDivide(20,10)
print(c2, c2.add())
print(c2, c2.multiply())
print(c2, c2.divide())


#클래스 메소드
class Cs:
    @staticmethod               #스테틱메소드 규칙
    def static_method():
        print("Static method")
    @classmethod                #클레스메소드 규칙
    def class_method(cls):
        print("Class method")
    def instance_method(self):
        print("Instance method")
i = Cs()
Cs.static_method()
Cs.class_method()
i.instance_method()

#클래스변수
class Cs:
    count = 0
    def __init__(self):
        Cs.count = Cs.count + 1
    @classmethod
    def getCount(cls):
        return Cs.count
i1 = Cs()               #1
i2 = Cs()               #2
i3 = Cs()               #3
i4 = Cs()               #4
print(Cs.getCount())    #4

#계산기예제2
class Cal(object):
    _history = []
    def __init__(self, v1, v2):
        if isinstance(v1, int):
            self.v1 = v1
        if isinstance(v2, int):
            self.v2 = v2
    def add(self):
        result = self.v1+self.v2
        Cal._history.append("add : %d+%d=%d" % (self.v1, self.v2, result))
        return result
    def subtract(self):
        result = self.v1-self.v2
        Cal._history.append("subtract : %d-%d=%d" % (self.v1, self.v2, result))
        return result
    def setV1(self, v):
        if isinstance(v, int):
            self.v1 = v
    def getV1(self):
        return self.v1
    @classmethod
    def history(cls):
        for item in Cal._history:
            print(item)
class CalMultiply(Cal):
    def multiply(self):
        result = self.v1*self.v2
        Cal._history.append("multiply : %d*%d=%d" % (self.v1, self.v2, result))
        return result
class CalDivide(CalMultiply):
    def divide(self):
        result = self.v1/self.v2
        Cal._history.append("divide : %d/%d=%d" % (self.v1, self.v2, result))
        return result
c1 = CalMultiply(10,10)
print(c1.add())
print(c1.multiply())
c2 = CalDivide(20,10)
print(c2, c2.add())
print(c2, c2.multiply())
print(c2, c2.divide())
Cal.history()

#오버라이드
class C1:
    def m(self):
        return 'parent'
class C2(C1):
    def m(self):
        return super().m() + ' child'
    pass
o = C2()
print(o.m())  #parent child


#계산기예제3 오버라이드 상속
class Cal(object):
    _history = []
    def __init__(self, v1, v2):
        if isinstance(v1, int):
            self.v1 = v1
        if isinstance(v2, int):
            self.v2 = v2
    def add(self):
        result = self.v1+self.v2
        Cal._history.append("add : %d+%d=%d" % (self.v1, self.v2, result))
        return result
    def subtract(self):
        result = self.v1-self.v2
        Cal._history.append("subtract : %d-%d=%d" % (self.v1, self.v2, result))
        return result
    def setV1(self, v):
        if isinstance(v, int):
            self.v1 = v
    def getV1(self):
        return self.v1
    @classmethod
    def history(cls):
        for item in Cal._history:
            print(item)
    def info(self):
        return "Cal => v1 : %d, v2 : %d" % (self.v1, self.v2)
class CalMultiply(Cal):
    def multiply(self):
        result = self.v1*self.v2
        Cal._history.append("multiply : %d*%d=%d" % (self.v1, self.v2, result))
        return result
    def info(self):
        return "CalMultiply => %s" % super().info()
class CalDivide(CalMultiply):
    def divide(self):
        result = self.v1/self.v2
        Cal._history.append("divide : %d/%d=%d" % (self.v1, self.v2, result))
        return result
    def info(self):
        return "CalDivide => %s" % super().info()

c0 = Cal(30, 60)
print(c0.info())
c1 = CalMultiply(10,10)
print(c1.info())
c2 = CalDivide(20,10)
print(c2.info())
#Cal => v1 : 30, v2 : 60
#CalMultiply => Cal => v1 : 10, v2 : 10
#CalDivide => CalMultiply => Cal => v1 : 20, v2 : 10


#객체와 모듈
#lib.py
class A:
    def a(self):
        return 'a'
#A.py
import lib
obj = lib.A()
print(obj.a())



#다중상속
class C1():
    def c1_m(self):
        print("c1_m")
    def m(self):
        print("C1 m")

class C2():
    def c2_m(self):
        print("c2_m")
    def m(self):
        print("C2 m")

class C3(C2, C1):
    def m(self):
        print("C3 m")

c = C3()
c.c1_m()
c.c2_m()
c.m()               #오버라이드,c2,c1 순서 영향받음
print(C3.__mro__)   ##우선순위 보여주는 메소드


#계산기예제4 다중상속
class CalMultiply():
    def multiply(self):
        return self.v1*self.v2
class CalDivide():
    def divide(self):
        return self.v1/self.v2
class Cal(CalMultiply, CalDivide):
    def __init__(self, v1, v2):
        if isinstance(v1, int):
            self.v1 = v1
        if isinstance(v2, int):
            self.v2 = v2
    def add(self):
        return self.v1+self.v2
    def subtract(self):
        return self.v1-self.v2
    def setV1(self, v):
        if isinstance(v, int):
            self.v1 = v
    def getV1(self):
        return self.v1
c = Cal(100, 10)
print(c.add())
print(c.multiply())
print(c.divide())
