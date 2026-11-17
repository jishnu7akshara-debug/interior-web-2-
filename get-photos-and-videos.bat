@echo off
title Maison Atelier - downloading photos and videos
echo.
echo  Downloading 30 photos (Pexels) and 3 videos (Mixkit) into this folder...
echo  Both are free for commercial use. This takes about 1 minute.
echo.
cd /d "%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
 "$ProgressPreference='SilentlyContinue';" ^
 "New-Item -ItemType Directory -Force -Path 'images','videos' | Out-Null;" ^
 "$b='https://images.pexels.com/photos/'; $q='?auto=compress&cs=tinysrgb&w=';" ^
 "$imgs='34688219-2400','34549311-1400','35482185-900','33685860-1200','38310837-1200','33685863-1200','17947888-1200','33599113-1200','38874193-1200','33685861-700','10758468-700','37930117-700','6434621-700','34277650-700','31737841-1800','39017406-1400','12277124-1400','17947890-1200','18285942-1200','14613821-1200','8092431-1800','40211701-2400','30992365-1000','34117279-1000','10758468-1000','34277650-1000','10758468-800','20348123-800','12379606-800','37930117-800';" ^
 "$list=@(); foreach($n in $imgs){ $i,$w=$n.Split('-'); $list+=,@(('images\'+$n+'.jpg'),($b+$i+'/pexels-photo-'+$i+'.jpeg'+$q+$w)) };" ^
 "$list+=,@('videos\4196.mp4','https://assets.mixkit.co/videos/4196/4196-720.mp4');" ^
 "$list+=,@('videos\3110.mp4','https://assets.mixkit.co/videos/3110/3110-720.mp4');" ^
 "$list+=,@('videos\26757.mp4','https://assets.mixkit.co/videos/26757/26757-720.mp4');" ^
 "$ok=0; foreach($p in $list){ try{ Invoke-WebRequest -Uri $p[1] -OutFile $p[0] -UseBasicParsing -TimeoutSec 180; $ok++; Write-Host ('  OK    ' + $p[0]) } catch { Write-Host ('  FAIL  ' + $p[0] + '  ' + $_.Exception.Message) -ForegroundColor Red } };" ^
 "Write-Host ''; Write-Host ('  Done: '+$ok+' of '+$list.Count+' files downloaded.') -ForegroundColor Green"
echo.
echo  Opening the website...
start "" "%~dp0index.html"
pause
