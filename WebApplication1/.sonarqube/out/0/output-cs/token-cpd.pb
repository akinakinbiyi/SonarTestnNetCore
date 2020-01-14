¸
vC:\Users\eakinoluyemi.EZCORP\Source\Repos\akinakinbiyi\SonarTestnNetCore\CodeQuality.BusinessObjects\BusinessObject.cs
	namespace 	
CodeQuality
 
. 
BusinessObjects %
{ 
public 

class 
BusinessObject 
{ 
public 
void 
Login 
( 
) 
{ 	
throw		 
new		 #
NotImplementedException		 -
(		- .
)		. /
;		/ 0
}

 	
} 
} ©
pC:\Users\eakinoluyemi.EZCORP\Source\Repos\akinakinbiyi\SonarTestnNetCore\CodeQuality.BusinessObjects\Customer.cs
	namespace 	
CodeQuality
 
. 
BusinessObjects %
{ 
public 

class 
Customer 
: 
Person "
{ 
public 
Customer 
( 
string 
	firstName (
,( )
string* 0
lastName1 9
)9 :
:: ;
base; ?
(? @
	firstName@ I
,I J
lastNameK S
)S T
{ 	
} 	
} 
}		 °
qC:\Users\eakinoluyemi.EZCORP\Source\Repos\akinakinbiyi\SonarTestnNetCore\CodeQuality.BusinessObjects\Customer2.cs
	namespace 	
CodeQuality
 
. 
BusinessObjects %
{ 
internal 
class 
	Customer2 
: 
BusinessObject -
{ 
private 
string 
	firstName  
;  !
private 
string 
lastName 
;  
public 
	Customer2 
( 
string 
	firstName  )
,) *
string+ 1
lastName2 :
): ;
{		 	
this

 
.

 
	firstName

 
=

 
	firstName

 &
;

& '
this 
. 
lastName 
= 
lastName $
;$ %
} 	
} 
} Ü
oC:\Users\eakinoluyemi.EZCORP\Source\Repos\akinakinbiyi\SonarTestnNetCore\CodeQuality.BusinessObjects\Manager.cs
	namespace 	
CodeQuality
 
. 
BusinessObjects %
{ 
public 

class 
Manager 
: 
Person !
{ 
public 
Manager 
( 
string 
	firstName '
,' (
string) /
lastName0 8
)8 9
:9 :
base: >
(> ?
	firstName? H
,H I
lastNameJ R
)R S
{ 	
} 	
string		 
username		 
=		 
$str		 !
;		! "
string

 
password

 
=

 
$str

 '
;

' (
}

, -
} Œ#
uC:\Users\eakinoluyemi.EZCORP\Source\Repos\akinakinbiyi\SonarTestnNetCore\CodeQuality.BusinessObjects\ObjectFactory.cs
	namespace 	
CodeQuality
 
. 
BusinessObjects %
{ 
public 

static 
class 
ObjectFactory %
{ 
public 
static 
BusinessObject $
	GetObject% .
(. /
string/ 5

objectCode6 @
,@ A
stringB H
	firstNameI R
,R S
stringT Z
lastName[ c
)c d
{ 	

objectCode		 
=		 

objectCode		 #
.		# $
ToUpper		$ +
(		+ ,
)		, -
;		- .
if 
( 

objectCode 
== 
null "
)" #
{ 
throw 
new 
ArgumentException +
(+ ,
$str, B
)B C
;C D
} 
if 
( 

objectCode 
. 
EndsWith #
(# $
$str$ *
)* +
)+ ,
{ 
return 
new 
Customer #
(# $
	firstName$ -
,- .
lastName/ 7
)7 8
;8 9
} 
else 
if 
( 

objectCode 
.  
EndsWith  (
(( )
$str) .
). /
)/ 0
{ 
return 
new 
Manager "
(" #
	firstName# ,
,, -
lastName. 6
)6 7
;7 8
} 
if 
( 

objectCode 
. 
Contains #
(# $
$str$ ,
), -
)- .
{ 
return 
new 
	Customer2 $
($ %
	firstName% .
,. /
lastName0 8
)8 9
;9 :
} 
switch 
( 

objectCode 
. 
	Substring '
(' (
$num( )
,) *
$num+ ,
), -
)- .
{ 
case   
$str   
:   
if!! 
(!! 

objectCode!! "
.!!" #
Length!!# )
<!!* +
$num!!, .
)!!. /
{"" 
lastName##  
=##! "
$str### -
;##- .
}$$ 
else%% 
{&& 
lastName''  
=''! "
$str''# 2
;''2 3
}(( 
return** 
new** 

USCustomer** )
(**) *
	firstName*** 3
,**3 4
lastName**5 =
)**= >
;**> ?
case++ 
$str++ 
:++ 
if,, 
(,, 

objectCode,, "
.,," #
Length,,# )
<,,* +
$num,,, .
),,. /
{-- 
lastName..  
=..! "
$str..# -
;..- .
}// 
else00 
{11 
lastName22  
=22! "
$str22# /
;22/ 0
}33 
return55 
new55 

UKCustomer55 )
(55) *
lastName55* 2
,552 3
	firstName554 =
)55= >
;55> ?
}66 
if88 
(88 

objectCode88 
==88 
null88 "
)88" #
{99 
if:: 
(:: 
string:: 
.:: 
IsNullOrEmpty:: (
(::( )

objectCode::) 3
)::3 4
)::4 5
{;; 

objectCode<< 
=<<  
$str<<! (
;<<( )
}== 
else>> 
{?? 
try@@ 
{AA 
returnBB 
newBB "
PersonBB# )
(BB) *
	firstNameBB* 3
,BB3 4
lastNameBB5 =
)BB= >
;BB> ?
}CC 
catchDD 
(DD 
	ExceptionDD $
)DD$ %
{EE 
}FF 
}GG 
}HH 
throwJJ 
newJJ 
	ExceptionJJ 
(JJ  
$strJJ  >
)JJ> ?
;JJ? @
returnLL 
newLL 
BusinessObjectLL %
(LL% &
)LL& '
;LL' (
}MM 	
}NN 
}OO Á
nC:\Users\eakinoluyemi.EZCORP\Source\Repos\akinakinbiyi\SonarTestnNetCore\CodeQuality.BusinessObjects\Person.cs
	namespace 	
