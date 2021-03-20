rem ocultara as linhas de comando do script (default)
@echo off
rem titulo da janela de execução do programa
title Aula 02 - Engenharia de Dados
rem tamanho da janela
mode 120, 30
rem cores de plano de fundo e caracteres
color 0a

:inicio
cls
echo.
set /p nome=Digite seu nome: 
set /a v=0
set /a d=0
set /a e=0

goto:jkp

:jkp
cls
echo =========================================
echo Digite seu nome: %nome%
echo =========================================
echo.
echo                  (o   o)
echo =============ooO===(_)===Ooo=============
echo 	BEM VINDO AO PO-KEN-PO BIG-BANG
echo =========================================
echo [1] PEDRA
echo [2] PAPEL
echo [3] TESOURA
echo [4] LAGARTO
echo [5] SPOCK
echo [E] ENCERRAR O JOGO
echo [R] REGRAS
echo =========================================
echo.
echo =========================================
echo VITORIAS: %v%
echo DERROTAS: %d%
echo EMPATE: %e%
echo =========================================
echo.

set /p jogador=Escolha uma opcao: 

if /i %jogador% == e ( 
	goto:sair)

if /i %jogador% == r (
	echo PEDRA:
	echo 	Empata com PEDRA, Ganha de TESOURA e LAGARTO, Perde para PAPEL e SPOCK
	echo.
	echo PAPEL:
	echo 	Empata com PAPEL, Ganha de PEDRA e SPOCK, Perde para TESOURA e LAGARTO
	echo.
	echo TESOURA:
	echo 	Empata com TESOURA, Ganha de LAGARTO e PAPEL, Perde para PEDRA e SPOCK
	echo.
	echo LAGARTO:
	echo 	Empata com LAGARTO, Ganha de PAPEL e SPOCK, Perde para PEDRA e TESOURA
	echo.
	echo SPOCK:
	echo 	Empata com SPOCK, Ganha de PEDRA e TESOURA, Perde para LAGARTO e PAPEL
	echo.
	pause
	goto:jkp)

set /a computer=(%Random% %%5) + 1

if %jogador% equ 1 (
	if %jogador% equ %computer% (
		set /a e=%e% + 1
		echo.
		echo %nome% escolheu PEDRA
		echo Computador escolheu PEDRA
		echo.
		echo Ops...Deu Empate!
		echo.)
	if %computer% equ 3 (
		set /a v=%v% + 1
		echo.
		echo %nome% escolheu PEDRA
		echo Computador escolheu LAGARTO
		echo.
		echo PARABENS, VOCE VENCEU!!!
		echo.)
	if %computer% equ 4 (
		set /a v=%v% + 1
		echo.
		echo %nome% escolheu PEDRA
		echo Computador escolheu TESOURA
		echo.
		echo PARABENS, VOCE VENCEU!!!
		echo.)
	if %computer% equ 2 (
		set /a d=%d% + 1
		echo.
		echo %nome% escolheu PEDRA
		echo Computador escolheu PAPEL
		echo.
		echo QUE PENA... VOCE PERDEU!!!
		echo.)
	if %computer% equ 5 (
		set /a d=%d% + 1
		echo.
		echo %nome% escolheu PEDRA
		echo Computador escolheu SPOCK
		echo.
		echo QUE PENA... VOCE PERDEU!!!
		echo.)
	pause
	goto:jkp)

if %jogador% equ 2 (
	if %jogador% equ %computer% (
		set /a e=%e% + 1
		echo.
		echo %nome% escolheu PAPEL
		echo Computador escolheu PAPEL
		echo.
		echo Ops...Deu Empate!
		echo.)
	if %computer% equ 1 (
		set /a v=%v% + 1
		echo.
		echo %nome% escolheu PAPEL
		echo Computador escolheu PEDRA
		echo.
		echo PARABENS, VOCE VENCEU!!!
		echo.)
	if %computer% equ 5 (
		set /a v=%v% + 1
		echo.
		echo %nome% escolheu PAPEL
		echo Computador escolheu SPOCK
		echo.
		echo PARABENS, VOCE VENCEU!!!
		echo.)
	if %computer% equ 3 (
		set /a d=%d% + 1
		echo.
		echo %nome% escolheu PAPEL
		echo Computador escolheu TESOURA
		echo.
		echo QUE PENA... VOCE PERDEU!!!
		echo.)
	if %computer% equ 4 (
		set /a d=%d% + 1
		echo.
		echo %nome% escolheu PAPEL
		echo Computador escolheu LAGARTO
		echo.
		echo QUE PENA... VOCE PERDEU!!!
		echo.)
	pause
	goto:jkp)

