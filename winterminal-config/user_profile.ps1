#Alias
function configWorkGitProfile { 
  git config --local user.name "Sebastian Diaz" &
  git config --local user.email "sebastian.diaz.pe@cloudappi.net"}
function listAll { Get-ChildItem -Force }
function nvimrc  { set-location "C:\Users\XantX\AppData\Local\nvim\" }
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias gcnf configWorkGitProfile
Set-Alias la listAll
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias touch New-item
Set-Alias p pwd
Set-Alias nvrc nvimrc
function openFolderOfWaima { set-location 'D:\Trabajo\cloudappi\proyectos\waima\' }
Set-Alias waima openFolderOfWaima

function gitCheckoutBranch { 
  $branch=(git branch | fzf --height 40%) 
  git checkout $branch.Trim()
}

Set-Alias gtc gitCheckoutBranch
