# Public: Install grep from homebrew.
#
# Examples
#
#   include grep
class grep {
  homebrew::tap { 'homebrew/dupes': } ->
    package { 'grep':
      ensure          => present,
      install_options => [
        '--default-names'
      ]
    }
}
