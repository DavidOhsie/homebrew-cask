cask 'abstract' do
  version '74.0.1'
  sha256 '9e78f9b5b9ec7c10d316fc07ecb319d25c852c5e194213cfec091fd8db896909'

  # s3.amazonaws.com/propeller-internal-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/propeller-internal-releases/Abstract-#{version}.dmg"
  name 'Abstract'
  homepage 'https://www.goabstract.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Abstract.app'

  zap trash: [
               '~/Library/Application Support/Abstract',
               '~/Library/Caches/com.elasticprojects.abstract-desktop',
               '~/Library/Caches/com.elasticprojects.abstract-desktop.ShipIt',
               '~/Library/Preferences/com.elasticprojects.abstract-desktop.helper.plist',
               '~/Library/Preferences/com.elasticprojects.abstract-desktop.plist',
               '~/Library/Saved Application State/com.elasticprojects.abstract-desktop.savedState',
             ]
end
