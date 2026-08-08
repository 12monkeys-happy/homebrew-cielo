# Cielo — tap de Homebrew

Instalación de [Cielo](https://github.com/12monkeys-happy/homebrew-cielo),
la app de barra de menú que tiñe la franja superior de tu fondo de
pantalla con el color real del cielo sobre tu ciudad.

```bash
brew tap 12monkeys-happy/cielo
brew trust --tap 12monkeys-happy/cielo
brew install --cask cielo
```

El paso `brew trust` es nuevo en Homebrew 6: a partir de esa versión hay
que declarar explícitamente que confías en un repositorio de terceros
antes de que Homebrew cargue nada de él. Sin ese paso la instalación
falla sin explicar bien por qué.

Para actualizar después basta `brew upgrade --cask cielo`.

### Sobre la advertencia de macOS

Cielo todavía no está notarizada por Apple (un trámite de pago para
desarrolladores, en curso). Sin ese sello macOS bloquea la app la
primera vez y hay que autorizarla a mano en Ajustes → Privacidad y
seguridad.

Para evitarte ese paso, **este instalador quita la marca de cuarentena**
después de copiar la app. Es el mismo consentimiento que darías en
Ajustes, solo que explícito: puedes leer exactamente qué hace en
[`Casks/cielo.rb`](Casks/cielo.rb).

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
