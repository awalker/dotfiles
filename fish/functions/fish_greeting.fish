
function fish_greeting
  #/usr/bin/screenfetch -t
  set_color blue
  echo $USER@(hostname) | figlet -f slant
  bunnyfetch
  # figlet -f slant gandolf
  set_color -b normal
  set_color blue
  fortune
end
