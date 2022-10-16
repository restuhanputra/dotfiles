# ~/.dotfiles

<img src="preview/windows10.gif" width="100%"/>

<p align="center">
<a href='#license'><img src='https://img.shields.io/github/license/restuhanputra/dotfiles?color=yellow&logo=github&logoColor=white&style=flat-square' alt='license'/></a>
<a href='#stars'><img src='https://img.shields.io/github/stars/restuhanputra/dotfiles?color=yellow&style=flat-square' alt='stars'/></a>
</p>

<br />
<p align="justify">
This a repository with my personal configuration files. This repository serves as my way to help myself set up and maintain my workspaces. Managed using mklink. I hope you understand everything here.
</p>

<br />

## Preview

</details>

 <details close>
 <summary><strong>Show</strong></summary>
  <img src="preview/dekstop.png" width="100%"/>
  <p align="center">Desktop</p>

  <br />
  <img src="preview/workspace.png" width="100%"/>
  <p align="center">Workspace</p>
</details>

<br />

## Details

</details>

 <details close>
 <summary><strong>Show</strong></summary>
   <br>

| Info               | Description                      |
| ------------------ | -------------------------------- |
| `Operating System` | windows 10                       |
| `Shell`            | bash, command prompt, powershell |
| `Terminal`         | windows terminal                 |
| `Font`             | caskaydiacove, cascadia code     |
| `Text Editor`      | vs code                          |
| `Package Manager`  | scoop                            |
| `Git commit`       | git semantic commit              |
| `Dekstop widget`   | rainmeter                        |
| `WSL2 distro`      | ubuntu 20.04                     |

</details>
<br />

## How I Restore My Setup with mklink

> Notes : If you want to use this configuration, inspect the code before use.
> Just cherry-pick what you want to keep your system clean.

Clone this repository in ~/dotfiles directory, e.g.:

```cmd
git clone --recursive https://github.com/restuhanputra/dotfiles ~/dotfiles
```

Use mklink to manage symlinks, e.g. i wanna symlinks neofetch configuration:

```cmd
 cd ~/dotfiles

 mklink /D ".config\neofetch" "dotfiles\config\neofetch"
```

to unsymlinks, just delete the file symlinks. not the original one, e.g:

```cmd
rm .config\neofetch
```

<br />

## Here is my old dotfile, feel free to check it out:

- [Openbox Dotfile](https://github.com/restuhanputra/dotfiles/tree/openbox)
- [i3WM Dotfile](https://github.com/restuhanputra/dotfiles/tree/i3wm)
- [Gnome Dotfile](https://github.com/restuhanputra/dotfiles/tree/gnome)
- [KDE Dotfile](https://github.com/restuhanputra/dotfiles/tree/kde)

<br />

## License

Released and source is available under [MIT License](LICENSE)
