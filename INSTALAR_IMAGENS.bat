@echo off
chcp 65001 > nul
title Monte Athos - Instalador de Imagens
color 0A

echo.
echo ================================================================
echo    MONTE ATHOS - INSTALADOR DE IMAGENS
echo ================================================================
echo.
echo Este script copia TUDO automaticamente: logos, fachada, plantas,
echo mapa de localizacao e galeria de renders 3D.
echo.
echo Apos rodar, a pasta docs/ estara pronta para subir no Git.
echo.
pause

set "ROOT=%~dp0"
set "DOCS=%ROOT%docs"
set "BRAND=%DOCS%\assets\brand"
set "TOWER=%DOCS%\assets\tower"
set "PLANTS=%DOCS%\assets\plants"
set "GALLERY=%DOCS%\assets\gallery"

set "OLD_ASSETS=C:\Users\Vini\Documents\Claude\TIVOLI\monte-athos\GITHUB_PAGES_READY\docs\assets"

echo.
echo [1/5] Criando pastas de assets...
if not exist "%BRAND%" mkdir "%BRAND%"
if not exist "%TOWER%" mkdir "%TOWER%"
if not exist "%PLANTS%" mkdir "%PLANTS%"
if not exist "%GALLERY%" mkdir "%GALLERY%"
echo       OK

echo.
echo [2/5] Copiando logos da Oceano Imoveis...
copy /Y "%OLD_ASSETS%\brand\logo-oceano-azul.png" "%BRAND%\logo-oceano-azul.png" > nul 2>&1
copy /Y "%OLD_ASSETS%\brand\icon-oceano-azul.png" "%BRAND%\icon-oceano-azul.png" > nul 2>&1
copy /Y "%OLD_ASSETS%\brand\logo-oceano.webp" "%BRAND%\logo-oceano.webp" > nul 2>&1
echo       OK

echo.
echo [3/5] Copiando fachada, mapa e mapa solar...
copy /Y "%OLD_ASSETS%\tower\fachada-athos.png" "%TOWER%\fachada.jpg" > nul 2>&1
copy /Y "%OLD_ASSETS%\tower\hero-athos.png" "%TOWER%\hero-athos.png" > nul 2>&1
copy /Y "%OLD_ASSETS%\tower\mapa-solar-athos.png" "%TOWER%\mapa-localizacao.jpg" > nul 2>&1
copy /Y "%OLD_ASSETS%\tower\mapa-solar-athos.png" "%TOWER%\colunas.png" > nul 2>&1
echo       OK

echo.
echo [4/5] Copiando plantas tecnicas (organizadas por coluna)...
copy /Y "%OLD_ASSETS%\plants\apto-01-02-13-14.png" "%PLANTS%\apto-01-02-13-14.png" > nul 2>&1
copy /Y "%OLD_ASSETS%\plants\apto-03.png" "%PLANTS%\apto-03.png" > nul 2>&1
copy /Y "%OLD_ASSETS%\plants\apto-04.png" "%PLANTS%\apto-04.png" > nul 2>&1
copy /Y "%OLD_ASSETS%\plants\apto-05-07-09-11.png" "%PLANTS%\apto-05-07-09-11.png" > nul 2>&1
copy /Y "%OLD_ASSETS%\plants\apto-06.png" "%PLANTS%\apto-06.png" > nul 2>&1
copy /Y "%OLD_ASSETS%\plants\apto-08-10.png" "%PLANTS%\apto-08-10.png" > nul 2>&1
copy /Y "%OLD_ASSETS%\plants\apto-12.png" "%PLANTS%\apto-12.png" > nul 2>&1
echo       OK (7 plantas copiadas)

echo.
echo [5/5] Copiando galeria de renders 3D (27 imagens)...
copy /Y "%OLD_ASSETS%\gallery\*.jpg" "%GALLERY%\" > nul 2>&1
copy /Y "%OLD_ASSETS%\gallery\*.png" "%GALLERY%\" > nul 2>&1
echo       OK

echo.
echo ================================================================
echo    CONCLUIDO!
echo ================================================================
echo.
echo A pasta docs/ esta PRONTA para subir no GitHub.
echo.
echo Para testar agora: abra docs\index.html no navegador.
echo Para publicar no Git: siga o README_PUBLICAR.md
echo.
pause
