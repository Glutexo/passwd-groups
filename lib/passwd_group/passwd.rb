require('passwd_group/passwd_line')

module PasswdGroup
  # /etc/passwd file wrapper
  class Passwd
    PATH = '/etc/passwd'.freeze

    class << self
      # Finds a line of a given user by his username.
      def match(username)
        proc do |raw|
          obj = PasswdLine.new(raw)
          obj.username == username
        end
      end
    end
  end
end