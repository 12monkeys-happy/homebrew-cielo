cask "cielo" do
  version "0.1.0-78"
  sha256 "e69cfb39ae8678d87c3432c0a5822399d60c5d315b2bc433a274e90ab42ff8ea"

  url "https://github.com/12monkeys-happy/homebrew-cielo/releases/download/v#{version}/Cielo-#{version}.dmg"
  name "Cielo"
  desc "Tiñe la franja superior del fondo de pantalla con el color real del cielo"
  homepage "https://github.com/12monkeys-happy/homebrew-cielo"

  depends_on macos: ">= :sonoma"

  app "Cielo.app"

  # Cielo restaura el fondo de pantalla al salir, así que desinstalar
  # SIN cerrarla antes dejaría el escritorio teñido para siempre.
  uninstall quit: "com.magicsur.cielo"

  zap trash: [
    "~/Library/Application Support/Cielo",
    "~/Library/Caches/Cielo",
    "~/Library/Preferences/com.magicsur.cielo.plist",
  ]

  caveats <<~EOS
    Cielo todavía no está notarizada por Apple. Si la instalaste sin
    --no-quarantine, macOS la bloqueará: autorízala en
    Ajustes del Sistema → Privacidad y seguridad → "Abrir de todos modos".

    El ícono vive en la barra de menú, arriba a la derecha.
    Para cerrarla: clic derecho en el ícono → Salir de Cielo.
    Tu fondo de pantalla vuelve solo.
  EOS
end
