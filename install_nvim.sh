#! bin/bash
#install build essentials
#nvim
cd $XDG_RUNTIME_DIR
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
#rust
curl --proto '=https' --tlsv1.2 sSf https://sh.rustup.rs | sh
#neovide
cargo install --git https://github.com/neovide/neovide.git
#pull nvim config
