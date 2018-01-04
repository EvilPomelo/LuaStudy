--1、基本输出
print("Hello World")

--2、基本函数
function  fact(n)
    if  n==0 then
        return 1
    else
        return n*fact(n-1)
    end
end
a=fact
print(a(5))

--3、类型
--8种类型
print(type("Hello World")) -->string
print(type(10.21))  -->number，number表示实数，可用科学计数法如0.3e13,4.5e-3
print(type(true))   -->boolean，LUA将false和nil视为假，其余全为真(包括0和空字符串)
print(type(nil))    -->nil,nil是用来区别其它有效值，一个全局变量赋值前的值就是nil，将全局变量赋值为nil就是删除它
print(type(a))      -->fuction,可以通过匿名函数的方式传递


print(type({}))     -->table,table是LUA中唯一的数据结构,当没有对table的引用时，LUA的垃圾回收会自动删除该table并复用它的内存 
a={}                -->table的key可以使任意类型，并且table的容量可以自动增长
k="X"
a[k]=20
print(a.X)          -->a["X"]类型的语法糖写法                 
                    -->Thread
                    -->UserData

--4、表达式
--算术操作符 +（加法）、-（减法）、*（乘法）、／（除法）、^（指数）、%（取模）、-（负号）


--关系操作符 <、>、<=、>=、==、~=(table,userdata,函数等引用比较是否为同一个对象，值类型比较是否相等)

--逻辑操作符 and,or,not
--and如果第一个操作数为假则返回第一个操作数，否则返回第二个操作数
--or如果第一个操作数为真则返回第一个操作数，否则返回第二个操作数
--not非

--字符串连接 ..
print("Hello" .. "World")    --> Hello World

--[[
|优先级|
|:--|
|`^`|
|`not`、`#`、`-`(一元)|
|`*`、`／`、`%`|
|`+`、`-`|
|`..`|
| `<`、`>`、`<=`、`>=`、 `~=`、 `==`|
|`and`|
|`or`|
]]--

--table构造式
--基本：
table={}
--带初始化的值
days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"} --会将days[1]初始化为字符串“Sunday”、days[2]初始化为“Monday”，以此类推。

a = {x=10, y=20} --等价于 a = {}; a.x = 10; a.y = 20;a["x"]=10,a["y"]=20

--

--5、语句
--赋值
val1,val2=1,"2" --允许多重赋值

--局部变量(通过local来声明局部变量)
local  val3 = 1

--块(通常情况下)
do
local val1 = 1
local val2 = 1
end

--控制结构
--[[
if val1<0 then val1=0 end --if
]]--

--while循环
--[[
local i = 1
while array[i] do
    i=i+1
end
]]--

--repeat循环
--[[
repeat
    line=io.read()
until line~=""
]]--

--数字型for,从exp1变化到exp2,每次变化以exp3为间隔(不指定则用1为间隔)
--[[
for var=exp1,exp2,exp3 do
    <执行体>
end
]]--

--打印table t中所有的key
--[[
for i,v in ipairs(a) do
    print(v)
end


for k in pairs(t) do print(k) end
    
end
]]--