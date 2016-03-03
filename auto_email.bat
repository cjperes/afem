@echo off
mode con: lines=20
color 0F
rem Implementar dps os Hiperlinks
rem set /p link1=Digite o HIPERLINK para a primeira imagem:
cls
title AFEM - Auto Formatting Email Marketing
echo Script para formatação de e-mail marketing - joedev.org
echo=================================================================
echo             BBCREATIVE.ORG
echo.
echo Instruções:
echo.
echo * Fatie sua imagem em 4 ou 5 partes
echo * Hospede as imagens em nosso servidor (up.bbcreative.org)
echo * Acrescentar HTTP:// ao link
echo.
pause
goto sets

:: seleção var
:sets
cls
color 0F
set /p titulo=Digite o Titulo da campanha:
if not defined titulo goto erro
cls
set /p img1=Digite o Link da primeira imagem:
if not defined img1 goto erro
cls
set /p img2=Digite o Link da seguda imagem:
if not defined img2 goto erro
cls
set /p img3=Digite o Link da terceira imagem:
if not defined img3 goto erro
cls
set /p img4=Digite o Link da quarta imagem:
if not defined img3 goto erro
cls
set /p img5=Digite o Link da quinta imagem:
:: nesta parte possibilito a opção de deixar apenas 4 imagens
if not defined img5 goto 4
cls
goto script

:: Essa parte teve contribuição do forum Batch-Satti
:script
cls


:5
	for /f "delims=: tokens=2" %%a in ('chcp') do set "restore_codepage=%%a"
	chcp 1252>NUL
	set "z=%~dpn0.htm"
	echo Gerando arquivo...
	ping -n 3 127.0.0.1>nul

	for %%A in (
		
	        "<!doctype html>"
                "<!-- Criado com AFEM - joedev.org and bbcreative.org-->"
                "<html>"
                "<head>"
                "<meta charset="utf-8">"
                "<title> %titulo% </title>"
                "</head>"
                "<body>"
                "<div align="center"> <img src=" %img1% "  alt=""/></div>"
                "<div align="center"><img src=" %img2% "  alt=""/></div>"
                "<div align="center"> <img src=" %img3% "  alt=""/></div>"
                "<div align="center"><img src=" %img4% "  alt=""/></div>"
                "<div align="center"><img src=" %img5% "  alt=""/></div>"
                "</body>"
                "</html>"

				) do echo.%%~A>>"%z%"
cls
echo.
goto fim

:4

	for /f "delims=: tokens=2" %%a in ('chcp') do set "restore_codepage=%%a"
	chcp 1252>NUL
	set "z=%~dpn0.htm"
	echo Gerando arquivo...
	ping -n 3 127.0.0.1>nul

	for %%A in (
		
	        "<!doctype html>"
                "<!-- Criado com AFEM - joedev.org and bbcreative.org-->"
                "<html>"
                "<head>"
                "<meta charset="utf-8">"
                "<title> %titulo% </title>"
                "</head>"
                "<body>"
                "<div align="center"> <img src=" %img1% "  alt=""/></div>"
                "<div align="center"><img src=" %img2% "  alt=""/></div>"
                "<div align="center"> <img src=" %img3% "  alt=""/></div>"
                "<div align="center"><img src=" %img4% "  alt=""/></div>"
               
                "</body>"
                "</html>"

				) do echo.%%~A>>"%z%"
cls
echo.
goto fim

:erro
color 0C
cls
echo ERRO! Por favor preencha todos os campos!
ping -n 3 127.0.0.1>nul
goto sets




:fim
echo Arquivo gerado com sucesso...
ping -n 3 127.0.0.1>nul
