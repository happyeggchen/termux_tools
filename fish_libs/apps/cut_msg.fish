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
