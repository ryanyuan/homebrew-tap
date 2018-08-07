class Hellomars < Formula
    include Language::Python::Virtualenv

    desc "Shiny new formula"
    homepage "https://github.com/ryanyuan/hellomars"
    url "https://files.pythonhosted.org/packages/dd/af/ce79c823887114124e06ffb19ce8e807048aaf5665f61786524e90bfe643/hellomars-1.0.0.tar.gz"
    sha256 "bac892a9c0be42a333019d4c61b3e2881930b9544f880dc91df45ee21a379a29"
    
    depends_on "python"

    def install
        virtualenv_install_with_resources
    end

    test do
        false
    end
end