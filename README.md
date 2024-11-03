# My dotfiles

My dotfiles, managed by [chezmoi](https://github.com/twpayne/chezmoi).

## Setup steps

1. Install command line tools

    ```sh
    xcode-select --install
    ```

2. Run the script to install required tools

    ```sh
    sh install.sh
    ```

3. Initialize chezmoi

    ```sh
    chezmoi init --apply https://github.com/RouSage/dotfiles.git
    ```

### Pull and apply latest changes

```sh
chezmoi update
```
