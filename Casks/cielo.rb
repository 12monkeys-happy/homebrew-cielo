cask "cielo" do
  version "0.1.0-112"
  sha256 "ee48a1da0da81752b1898513fd082dc4f62691e135d4a614f63441b4b0146b46"

  url "https://github.com/12monkeys-happy/homebrew-cielo/releases/download/v#{version}/Cielo-#{version}.dmg"
  name "Cielo"
  desc "Tiñe la franja superior del fondo de pantalla con el color real del cielo"
  homepage "https://github.com/12monkeys-happy/homebrew-cielo"

  depends_on macos: :sonoma

  app "Cielo.app"

  # Homebrew 6 ya no acepta --no-quarantine, así que la marca se quita
  # aquí. Es el MISMO consentimiento que autorizar la app en Ajustes,
  # solo que explícito y legible en este archivo: quien instala desde
  # este tap puede leer exactamente qué se hace con su Mac.
  # Cuando Cielo esté notarizada, este bloque desaparece solo.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Cielo.app"],
                   must_succeed: false
  end

  # Cielo restaura el fondo de pantalla al salir, así que desinstalar SIN
  # cerrarla antes dejaría el escritorio teñido para siempre.
  uninstall quit: "com.magicsur.cielo"

  zap trash: [
    "~/Library/Application Support/Cielo",
    "~/Library/Caches/Cielo",
    "~/Library/Preferences/com.magicsur.cielo.plist",
  ]

  caveats <<~EOS
    Cielo todavía no está notarizada por Apple, así que este instalador
    le quita la marca de cuarentena para que abra sin advertencias.

    El ícono vive en la barra de menú, arriba a la derecha.
    Para cerrarla: clic derecho en el ícono → Salir de Cielo.
    Tu fondo de pantalla vuelve solo.
  EOS
end
