from tkinter import*
import math
import parser
import tkinter.messagebox
root=Tk()
root.title("SCIENTIFIC CALCULATOR")
root.configure(background="gray11")
root.resizable(width=False,height=False)
root.geometry("480x568")
calc=Frame(root)
calc.grid()
class Calc():
    def __init__(self):
        self.total=0
        self.current=""
        self.input_value=True
        self.check_sum=False
        self.op=""
        self.result=False
    def numberEnter(self,num):
        self.result=False
        firstnum=txtDisplay.get()
        secondnum=str(num)
        if self.input_value:
            self.current=secondnum
            self.input_value=False
        else:
            if secondnum=='.':
                if secondnum in firstnum:
                    return
            self.current=firstnum+secondnum
        self.display(self.current)
    def sum_of_total(self):
        self.result=True
        self.current=float(self.current)
        if self.check_sum==True:
            self.valid_function()
        else:
            self.total=float(txtDisplay.get())
            
        
    
    def display(self,value):
        txtDisplay.delete(0,END)
        txtDisplay.insert(0,value)
    def valid_function(self):
        if self.op=="add":
            self.total+=self.current
        if self.op=="sub":
            self.total-=self.current
        if self.op=="multi":
            self.total*=self.current
        if self.op=="divide":
            self.total/=self.current
        if self.op=="mod":
            self.total%=self.current
        if self.op=="pow":
            self.total**=self.current
        self.input_value=True
        self.check_sum=False
        self.display(self.total)
    def operation(self,op):
        self.current=float(self.current)
        if self.check_sum:
            self.valid_function()
        elif not self.result:
            self.total=self.current
            self.input_value=True
        self.check_sum=True
        self.op=op
        self.result=False
    def Clear_Entry(self):
        self.result=False
        self.current="0"
        self.display(0)
        self.input_value=True
        
    def all_Clear_Entry(self):
        self.Clear_Entry()
        self.total=0
    def mathsPM(self):
        self.result=False
        self.current=-(float(txtDisplay.get()))
        self.display(self.current)
    def squared(self):
        self.result=False
        self.current=math.sqrt(float(txtDisplay.get()))
        self.display(self.current)
    def pi(self):
        self.result=False
        self.current=math.pi
        self.display(self.current)
    def asinh(self):
        self.result=False
        self.current=math.asinh(math.radians(float(txtDisplay.get())))
        self.display(self.current)
    def e(self):
        self.result=False
        self.current=math.e
        self.display(self.current)
    def sin(self):
        self.result=False
        self.current=math.sin(math.radians(float(txtDisplay.get())))
        self.display(self.current)
    def cos(self):
        self.result=False
        self.current=math.cos(math.radians(float(txtDisplay.get())))
        self.display(self.current)
    def tan(self):
        self.result=False
        self.current=math.tan(math.radians(float(txtDisplay.get())))
        self.display(self.current)
    def ceil(self):
        self.result=False
        self.current=math.ceil(float(txtDisplay.get()))
        self.display(self.current)
    def cosh(self):
        self.result=False
        self.current=math.cosh(math.radians(float(txtDisplay.get())))
        self.display(self.current)
    def tanh(self):
        self.result=False
        self.current=math.tanh(math.radians(float(txtDisplay.get())))
        self.display(self.current)
    def log(self):
        self.result=False
        self.current=math.log(float(txtDisplay.get()))
        self.display(self.current)
    def exp(self):
        self.result=False
        self.current=math.exp(float(txtDisplay.get()))
        self.display(self.current)
    def mod(self):
        self.result=False
        self.current=math.mod(float(txtDisplay.get()))
        self.display(self.current)   
    def deg(self):
        self.result=False
        self.current=math.degrees(float(txtDisplay.get()))
        self.display(self.current)
    def acos(self):
        self.result=False
        self.current=math.acos(math.radians(float(txtDisplay.get())))
        self.display(self.current)
    def asin(self):
        self.result=False
        self.current=math.asin(math.radians(float(txtDisplay.get())))
        self.display(self.current)
    def log10(self):
        self.result=False
        self.current=math.log10(float(txtDisplay.get()))
        self.display(self.current)
    def factorial(self):
        self.result=False
        self.current=math.factorial(float(txtDisplay.get()))
        self.display(self.current)
    def atan(self):
        self.result=False
        self.current=math.atan(float(txtDisplay.get()))
        self.display(self.current) 
    def gamma(self):
        self.result=False
        self.current=math.gamma(float(txtDisplay.get()))
        self.display(self.current)   
        
        
        
    
added_value=Calc()
         
txtDisplay=Entry(calc,font=('arial',20,'bold'),bg="gray11",foreground='white',bd=30,width=28,justify=RIGHT)
txtDisplay.grid(row=0,column=0,columnspan=4,pady=1)
txtDisplay.insert(0,"0")
numberpad="789456123"
i=0
btn=[]
for j in range(2,5):
    for k in range(3):
        btn.append(Button(calc,width=6,height=2,font=('arial',20,'bold'),bd=4,text=numberpad[i]))
        btn[i].grid(row=j,column=k,pady=1)
        btn[i]["command"]=lambda x=numberpad[i]:added_value.numberEnter(x)
        i+=1
btnClear=Button(calc,text=chr(67),width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="coral1",
                command=added_value.Clear_Entry).grid(row=1,column=0,pady=1)
btnAllClear=Button(calc,text=chr(67)+chr(69),width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="coral1",
                command=added_value.all_Clear_Entry).grid(row=1,column=1,pady=1)
btnSq=Button(calc,text="√",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',
                command=added_value.squared).grid(row=1,column=2,pady=1)
btnAdd=Button(calc,text="+",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',
                command=lambda:added_value.operation("add")).grid(row=1,column=3,pady=1)
