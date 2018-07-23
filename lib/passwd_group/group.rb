require('passwd_group/group_line')

module PasswdGroup
  # /etc/group file wrapper
  class Group
    PATH = '/etc/group'.freeze

    class << self
      # Finds a line of a given group by its groupname.
      def match(groupname)
        proc do |raw|
          obj = GroupLine.new(raw)
          obj.groupname == groupname
        end
      end
    end
  end
end