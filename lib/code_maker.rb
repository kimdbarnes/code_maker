class CodeMaker
  attr_reader :code

  def initialize(code = nil)
    @code = code || generate_code
  end

  private

  def generate_code
    'rgby'
  end
end