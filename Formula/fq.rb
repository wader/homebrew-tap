class Fq < Formula
    homepage 'https://github.com/wader/fq'
    version '0.0.0'

    head do
        url 'https://github.com/wader/fq.git'
        depends_on 'go' => ["1.16", :build]
    end

    def install
        if build.head?
            system 'make', 'build'
        end
        # bin.install 'fq'
    end

    test do
        system "#{bin}/fq", '--version'
    end
end