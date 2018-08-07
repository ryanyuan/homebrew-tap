class Hellomars < Formula
    include Language::Python::Virtualenv

    desc "Shiny new formula"
    homepage "https://github.com/ryanyuan/hellomars"
    url "https://files.pythonhosted.org/packages/21/d4/e4c3a9bc75e1275f37c49b811bcb56d1be3b51fe9ef930b033934d37fcba/hellomars-0.0.1.tar.gz"
    sha256 "595a8405646cce41ddc01ff6955dffb4ddb90bf7f168fb31f5c1a16b67f23070"

    depends_on "python"

    def install
        virtualenv_install_with_resources
    end

    test do
        false
    end
end