#!/bin/bash

curl -fsSL https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | gpg --dearmor | sudo dd of=/etc/apt/keyrings/spotify-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/spotify-archive-keyring.gpg] http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
