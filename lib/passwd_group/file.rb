module PasswdGroup
  # Wraps an actual filesystem File to simplify its interface.
  class File
    include Enumerable

    # Initializes a new file wrapper.
    def initialize(path)
      @path = path
    end

    # Returns file’s basename.
    def name
      ::File.basename(@path)
    end

    # Iterates over the file’s lines.
    def each
      ::File.open(@path) do |file|
        file.each_line do |line|
          yield line
        end
      end
      nil
    end
  end
end
