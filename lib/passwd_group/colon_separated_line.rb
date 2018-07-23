module PasswdGroup
  # One line of a colon separated file:
  # first_field:second_field:third_field…
  module ColonSeparatedLine
    # Builds an object from the raw text format
    def initialize(raw)
      @data = raw.split(':')
    end
  end
end