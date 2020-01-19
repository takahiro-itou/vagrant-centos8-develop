
module  DetectOS

    def  DetectOS.windows?
        Vagrant::Util::Platform.windows?
    end

    def  DetectOS.cygwin?
        Vagrant::Util::Platform.cygwin?
    end

end
