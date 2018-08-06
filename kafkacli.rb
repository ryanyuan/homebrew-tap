class Kafkacli < Formula
  include Language::Python::Virtualenv
    desc "Apache Kafka CLI utility tool."
    homepage "https://github.com/ryanyuan/kafkacli"
    url "https://github.com/ryanyuan/kafkacli/releases/download/0.0.5/kafkacli-0.0.5.tar.gz"
    sha256 "9a3379c9e61d5a592032dbd19c8151cf11f525a823e5ddd0515d29d10a1a6b08"
    
    # depends_on "cmake" => :build
    depends_on "python@2"
  
    def install
      # ENV.deparallelize  # if your formula fails when building in parallel
      # copies all files to bin so we can execute the files from other scripts
      virtualenv_install_with_resources
    end
  end
  