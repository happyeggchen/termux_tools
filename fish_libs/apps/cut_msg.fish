function cut_msg -d "Cut text in msg.txt"
set msg (cat msg.txt | tr -d '\n' | tr -s "  ")
echo "$prefix Where to start cut?[Enter number like 10,20]"
read -P "$prefix >>> " cut_start
  if [ "$cut_start" = "0" ]
    set msg_cut (string sub -l 200 $msg)
    echo "1->
$msg_cut" | termux-clipboard-set
  else
    if [ "$cut_start" = "" ]
      set msg_cut (string sub -l 200 $msg)
      echo "1->
$msg_cut" | termux-clipboard-set
    else
      set msg_cut (string sub -s $cut_start -l 200 $msg)
      echo "1->
$msg_cut" | termux-clipboard-set
    end
  end
    for round in 2 3 4 5
      if [ "$round" = "2" ]
        set stack 200
      end
      if [ "$round" = "3" ]
        set stack 400
      end
      if [ "$round" = "4" ]
        set stack 600
      end
      if [ "$round" = "5" ]
        set stack 800
      end
      set msg_cut (string sub -s (math $cut_start+$stack) -l 200 $msg)
      echo "$round->
$msg_cut" | termux-clipboard-set
    end
end