CodeQuality
 
. 
BusinessObjects %
{ 
public 

class 
Person 
: 
BusinessObject (
{ 
public 
Person 
( 
string 
	firstName &
,& '
string( .
lastName/ 7
)7 8
{ 	
this 
. 
	FirstName 
= 
	firstName &
;& '
this 
. 
LastName 
= 
lastName $
;$ %
}		 	
public 
string 
	FirstName 
{  !
get" %
;& '
set( +
;+ ,
}- .
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ±
rC:\Users\eakinoluyemi.EZCORP\Source\Repos\akinakinbiyi\SonarTestnNetCore\CodeQuality.BusinessObjects\UKCustomer.cs
	namespace 	
CodeQuality
 
. 
BusinessObjects %
{ 
public 

class 

UKCustomer 
: 
Customer &
{ 
public 

UKCustomer 
( 
string  
lastName! )
,) *
string+ 1
	firstName2 ;
); <
:< =
base= A
(A B
	firstNameB K
,K L
lastNameM U
)U V
{ 	
} 	
} 
}		 ±
rC:\Users\eakinoluyemi.EZCORP\Source\Repos\akinakinbiyi\SonarTestnNetCore\CodeQuality.BusinessObjects\USCustomer.cs
	namespace 	
CodeQuality
 
. 
BusinessObjects %
{ 
public 

class 

USCustomer 
: 
Customer &
{ 
public 

USCustomer 
( 
string  
	firstName! *
,* +
string, 2
lastName3 ;
); <
:< =
base= A
(A B
	firstNameB K
,K L
lastNameM U
)U V
{ 	
} 	
} 
}		 Ü
_C:\Users\eakinoluyemi.EZCORP\AppData\Local\Temp\.NETStandard,Version=v2.0.AssemblyAttributes.cs
[ 
assembly 	
:	 

global 
:: 
System 
. 
Runtime !
.! "

Versioning" ,
., -$
TargetFrameworkAttribute- E
(E F
$strF a
,a b 
FrameworkDisplayNamec w
=x y
$strz |
)| }
]} ~è
©C:\Users\eakinoluyemi.EZCORP\Source\Repos\akinakinbiyi\SonarTestnNetCore\CodeQuality.BusinessObjects\obj\Debug\netstandard2.0\CodeQuality.BusinessObjects.AssemblyInfo.cs
[ 
assembly 	
:	 

System 
. 

Reflection 
. $
AssemblyCompanyAttribute 5
(5 6
$str6 S
)S T
]T U
[ 
assembly 	
:	 

System 
. 

Reflection 
. *
AssemblyConfigurationAttribute ;
(; <
$str< C
)C D
]D E
[ 
assembly 	
:	 

System 
. 

Reflection 
. (
AssemblyFileVersionAttribute 9
(9 :
$str: C
)C D
]D E
[ 
assembly 	
:	 

System 
. 

Reflection 
. 1
%AssemblyInformationalVersionAttribute B
(B C
$strC J
)J K
]K L
[ 
assembly 	
:	 

System 
. 

Reflection 
. $
AssemblyProductAttribute 5
(5 6
$str6 S
)S T
]T U
[ 
assembly 	
:	 

System 
. 

Reflection 
. "
AssemblyTitleAttribute 3
(3 4
$str4 Q
)Q R
]R S
[ 
assembly 	
:	 

System 
. 

Reflection 
. $
AssemblyVersionAttribute 5
(5 6
$str6 ?
)? @
]@ A