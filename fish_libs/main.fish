set prefix "[termux_tools]"
switch $argv[1]
case cut
  cut_msg
case help h '*'
  help_echo
end
