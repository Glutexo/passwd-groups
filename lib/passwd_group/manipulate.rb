require('tempfile')

module PasswdGroup
  # Manipulates the files contents.
  class Manipulate
    class << self
      # Removes matching lines from file, returns new file without those lines.
      def remove(file)
        tmpfile = Tempfile.new(file.name)
        file.each do |line|
          tmpfile << line unless yield line
        end
        tmpfile.seek(0)
        tmpfile
      end
    end

    # Initializes a manipulator of a given type. Default path can be overridden.
    def initialize(klass, path = nil)
      @class = klass
      @file = File.new(path || klass::PATH)
    end

    # Removes matching lines from the file. Arguments are passed to the specific matcher.
    def remove(*args)
      matcher = @class.match(*args)
      self.class.remove(@file, &matcher)
    end
  end
end
