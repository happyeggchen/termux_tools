#!/usr/bin/env fish
function help_echo
  echo "==========Help Documentation=========="
  set_color green
  echo "(./)app argv[1]"
  set_color normal
  echo " -argv[1]:the command to execute"
  echo "  -Available:
          cut"
  echo "======================================"
end
function cut_msg -d "Cut text in msg.txt"
set msg (cat msg.txt | tr -d '\n' | tr -s "  ")
echo "$prefix Where to start cut?[Enter number like 10,20]"
read -P "$prefix >>> " cut_start
  if [ "$cut_start" = "0" ]
    echo "1 ->"
    string sub -l 200 $msg #| termux-clipboard-set
  else
    if [ "$cut_start" = "" ]
            echo "1 ->"
      string sub -l 200 $msg #| termux-clipboard-set
    else
      echo "1 ->"
      string sub -s $cut_start -l 200 $msg #| termux-clipboard-set
    end
  end
    echo "2 ->"
    string sub -s (math $cut_start+200) -l 200 $msg
    echo "3 ->"
    string sub -s (math $cut_start+400) -l 200 $msg
    echo "4 ->"
    string sub -s (math $cut_start+600) -l 200 $msg
    echo "5 ->"
    string sub -s (math $cut_start+800) -l 200 $msg
end
set_color yellow
echo Build_Time_UTC=2021-11-21_05:57:13
set_color normal
set prefix "[termux_tools]"
switch $argv[1]
case cut
  cut_msg
case help h '*'
  help_echo
end
