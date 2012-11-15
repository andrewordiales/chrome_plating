require File.join File.expand_path(File.dirname(__FILE__)), '..', 'lib', 'chrome_plating'
require File.join File.expand_path(File.dirname(__FILE__)), '..', 'lib', 'chrome_plating', 'mac_helper'

ChromePlating::MacHelper.new.install_chromedriver if ChromePlating.platform == 'darwin'