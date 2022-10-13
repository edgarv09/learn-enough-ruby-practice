# learn-enough-ruby-practice
Exercise from Learn Enoug Ruby and practice fundamentals

docker build . -t ruby-practice -f ./Dockerfile
docker run -it -v $PWD:/opt/apps/ruby-practice ruby-practice

remember to install dependencies
brew install openssl libffi zlib readline ruby-build

To install ruby 3 on M1 chips
try at first
RUBY_CFLAGS="-w" asdf install ruby 2.7

if cflag doesnt work
RUBY_CFLAGS="-w" CFLAGS="-Wno-error=implicit-function-declaration" RUBY_CONFIGURE_OPTS='--with-readline-dir=/usr/local/opt/readline/' asdf install ruby 2.7

in case error due capstone try
export LDFLAGS="-L/opt/homebrew/opt/capstone/lib"
export CPPFLAGS="-I/opt/homebrew/opt/capstone/include"
RUBY_CFLAGS="-w" CFLAGS="-Wno-error=implicit-function-declaration" RUBY_CONFIGURE_OPTS='--with-readline-dir=/usr/local/opt/readline/' asdf install ruby latest
