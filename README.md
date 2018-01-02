# Happy Code New Year

Lista do ano atual em varias linguagens de programação diferentes.

O final do ano de 2017 chegou, então preparei esta publicação para todos os programadores, desenvolvedores e outros geeks. Você sabe quando você cria aplicativos (especialmente aplicativos da web) que muitas vezes deixa um aviso de direitos autorais em cada página dizendo "Copyright 2017, Todos os Direitos Reservados" ou o que for? Certo, mas o que os desenvolvedores tendem a esquecer é que o tempo passa e que eles têm que voltar e mudar 2017 a 2018 em janeiro - então, muitas vezes, navegamos em sites, especialmente em janeiro e fevereiro, que têm direitos autorais do ano passado.

O melhor truque é não usar o hardcode e ficar inserindo o ano dentro de seus modelos e skins, mas sim escrever o ano atual de forma dinâmica usando as funções da data, então abaixo está uma lista de impressão do ano atual em 10 linguagens de programação diferentes.

- [Python](#Python)
- [PHP](#PHP)
- [C/C++](#C/C++)
- JavaScript
- Perl
- Ruby
- Java
- Unix Shell
- Go (golang)
- x86 Assembly
- Lua
- Clojure
- Objective-C
- C# (C-Sharp)
- Tcl
- Adobe Flex
- Delphi
- Haskell

# Python

```
from datetime import date
print date.today().year
```
# PHP

Definitely one of the easiest ways.

```
echo date("Y");

```

# C and C++

```
#include <stdio.h>
#include <time.h>

int main() {
        time_t now = time(NULL);
        struct tm* local = localtime(&now);
        printf("%d", local->tm_year + 1900);
        return 0;
}

```

# JavaScript

```

document.write(new Date().getFullYear());

```

# Perl

```

my $year = (localtime)[5];
print $year + 1900;

```

# Ruby

```
puts Time.now.year

```

# Java

```

import java.util.*;
import java.text.*;

public class Apollo {
	public static void main(String[] args) {
		Date date = new Date();
		SimpleDateFormat simpleDateformat=new SimpleDateFormat("yyyy");
		System.out.println(simpleDateformat.format(date));
	}
}

```

# Unix Shell

Seems to be the shortest one of all.

```

date +%Y

```

# Go (golang)

Interesting fact that when I ran this code on the Go website I ended up with 2009 — guess their servers are running a little slow?

```
package main

import ("fmt"
	"time")

func main() {
	var t = time.LocalTime()
	fmt.Println(t.Year)
}

```

# x86 Assembly

Here’s a special one, donated by my brother @SoulSeekah.

```

jmp start

year db "0000$"

start:
	mov ah, 04h
	int 1Ah

	mov bh, ch
	shr bh,4
	add bh,30h
	mov [year], bh
	mov bh,ch
	and bh,0fh
	add bh,30h
	mov [year+1],bh

	mov bh, cl
	shr bh,4
	add bh,30h
	mov [year+2], bh
	mov bh,cl
	and bh,0fh
	add bh,30h
	mov [year+3],bh

	mov ah,09h
	mov dx, offset year
	int 21h

	mov ah,4Ch
	mov al,00
	int 21h
  
  ```
  
# Lua

Code by Vesa Marttila (@ponzao).

```

print(os.date("*t").year)

```

# Clojure

Once again thanks to Vesa Marttila (@ponzao).

```

(let [date (java.util.Date.)
      sdf  (java.text.SimpleDateFormat. "yyyy")]
  (println (.format sdf date)))
  
```

# Objective-C

Donated by Lowell via the comments section.

```

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSLog (@"%d", [[NSCalendarDate date] yearOfCommonEra]);

    [pool drain];
    return 0;
}

```

# C# (C-Sharp)

Contributed by a certain Paul via the comments.

```

using System;

class Program {
    static void Main(string[] args) {
        Console.WriteLine(DateTime.Now.Year);
    }
}

```

# Tcl

Contributed by Robert.

```

set year [clock format [clock seconds] -format {%Y}]
puts $year

```

# Adobe Flex

Seems to work with both Flex 3 and 4, contributed by Uber_Nick via reddit.com comments.

```

<?xml version="1.0" encoding="utf-8"?>
<mx:Application xmlns:mx="http://www.adobe.com/2006/mxml">
    <mx:Label text="{new Date().fullYear}" />
</mx:Application>

```

# Delphi

Thanks to Rejn via comments and Reddit.

```

ShowMessage( IntToStr(YearOf(Now)) );

```

# Haskell

Thanks to Pezezin via comments and Onmach via Reddit.

```

import System.Time
main = getClockTime >>= toCalendarTime >>= print . ctYear

```

# LOLCODE

by Danita via Reddit.

```
HAI!
CAN HAS STDIO?
CAN HAS DATETIMEZ?
LOL 'CALENDAR' R DATETIMEZ
VISIBLE YEAR IN MAH 'CALENDAR'
KTHXBYE

```

