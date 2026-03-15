# Dotfiles

Configuration Zsh personnelle — autosuggestions, syntax-highlighting, Powerlevel10k.

## Déploiement sur une nouvelle machine
```bash
git clone https://github.com/DrX7FFF/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
exec zsh
```

## Modifier et pousser
```bash
cd ~/.dotfiles
git add .
git commit -m "sauvegarde"
git push
```

## Récupérer les modifications sur les autres machines
```bash
cd ~/.dotfiles
git pull
```

## si besoin de reconfigurer le prompt
```bash
p10k configure
```

## Mise à jour des plugins Zsh
```bash
zsh-update
```