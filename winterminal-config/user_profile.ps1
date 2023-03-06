#Alias
function listAll { Get-ChildItem -Force }
function nvimrc  { set-location "C:\Users\XantX\AppData\Local\nvim\" }
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias gcnf configWorkGitProfile
function configWorkGitProfile { 
  git config --local user.name "Sebastian Diaz" &
  git config --local user.email "sebastian.diaz.pe@cloudappi.net"}
Set-Alias la listAll
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias touch New-item
Set-Alias p pwd
Set-Alias nvrc nvimrc
function openFolderOfWaima { set-location 'E:\Trabajo\cloudappi\proyectos\waima\' }
Set-Alias waima openFolderOfWaima
function goToDesa { set-location 'E:\desarrollo\'}
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
        $response = Read-Host "Esta seguro que quiere eliminar la rama local: $selectedBranch (S/N)"
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
function showGitStatus { git status }
Set-Alias gdb gitDeleteBranch
Set-Alias gb showGitBranches 
Set-Alias gll showGitLogOneLine
Set-Alias gst showGitStatus
function showNodeVersions {
    $listaDeVersiones = nvm list
    $listaDeVersiones = $listaDeVersiones.Trim()
    $versionSelecionada=($listaDeVersiones|fzf --height 50%)
    if($versionSelecionada) {
      $numeroVersion = ""
      if($versionSelecionada -match '\d{1,3}\.\d{1,3}\.\d{1,3}'){
          $numeroVersion = $Matches[0]
      }
      if($versionSelecionada -match '\*') {
        Write-Host "La version actual es" $numeroVersion
        return
      }
      nvm use $versionSelecionada
    }
}


Set-Alias nvuse showNodeVersions
