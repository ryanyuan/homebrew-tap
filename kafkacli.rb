class Kafkacli < Formula
    desc "Apache Kafka CLI utility tool."
    homepage "https://github.com/ryanyuan/kafkacli"
    url "https://github.com/ryanyuan/kafkacli/releases/download/0.0.4/kafkacli-0.0.4.zip"
    sha256 "2d8c6bd50132181b544580c8d37b2d84727166decc47be18f34f5be0e00464c6"
    
    # depends_on "cmake" => :build
    depends_on "python@2"
  
    def install
      # ENV.deparallelize  # if your formula fails when building in parallel
      # copies all files to bin so we can execute the files from other scripts
      bin.install 'kafkacli'
      (bin + 'kafkacli').chmod 0755
    end
  end
  