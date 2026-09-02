@echo off
rem cmd/PowerShell hybrid. Keep UTF-8 without BOM; keep this batch part ASCII only.
chcp 65001 >nul
set "L4D2CMD=%~f0"
powershell -NoProfile -ExecutionPolicy Bypass -Command "$s=[IO.File]::ReadAllText($env:L4D2CMD,[Text.Encoding]::UTF8); Invoke-Expression $s.Substring($s.LastIndexOf('#:PSBEGIN'))"
pause
exit /b

#:PSBEGIN
$ErrorActionPreference = 'Stop'
try { [Console]::OutputEncoding = [Text.Encoding]::UTF8 } catch {}
Set-Location (Split-Path -Parent $env:L4D2CMD)

# Steam 레지스트리 + libraryfolders.vdf 에서 라이브러리 목록 수집
$libs = @()
foreach ($key in 'HKCU:\Software\Valve\Steam', 'HKLM:\SOFTWARE\WOW6432Node\Valve\Steam') {
    $root = $null
    try { $root = (Get-ItemProperty $key -ErrorAction Stop).InstallPath } catch {}
    if (-not $root) { continue }
    $libs += $root
    $vdf = Join-Path $root 'steamapps\libraryfolders.vdf'
    if (Test-Path $vdf) {
        foreach ($m in [regex]::Matches((Get-Content $vdf -Raw), '"path"\s*"([^"]+)"')) {
            $libs += $m.Groups[1].Value -replace '\\\\', '\'
        }
    }
}
$game = $libs | Select-Object -Unique |
    ForEach-Object { Join-Path $_ 'steamapps\common\Left 4 Dead 2' } |
    Where-Object { Test-Path (Join-Path $_ 'left4dead2.exe') } |
    Select-Object -First 1

while (-not $game) {
    Write-Host 'Left 4 Dead 2 설치 폴더를 자동으로 찾지 못했습니다.' -ForegroundColor Yellow
    $in = (Read-Host 'left4dead2.exe가 있는 폴더 경로 (Enter 시 취소)').Trim('"', ' ')
    if (-not $in) { exit 1 }
    if (Test-Path (Join-Path $in 'left4dead2.exe')) { $game = $in } else { Write-Host '  그 폴더에 left4dead2.exe가 없습니다.' -ForegroundColor Red }
}

$dst = Join-Path $game 'left4dead2'
Write-Host "게임 경로: $game" -ForegroundColor Green
Copy-Item cfg, neko -Destination $dst -Recurse -Force
Copy-Item motd.txt -Destination $dst -Force
Write-Host '설정 적용 완료' -ForegroundColor Green
