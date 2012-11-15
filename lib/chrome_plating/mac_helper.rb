module ChromePlating

  class MacHelper

    CHROMEDRIVER_DOWNLOAD_LINK_MAC = 'http://chromedriver.googlecode.com/files/chromedriver_mac_23.0.1240.0.zip'

    def install_chromedriver
      download_path = ChromePlating.mac_path
      zip_name = File.join download_path, 'chromedriver.zip'

      system "curl -C - --create-dirs -o #{zip_name} #{CHROMEDRIVER_DOWNLOAD_LINK_MAC}"
      system "unzip -o #{zip_name} -d #{download_path}"
      system "rm #{zip_name}"

      send_ok if File.exists? File.join(download_path, 'chromedriver')
    end

    def send_ok
      File.open("Makefile", "w") do |file|
        file.print "all:\n\t@echo ok\ninstall:\n\t@echo ok"
      end
    end

  end
end