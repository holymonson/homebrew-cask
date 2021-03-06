cask 'alt-tab' do
  version '3.2.1'
  sha256 'd53a95a7e55e4785315b64cf053c916f7b96af1536105a13098d915bfcecf162'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :sierra'

  app 'AltTab.app'
end
