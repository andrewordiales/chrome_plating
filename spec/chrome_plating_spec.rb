require 'spec_helper'

describe ChromePlating do

  describe '#platform' do

    it 'returns unsupported on non Mac or Linux OS' do
      RbConfig::CONFIG.stub!(:[]).with('host_os').and_return("something")
      ChromePlating.platform.should == 'unsupported'
    end

    it 'returns linux when host OS is linux' do
      RbConfig::CONFIG.stub!(:[]).with('host_os').and_return("linux")
      ChromePlating.platform.should == 'linux'
    end

  end

end