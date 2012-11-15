require 'rbconfig'
require 'fileutils'

module ChromePlating

  class << self

    def chromedriver_path
      bin_path = vendor_path

      case platform
        when 'linux' then
          bin_path = File.join linux64_path, 'chromedriver'
        when 'darwin' then
          bin_path = File.join mac_path, 'chromedriver'
      end

      bin_path
    end

    def mac_path
      File.join vendor_path, 'chromedriver', 'mac'
    end

    def linux64_path
      File.join vendor_path, 'chromedriver', 'linux64'
    end

    def vendor_path
      File.join base_path, 'vendor'
    end

    def base_path
      File.dirname(File.dirname(File.expand_path(__FILE__)))
    end

    def platform
      case RbConfig::CONFIG['host_os'].downcase
        when /linux/  then 'linux'
        when /darwin/ then 'darwin'
        else 'unsupported'
      end
    end

  end

end