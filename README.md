To install NeoVim run the command ```curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage```
```chmod u+x nvim-linux-x86_64.appimage```

Then you want to run ``` sudo mv nvim-linux-x86_64.appimage /usr/local/bin/nvim```

So you expose nvim to your machine globally.

Run ```sudo chmod +x /usr/local/bin/nvim  ```
just in case your file returns to the default.

Then you can run ```nvim```

Finally to install the config of choice run ```git clone https://github.com/cchilton2002/nvim.config.git ~/.config/nvim```
Restart NeoVim to update these changes.
