#!/bin/bash

# Wait until the default secret collection (your keyring) is unlocked
while true; do
    # Query DBus for the locked status of the keyring
    LOCKED=$(busctl --user get-property org.freedesktop.secrets /org/freedesktop/secrets/aliases/default org.freedesktop.Secret.Collection Locked 2>/dev/null | awk '{print $2}')
    
    if [ "$LOCKED" == "false" ]; then
        # Keyring is unlocked, exit the loop
        break
    fi
    
    # Wait 2 seconds before checking again
    sleep 2
done

# Launch Bitwarden in the background
bitwarden-desktop &
