@echo off
chcp 65001 > nul
title Monte Athos - Compressor de Imagens
color 0E

echo.
echo ================================================================
echo    COMPRESSOR DE IMAGENS PARA O GITHUB
echo ================================================================
echo.
echo Use este script SO se voce esta dando erro de "file too large".
echo Ele vai reduzir o tamanho das imagens da galeria sem perder
echo qualidade visivel.
echo.
echo PRE-REQUISITO: Voce precisa ter o Python instalado.
echo Verificar: digite "python --version" no PowerShell.
echo Se nao tiver, instale em https://python.org
echo.
pause

echo.
echo Instalando biblioteca Pillow (1 vez so)...
python -m pip install --quiet Pillow

echo.
echo Comprimindo imagens da galeria...
python -c "from PIL import Image; import os; import glob; folder=r'%~dp0docs\assets\gallery'; files=glob.glob(folder+'/*.jpg')+glob.glob(folder+'/*.png'); [Image.open(f).convert('RGB').save(f.replace('.png','.jpg'), 'JPEG', quality=82, optimize=True) for f in files if os.path.getsize(f) > 1500000]; print(f'Comprimidas {len([f for f in files if os.path.getsize(f) > 1500000])} imagens')"

echo.
echo Comprimindo plantas tecnicas...
python -c "from PIL import Image; import os; import glob; folder=r'%~dp0docs\assets\plants'; files=glob.glob(folder+'/*.png'); [Image.open(f).save(f, 'PNG', optimize=True) for f in files if os.path.getsize(f) > 2000000]; print('OK')"

echo.
echo ================================================================
echo    CONCLUIDO!
echo ================================================================
echo.
echo Agora tente o git push novamente.
echo.
pause