btnSub=Button(calc,text="-",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',
                command=lambda:added_value.operation("sub")).grid(row=2,column=3,pady=1)
               
btnMult=Button(calc,text="*",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',
                command=lambda:added_value.operation("multi")).grid(row=3,column=3,pady=1)
btnDiv=Button(calc,text=chr(247),width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',
                command=lambda:added_value.operation("divide")).grid(row=4,column=3,pady=1)
btnZero=Button(calc,text="0",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',
                command=lambda:added_value.numberEnter(0)).grid(row=5,column=0,pady=1)


btnDot=Button(calc,text=".",width=6,height=2,font=('arial',20,'bold'),bd=4,bg="gray11",foreground='white',
                command=lambda:added_value.numberEnter(".")).grid(row=5,column=1,pady=1)
btnPM=Button(calc,text=chr(177),width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',
                command=added_value.mathsPM).grid(row=5,column=2,pady=1)
btnEquals=Button(calc,text="=",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',
                command=added_value.sum_of_total).grid(row=5,column=3,pady=1)
#scientic calculator
btnPi=Button(calc,text="π",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',command=added_value.pi).grid(row=1,column=4,pady=1)
btncos=Button(calc,text="cos",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',command=added_value.cos).grid(row=1,column=5,pady=1)
btntan=Button(calc,text="tan",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',command=added_value.tan).grid(row=1,column=6,pady=1)
btnsin=Button(calc,text="sin",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',command=added_value.sin).grid(row=1,column=7,pady=1)
btnasinh=Button(calc,text="asinh",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',command=added_value.asinh).grid(row=2,column=4,pady=1)
btnCosh=Button(calc,text="cosh",width=6,height=2,font=('arial',20,'bold'),bd=4,
                command=added_value.cosh).grid(row=2,column=5,pady=1)
btntanh=Button(calc,text="tanh",width=6,height=2,font=('arial',20,'bold'),bd=4,
                command=added_value.tanh).grid(row=2,column=6,pady=1)
btnceil=Button(calc,text="ceil",width=6,height=2,font=('arial',20,'bold'),bd=4,
                command=added_value.ceil).grid(row=2,column=7,pady=1)
#
btnlog=Button(calc,text="log",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',command=added_value.log).grid(row=3,column=4,pady=1)
btnExp=Button(calc,text="Exp",width=6,height=2,font=('arial',20,'bold'),bd=4,
                command=added_value.exp).grid(row=3,column=5,pady=1)
btnMod=Button(calc,text="Mod",width=6,height=2,font=('arial',20,'bold'),bd=4,
                command=lambda:added_value.operation("mod")).grid(row=3,column=6,pady=1)
btnE=Button(calc,text="e",width=6,height=2,font=('arial',20,'bold'),bd=4,
                command=added_value.e).grid(row=3,column=7,pady=1)



#
btnpow=Button(calc,text="pow",width=6,height=2,font=('arial',20,'bold'),bd=4,foreground='white',
                bg="gray11",
                command=lambda:added_value.operation("pow")).grid(row=4,column=4,pady=1)
btndeg=Button(calc,text="deg",width=6,height=2,font=('arial',20,'bold'),bd=4,
                command=added_value.deg).grid(row=4,column=5,pady=1)
btnacos=Button(calc,text="acos",width=6,height=2,font=('arial',20,'bold'),bd=4,
                command=added_value.acos).grid(row=4,column=6,pady=1)

btnasin=Button(calc,text="asin",width=6,height=2,font=('arial',20,'bold'),bd=4,
                command=added_value.asin).grid(row=4,column=7,pady=1)
#
btnlog10=Button(calc,text="log10",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',command=added_value.log10).grid(row=5,column=4,pady=1)

btngamma=Button(calc,text="gamma",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',command=added_value.gamma).grid(row=5,column=5,pady=1)

btnfactorial=Button(calc,text="fact",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',command=added_value.factorial).grid(row=5,column=6,pady=1)

btnatan=Button(calc,text="atan",width=6,height=2,font=('arial',20,'bold'),bd=4,
                bg="gray11",foreground='white',command=added_value.atan).grid(row=5,column=7,pady=1)

lb1Display=Label(calc,text="SCIENTIFIC CALCULATOR",bg="white",font=('algerian',20),justify=CENTER)
lb1Display.grid(row=0,column=4,columnspan=4)

#menu and function
def iExit():
    iExit=tkinter.messagebox.askyesno("SCIENTIFIC CALCULATOR","confirm if u want to exit")
    if iExit>0:
        root.destroy()
        return
def Scientific():
    root.resizable(width=False,height=False)
    root.geometry("944x568")
def Standard():
    root.resizable(width=False,height=False)
    root.geometry("480x568")
def About():
    About=tkinter.messagebox.showinfo("SCIENTIFIC CALCULATOR","this calculator contain both standard and scientific ")
menubar=Menu(calc)
filemenu=Menu(menubar,tearoff=0)
menubar.add_cascade(label="File",menu=filemenu)
filemenu.add_command(label="Standard",command=Standard)
filemenu.add_command(label="Scientific",command=Scientific)
filemenu.add_separator()
filemenu.add_command(label="Exit",command=iExit)
editmenu=Menu(menubar,tearoff=0)
menubar.add_cascade(label="Edit",menu=editmenu)
editmenu.add_command(label="Cut")
editmenu.add_command(label="Copy")
editmenu.add_separator()
editmenu.add_command(label="Paste")
aboutmenu=Menu(menubar,tearoff=0)
menubar.add_cascade(label="About",menu=aboutmenu)
aboutmenu.add_command(label="View About",command=About)
root.config(menu=menubar)
root.mainloop()
# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

