# brew tap ryanyuan/homebrew-tap
# brew install kafkacli

class Kafkacli < Formula
    desc "Apache Kafka CLI utility tool."
    homepage "https://github.com/ryanyuan/kafkacli"
    url "https://github.com/ryanyuan/kafkacli/releases/download/0.0.4/kafkacli-0.0.4.zip"
    sha256 "168562fe1783935b07eb2793e142879ec7e4b295deaa223e1f3afb1d3217a1bc"
    
    # depends_on "cmake" => :build
    depends_on "python@2"
  
    def install
      # ENV.deparallelize  # if your formula fails when building in parallel
      # copies all files to bin so we can execute the files from other scripts
      bin.install '__init__.py'
      bin.install '__main__.py'
      bin.install 'util.py'
      (bin + '__init__.py').chmod 0755
      (bin + '__main__.py').chmod 0755
      (bin + 'util.py').chmod 0755
    end
  end
  