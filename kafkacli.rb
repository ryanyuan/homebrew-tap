class Kafkacli < Formula
  include Language::Python::Virtualenv
    desc "Apache Kafka CLI utility tool."
    homepage "https://github.com/ryanyuan/kafkacli"
    url "https://github.com/ryanyuan/kafkacli/releases/download/0.0.7/kafkacli-0.0.7.tar.gz"
    sha256 "92d651225eaf498e2155c923a58f5e694b9c0f3a333de70e7749a01f9d838ad1"
    
    # depends_on "cmake" => :build
    depends_on "python@2"
  
    resource "kafka" do
      url "https://files.pythonhosted.org/packages/3b/1b/44605e699e0970a2be3d7135d185f95e8605399aa0f2a9d64de342eae4b7/kafka-1.3.5.tar.gz"
      sha256 "ffb3348cd918c31344b1a2eb61f692cbc423c83b1b06466a86de3db8a3f6a018"
    end

    def install
      # ENV.deparallelize  # if your formula fails when building in parallel
      # copies all files to bin so we can execute the files from other scripts
      virtualenv_install_with_resources
    end
  end
  