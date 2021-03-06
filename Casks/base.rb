cask 'base' do
  version '2.4.12'
  sha256 '6b9ab469a04c647156d972109ff80dbb9c60d484654284e1c8f0319b7bbcced3'

  url "https://files.menial.co.uk/base/base_#{version}.zip"
  appcast 'https://update.menial.co.uk/software/base/',
          checkpoint: 'fdc1f898970f2bc310c2a377a9e2cfb90aba9cdb48116974e3113d9623d571a8'
  name 'Menial Base'
  homepage 'https://menial.co.uk/base/'

  app 'Base.app'

  zap delete: [
                '~/Library/Application Support/Base',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/uk.co.menial.base.sfl*',
                '~/Library/Caches/com.apple.helpd/Generated/uk.co.menial.base.help*',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/uk.co.menial.base.help*',
                '~/Library/Caches/uk.co.menial.Base',
                '~/Library/Preferences/uk.co.menial.Base.plist',
              ]
end
