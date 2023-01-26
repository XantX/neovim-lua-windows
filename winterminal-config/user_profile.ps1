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
  $result=(git branch | fzf --height 50%).Trim()
  if($result) {
     $branch= $result.IndexOf("*")
     if($branch -eq -1) {
        git checkout $result
     } else {
    }
  }
}

Set-Alias gtc gitCheckoutBranch

function gitDeleteBranch {
  $result=(git branch | fzf --height 50%).Trim()
  if($result) {
    $branch= $result.IndexOf("*")
    if($branch -eq -1) {
      do {
        $respuesta = Read-Host "Esta seguro que quiere eliminar la rama local: $result (S/N)"
        if($respuesta) {
          switch ( $respuesta ){
            'S' { git branch -d $result }
            'N' {  }
            default { }
          }
        }
      }until($respuesta -eq 'S' -or $respuesta -eq 'N')

      #git branch -d $result.Trim()
    } else {}
  }
}

Set-Alias gdb gitDeleteBranch