if %jogador% equ 3 (
	if %jogador% equ %computer% (
		set /a e=%e% + 1
		echo.
		echo %nome% escolheu TESOURA
		echo Computador escolheu TESOURA
		echo.
		echo Ops...Deu Empate!
		echo.)
	if %computer% equ 4 (
		set /a v=%v% + 1
		echo.
		echo %nome% escolheu TESOURA
		echo Computador escolheu LAGARTO
		echo.
		echo PARABENS, VOCE VENCEU!!!
		echo.)
	if %computer% equ 2 (
		set /a v=%v% + 1
		echo.
		echo %nome% escolheu TESOURA
		echo Computador escolheu PAPEL
		echo.
		echo PARABENS, VOCE VENCEU!!!
		echo.)
	if %computer% equ 1 (
		set /a d=%d% + 1
		echo.
		echo %nome% escolheu TESOURA
		echo Computador escolheu PEDRA
		echo.
		echo QUE PENA... VOCE PERDEU!!!
		echo.)
	if %computer% equ 5 (
		set /a d=%d% + 1
		echo.
		echo %nome% escolheu TESOURA
		echo Computador escolheu SPOCK
		echo.
		echo QUE PENA... VOCE PERDEU!!!
		echo.)
	pause
	goto:jkp)

if %jogador% equ 4 (
	if %jogador% equ %computer% (
		set /a e=%e% + 1
		echo.
		echo %nome% escolheu LAGARTO
		echo Computador escolheu LAGARTO
		echo.
		echo Ops...Deu Empate!
		echo.)
	if %computer% equ 2 (
		set /a v=%v% + 1
		echo.
		echo %nome% escolheu LAGARTO
		echo Computador escolheu PAPEL
		echo.
		echo PARABENS, VOCE VENCEU!!!
		echo.)
	if %computer% equ 5 (
		set /a v=%v% + 1
		echo.
		echo %nome% escolheu LAGARTO
		echo Computador escolheu SPOCK
		echo.
		echo PARABENS, VOCE VENCEU!!!
		echo.)
	if %computer% equ 1 (
		set /a d=%d% + 1
		echo.
		echo %nome% escolheu LAGARTO
		echo Computador escolheu PEDRA
		echo.
		echo QUE PENA... VOCE PERDEU!!!
		echo.)
	if %computer% equ 3 (
		set /a d=%d% + 1
		echo.
		echo %nome% escolheu LAGARTO
		echo Computador escolheu TESOURA
		echo.
		echo QUE PENA... VOCE PERDEU!!!
		echo.)
	pause
	goto:jkp)

if %jogador% equ 5 (
	if %jogador% equ %computer% (
		set /a e=%e% + 1
		echo.
		echo %nome% escolheu SPOCK
		echo Computador escolheu SPOCK
		echo.
		echo Ops...Deu Empate!
		echo.)
	if %computer% equ 1 (
		set /a v=%v% + 1
		echo.
		echo %nome% escolheu SPOCK
		echo Computador escolheu PEDRA
		echo.
		echo PARABENS, VOCE VENCEU!!!
		echo.)
	if %computer% equ 3 (
		set /a v=%v% + 1
		echo.
		echo %nome% escolheu SPOCK
		echo Computador escolheu TESOURA
		echo.
		echo PARABENS, VOCE VENCEU!!!
		echo.)
	if %computer% equ 4 (
		set /a d=%d% + 1
		echo.
		echo %nome% escolheu SPOCK
		echo Computador escolheu LAGARTO
		echo.
		echo QUE PENA... VOCE PERDEU!!!
		echo.)
	if %computer% equ 2 (
		set /a d=%d% + 1
		echo.
		echo %nome% escolheu SPOCK
		echo Computador escolheu PAPEL
		echo.
		echo QUE PENA... VOCE PERDEU!!!
		echo.)
	pause
	goto:jkp) else (goto:sair)

:sair
echo.
set /p resp=Deseja realmente sair? [S/N]:
if /i %resp% equ s (exit)
if /i %resp% equ n (goto:jkp) else (
	goto:sair)
