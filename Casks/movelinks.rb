cask 'movelinks' do
  version '1.3.25'
  sha256 '193a484db300af323a358bb7e8eb528c7a9f5c534df810bb63b5e178e768cf72'

  # d1c229iib3zm7m.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1c229iib3zm7m.cloudfront.net/mac/Moveslink2_#{version.dots_to_underscores}.dmg"
  appcast 'https://d1c229iib3zm7m.cloudfront.net/mac/appcast.xml',
          checkpoint: 'fb749b7e304f3bda8311b2eb06f1b272f945638225272fe9cf664d587704de39'
  name 'Movelinks'
  homepage 'http://www.movescount.com/connect/moveslinkmac/Suunto_Ambit'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  auto_updates true

  app 'Moveslink2.app'

  uninstall login_item: 'Movelinks2'
end
