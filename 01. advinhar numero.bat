rem ocultara as linhas de comando do script (default)
@echo off
rem titulo da janela de execução do programa
title Aula 02 - Engenharia de Dados
rem tamanho da janela
mode 60, 20
rem cores de plano de fundo e caracteres
color 0a
rem subrotina
:inicio
rem limpa a tela
cls
rem pula uma linha front-end(tela) 
echo.

set /a cont=5
set /a r=(%Random% %%50) + 1

:tent
cls
echo                  (o   o)
echo =============ooO===(_)===Ooo=============
echo ADVINHE O NÚMERO ENTRE 01 E 50
echo ----------------------------------------
echo  QUANTIDADE DE TENTATIVAS %cont%
echo ----------------------------------------
echo =========================================
echo.

set /p palp=Digite seu palpite: 

if %palp% equ %r% (
	echo ---------------------------------------
	echo 	PARABENS!!!
	echo 	VOCE ADVINOU, O NUMERO %r% !!!
	echo ---------------------------------------
	goto:sair)

if %palp% gtr %r% (
	echo ---------------------------------------
	echo   Digite um numero menor que %palp%.
	echo ---------------------------------------
	set /a cont=%cont% - 1
	pause
	goto:qtdPalp)

if %palp% lss %r% (
	echo ---------------------------------------
	echo   Digite um numero maior que %palp%.
	echo ---------------------------------------
	set /a cont=%cont% - 1
	pause
	goto:qtdPalp)

:qtdPalp
if %cont% equ 0 (
	cls
	echo ---------------------------------------
	echo 	ACABOU AS TENTATIVAS...
	echo ---------------------------------------
	goto:sair) else (goto:tent)

:sair
echo.
set /p resp=Deseja jogar novamente? [S/N]:
if /i %resp% equ n (exit) else (goto:inicio)