# MakeAvr
Um pequeno (ainda) Makefile para compilar, programar e gravar um arduino utilizando as ferramentas da Atmel e avrdude.

O que €
-------
Este Makefile produz os arquivos **.elf**, **.o** e **.ihex** a partir de um arquivo **.S** **(note o s maiusculo)** e então grava o código no Arduino.

Dependências
------------
Para que esse Makefile funcione você precisar ter instalado no seu computador os seguintes programas  
 - avr-gcc
 - avr-dude
 - avr-libc

Como Utilizar
-------------
####Compila o código assembly e grava no Arduino
```
make ARQUIVO=aqui_vai_o_nome_do_seu_arquivo.S
```

####Grava o código no Arduino
Se você já compilou o código e quiser gravar novamente ou gravar em outro Arduino  
```
make burn ARQUIVO=aqui_vai_o_nome_do_seu_arquivo.S
```

####Apenas Compila o Código
Gera os arquivos **.elf**, **.o** e **.ihex** e não grava no Arduino  
```
make build ARQUIVO=aqui_vai_o_nome_do_seu_arquivo.S
```

####Limpa os Arquivos Gerados na Compilação
Para fins de limpeza e organização  
```
make clean ARQUIVO=aqui_vai_o_nome_do_seu_arquivo.S
```

Como Funciona
-------------
- avr-as compila o assembly
- avr-ld linka o arquivo .o num .elf
- avr-objdump extrai do .elf o arquivo hexadecimal no padrão intel (ihex)
- avrdude grava o .ihex no Arduino

