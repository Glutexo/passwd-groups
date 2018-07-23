require('passwd_group/colon_separated_line')

module PasswdGroup
  # One line of /etc/passwd file:
  # username:password:uid:gid:comment:homedir:shell
  class PasswdLine
    include(ColonSeparatedLine)

    GROUPNAME = 0

    # Fetches the username from the line.
    def username
      @data[GROUPNAME]
    end
  end
end