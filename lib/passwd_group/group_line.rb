require('passwd_group/colon_separated_line')

module PasswdGroup
  # One line of /etc/group file:
  # groupname:password:gid:members
  class GroupLine
    include(ColonSeparatedLine)

    GROUPNAME = 0

    # Fetches the username from the line.
    def groupname
      @data[GROUPNAME]
    end
  end
end