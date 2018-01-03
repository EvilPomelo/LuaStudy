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
print(type(a))      -->faction
print(type({}))     -->table,table是LUA中唯一的数据结构,当没有对table的引用时，LUA的垃圾回收会自动删除该table并复用它的内存 
a={}                -->table的key可以使任意类型，并且table的容量可以自动增长
k="X"
a[k]=20
print(a.X)          -->a["X"]类型的语法糖写法                 
                    -->Thread
                    -->UserData


                
a[10000]=1
print(table.maxn(a))


