!/bin/bash

A="./"
B="getblockhash"
C="getblock"
D="getpeerinfo"
E="getbalance"
F="getnewaddress"
G="sendtoaddress"
H="gettransaction"
I="bash rupert.sh"

read -p  "Which daemon you need: " -r DAEMON

           OPTIONS="BLOCK_NUM BLOCKHASH GET_TX PEERS BALANCE NEW_ADDRESS SEND CHOOSE_NEW QUIT"
           select opt in $OPTIONS; do
               if [ "$opt" = "QUIT" ]; then
                 echo done
                 exit
               elif [ "$opt" = "BLOCKHASH" ]; then
                 read -p "can't do anything with out the blockhash..." -r BLOCKH
                 echo "finally.. give me a minute"
                   sleep 2
                 eval $A$DAEMON $C $BLOCKH
               elif [ "$opt" = "BLOCK_NUM" ]; then
                 read -p "and.... the block number pleese... sheesh!" -r BLOCK_NUM
                 echo "finally.. give me a minute"
                   sleep 2
                   eval $A$DAEMON $B $BLOCK_NUM
               elif [ "$opt" = "PEERS" ]; then
                 echo "WOW!..you really are needy.."
                   sleep 1
                 echo "give me a second... maybe 2"
                   sleep 2
                   eval $A$DAEMON $D
               elif [ "$opt" = "BALANCE" ]; then
                 echo "You got nothing.... I used it all for hookers.."
                   sleep 1
                 echo "maybe there is a little left.."
                   sleep 1
                   eval $A$DAEMON $E
              elif [ "$opt" = "NEW_ADDRESS" ]; then
                echo "Really.... you "need" another one??!"
                  sleep 1
                  eval $A$DAEMON $F
              elif [ "$opt" = "SEND" ]; then
                read -p "You might want to HODL... just sayin. But how much do you want me to send" -r AMOUNT 
                  sleep 1
                read -p "And who is the lucky person that is getting my bonus? addy:" ADDY
                  eval $A$DAEMON $G $ADDY $AMOUNT
              elif [ "$opt" = "GET_TX" ]; then
                read -p "Whats the TX #... or am I supposed to just know it already? tx#:" -r TX
                  sleep 1
                eval $A$DAEMON $H $TX
              elif [ "$opt" = "CHOOSE_NEW" ]; then
                 echo "OH MY GOD ANOTHER ONE!!"
                   sleep 1
                   eval $I
               else
                 clear
                 echo bad option
               fi
           done
