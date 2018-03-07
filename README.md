# thrift-swift-nio-test
Test Thrift Server made with Apple Swift-Nio

Developed with ThriftSwiftNio (https://github.com/JacopoMangiavacchi/thrift-swift-nio)

# Instructions
    brew install thrift

    git clone https://github.com/apocolipse/thrift.git
    cd thrift
    PATH="/usr/local/opt/bison/bin:$PATH" ./bootstrap.sh
    PATH="/usr/local/opt/bison/bin:$PATH" ./configure --disable-debug --prefix=/usr/local/Cellar/thrift/mine --libdir=/usr/local/Cellar/thrift/mine/lib --without-ruby --disable-tests --without-php_extension --without-python --without-haskell --without-java --without-perl --without-php --without-erlang --without-boost
    PATH="/usr/local/opt/bison/bin:$PATH" make && make install

    /usr/local/Cellar/thrift/mine/bin/thrift --gen swift Test.thrift

    
