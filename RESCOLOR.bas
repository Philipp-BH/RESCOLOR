ClrHome
ClrDraw

DelVar Y₁
DelVar Y₂
DelVar Y₃
DelVar Y₄
DelVar Y₅
DelVar Y₆
DelVar Y₇
DelVar Y₈
DelVar Y₉
DelVar Y₀
CoordOff
GridOff
AxesOff
BackgroundOff

ClrAllLists

{12,16,11,15,19,14,10,13,23,20,15,21}→L₁

{0,1,2,3,4,5,6,7,8,9}→L₃
{1,10,100,1000,10000,100000,1000000,10000000,100000000,1000000000}→L₄
{0,1,2,0,0,0.5,0.25,0.1,0.05,0,5,10}→L₅
{0,100,50,15,25,0,10,5,0,0,0,0}→L₆

"BLACK BROWN RED   ORANGEYELLOWGREEN BLUE  VIOLETGREY  WHITE GOLD  SILVER"→Str1

Lbl A

ClrList L₂

Menu("RESISTOR COLOR","4-BAND",1,"5-BAND",2,"6-BAND",3,"--QUIT--",4)

Lbl 4

ClrDraw

DelVar Y₁
DelVar Y₂
DelVar Y₃
DelVar Y₄
DelVar Y₅
DelVar Y₆
DelVar Y₇
DelVar Y₈
DelVar Y₉
DelVar Y₀

Repeat 2
ClrHome


Repeat 2

ClrDraw
GridLine MEDGRAY
AxesOn BLACK
BackgroundOff
DetectAsymOn
ZStandard
ClrAllLists
CoordOn
RectGC
ExprOn
PlotsOff 
BorderColor 1
Thick
Sequential
STATWIZARD ON
DiagnosticOn
ClrTable
BorderColor 1

End

ClrHome

End

ClrHome
Stop


Lbl 1
{1,1,1,1}→L₂
4→M
Goto B

Lbl 2
{1,1,1,1,1}→L₂
5→M
Goto B

Lbl 3
{1,1,1,1,1,1}→L₂
6→M
Goto B


Lbl B

ClrHome
ClrDraw

DelVar Y₁
DelVar Y₂
DelVar Y₃
DelVar Y₄
DelVar Y₅
DelVar Y₆
DelVar Y₇
DelVar Y₈
DelVar Y₉
DelVar Y₀

TextColor(BLACK)
Text(1,2,M,"-BAND RESISTOR COLOR CALCULATOR")

­5→X

For(A,1,M)
Line(X-0.3,2,X-0.3,­2,BLACK)
Line(X+0.3,2,X+0.3,­2,BLACK)
X+2→X
End

­5→X

For(A,1,M)
Line(X,2,X,­2,L₁(L₂(A)))
Line(X,2,X,­2,L₁(L₂(A)))
X+2→X
End

1→B
­5→X
Pt-On(X,3,BLACK)

Text(145,1,sub(Str1,1,6))

For(A,1,M)
Text(100,38+(A*26),"B")
End

Repeat K=105

getKey→K

If K=26 and B<M
Then

Pt-Off(X,3)
X+2→X:B+1→B
Pt-On(X,3,BLACK)

TextColor(BLACK)
Text(145,1,"                              ")

TextColor(L₁(L₂(B)))
Text(145,1,sub(Str1,(L₂(B)*6)-5,6))

End


If K=24 and B>1
Then

Pt-Off(X,3)
X-2→X:B-1→B
Pt-On(X,3,BLACK)

TextColor(BLACK)
Text(145,1,"                              ")

TextColor(L₁(L₂(B)))
Text(145,1,sub(Str1,(L₂(B)*6)-5,6))

End


If K=25 and L₂(B)<12
Then

L₂(B)+1→L₂(B)
Line(X,2,X,­2,L₁(L₂(B)))

TextColor(BLACK)
Text(145,1,"                              ")
Text(100,38+(B*26),"      ")

TextColor(L₁(L₂(B)))
Text(145,1,sub(Str1,(L₂(B)*6)-5,6))
Text(100,38+(B*26),sub(Str1,(L₂(B)*6)-5,1))

End


If K=34 and L₂(B)>1
Then

L₂(B)-1→L₂(B)
Line(X,2,X,­2,L₁(L₂(B)))

TextColor(BLACK)
Text(145,1,"                              ")
Text(100,38+(B*26),"      ")

TextColor(L₁(L₂(B)))
Text(145,1,sub(Str1,(L₂(B)*6)-5,6))
Text(100,38+(B*26),sub(Str1,(L₂(B)*6)-5,1))

End


End

ClrDraw

DelVar Y₁
DelVar Y₂
DelVar Y₃
DelVar Y₄
DelVar Y₅
DelVar Y₆
DelVar Y₇
DelVar Y₈
DelVar Y₉
DelVar Y₀
ClrHome

If M=4
Then
((L₃(L₂(1))*10)+(L₃(L₂(2))))*(L₄(L₂(3)))→V
L₅(L₂(4))→T
End

If M=5
Then
((L₃(L₂(1))*100)+(L₃(L₂(2))*10)+(L₃(L₂(3))))*(L₄(L₂(4)))→V
L₅(L₂(5))→T
End

If M=6
Then
((L₃(L₂(1))*100)+(L₃(L₂(2))*10)+(L₃(L₂(3))))*(L₄(L₂(4)))→V
L₅(L₂(5))→T
L₆(L₂(6))→P
End

If T=0
Then
Output(1,1,"ERR:")
Output(2,1,"INVALID TOL COLOR")
Wait 1
Repeat K=105
getKey→K
End
ClrHome
Goto A
End

If P=0 and M=6
Then
Output(1,1,"ERR:")
Output(2,1,"INVALID PPM COLOR")
Wait 1
Repeat K=105
getKey→K
End
ClrHome
Goto A
End


If V≥1000 and V<1000000
Then
V/1000→V
toString(V)→Str2
Output(3,7+length(Str2),"K")
End

If V≥1000000 and V<1000000000
Then
V/1000000→V
toString(V)→Str2
Output(3,7+length(Str2),"M")
End

If V≥1000000000 and V<1000000000000
Then
V/1000000000→V
toString(V)→Str2
Output(3,7+length(Str2),"G")
End


Output(1,1,"4 BAND RESISTOR:")
Output(3,1,"OHMS: "):Output(3,7,V)
Output(4,1,"% TOL: "):Output(4,8,T)

If M=6
Then
Output(5,1,"PPM: "):Output(5,6,P)
End


Wait 1
Repeat K=105
getKey→K
End

ClrHome
Goto A
