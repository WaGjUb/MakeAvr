# MakeAvr
Um pequeno (ainda) makefile para compilar, programar e gravar um arduino utilizando as ferramentas da atmel e avrdude.

O que €
-------
Este makefile produz os aqruivos .elf, .o e .ihex a partir de um arquivo .S (note o s maiusculo) e entao grava o codigo no arduino.

Como Utilizar
-------------
####Compila o codigo assemby e grava no arduino
make ARQUIVO=aqui_vai_o_nome_do_seu_arquivo.S

####Grava o codigo no arduino
se voce ja compilou o codigo e quiser gravar novamente ou gravar outro arduino
make burn ARQUIVO=aqui_vai_o_nome_do_seu_arquivo.S

####Apenas Compila o codigo
Gera os arquivos .elf, .o e .ihex e nao grava no arduino
make build ARQUIVO=aqui_vai_o_nome_do_seu_arquivo.S

####Limpa os arquivos gerados na compilacao
Para fins de limpeza e organizacao 
make clean ARQUIVO=aqui_vai_o_nome_do_seu_arquivo.S

Como Funciona
-------------
- avr-as compila o assembly
- avr-ld linka o arquivo .o num .elf
- avr-objdump extrai do .elf o arquivo hexadecimal no padrao intel (ihex)
- avrdude grava o .ihex no arduino

