function mk {make}
function mkcl {make clean}

function cdtr {cd D:\repositories}
function cdtc {cd D:\repositories\MyCode}

function cdsd {cd D:\Programs\stable-diffusion-webui}
function sd {cd D:\Programs\stable-diffusion-webui; .\webui-user.bat}

function cdcf {cd D:\Programs\ComfyUI}
function cf {cd D:\Programs\ComfyUI; .\run_nvidia_gpu.bat}
function cfcpu {cd D:\Programs\ComfyUI; .\run_cpu.bat}


conda activate

Import-Module PSReadLine
Import-Module posh-git

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

oh-my-posh init pwsh --config 'C:\Users\hrzhe\AppData\Local\Programs\oh-my-posh\themes\powerlevel10k_rainbow.omp.json' | Invoke-Expression
