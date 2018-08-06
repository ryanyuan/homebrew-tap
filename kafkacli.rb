class Kafkacli < Formula
  include Language::Python::Virtualenv
    desc "Apache Kafka CLI utility tool."
    homepage "https://github.com/ryanyuan/kafkacli"
    url "https://github.com/ryanyuan/kafkacli/releases/download/0.0.6/kafkacli-0.0.6.tar.gz"
    sha256 "8b56589423325fe9bc208ee8d4578f8751a2cc7b42293d3c25d95e7ce24f2992"
    
    # depends_on "cmake" => :build
    depends_on "python@2"
  
    def install
      # ENV.deparallelize  # if your formula fails when building in parallel
      # copies all files to bin so we can execute the files from other scripts
      virtualenv_install_with_resources
    end
  end
  