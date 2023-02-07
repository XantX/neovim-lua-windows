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
function goToDesa { set-location 'D:\desarrollo\'}
Set-Alias desa goToDesa

function gitCheckoutBranch { 
  $selectedBranch=(git branch | fzf --height 50%)
  if($selectedBranch) {
     $selectedBranch = $selectedBranch.Trim()
     $isActualBranch= $selectedBranch.IndexOf("*")
     if($isActualBranch -eq -1) {
        git checkout $selectedBranch
     }
  }
}

Set-Alias gtc gitCheckoutBranch

function gitDeleteBranch {
  $selectedBranch=(git branch | fzf --height 50%)
  if($selectedBranch) {
    $selectedBranch = $selectedBranch.Trim()
    $actualBranch= $selectedBranch.IndexOf("*")
    if($actualBranch -eq -1) {
      do {
        $response = Read-Host "Esta seguro que quiere eliminar la rama local: $result (S/N)"
        if($response) {
          switch ( $response ){
            'S' { git branch -d $selectedBranch }
            'N' {  }
            default { }
          }
        }
      }until($response -eq 'S' -or $response -eq 'N')
    }
  }
}
function showGitBranches {git branch}
function showGitLogOneLine {git log --graph --oneline}
Set-Alias gdb gitDeleteBranch
Set-Alias gb showGitBranches 
Set-Alias gll showGitLogOneLine
