# frozen_string_literal: true

cask 'freefilesync' do
  version '12.2'
  sha256 '777472f81f992c3f2e1abf4ac9c8ada04221cf55167d927a4e4595fe1f9e9042'

  url "https://www.freefilesync.org/download/FreeFileSync_#{version}_macOS.zip"
  name 'FreeFileSync'
  desc 'Folder comparison and synchronization software'
  homepage 'https://www.freefilesync.org/'

  auto_updates true
    
  pkg "FreeFileSync_#{version}.pkg"
end



