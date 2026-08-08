# Cielo — tap de Homebrew

Instalación de [Cielo](https://github.com/12monkeys-happy/homebrew-cielo),
la app de barra de menú que tiñe la franja superior de tu fondo de
pantalla con el color real del cielo sobre tu ciudad.

```bash
brew install --cask --no-quarantine 12monkeys-happy/cielo/cielo
```

### ¿Por qué `--no-quarantine`?

Cielo todavía no está notarizada por Apple (un trámite de pago para
desarrolladores, en curso). Sin esa marca, macOS bloquea la app la
primera vez y hay que autorizarla a mano en Ajustes → Privacidad y
seguridad. `--no-quarantine` evita ese paso: le dice a macOS que
confías en lo que estás instalando a propósito.

La app **sí está firmada** y su firma es válida — lo único que le falta
es el sello de notarización.

### Actualizar

```bash
brew upgrade --cask cielo
```

### Desinstalar

```bash
brew uninstall --cask cielo
```

Al desinstalarla, tu fondo de pantalla vuelve solo a como estaba.
Para borrar además tus láminas guardadas y preferencias:

```bash
brew uninstall --zap --cask cielo
```

Este repositorio contiene **solo el instalador y el binario**. El código
fuente de Cielo no se publica aquí.
