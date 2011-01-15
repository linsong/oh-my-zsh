KEYCHAIN_CMD=$(which keychain)
if [ -n "$KEYCHAIN_CMD" ]; then 
    $KEYCHAIN_CMD ~/.ssh/id_dsa
    . ~/.keychain/$(hostname)-sh
fi
