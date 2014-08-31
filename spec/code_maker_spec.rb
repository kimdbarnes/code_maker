require 'code_maker'

describe CodeMaker do
  it 'should be' do
    expect(CodeMaker.new).to be
  end

  it 'should allow me to set the code for testing' do
    expect(CodeMaker.new('rrrr').code).to eq 'rrrr'
  end

  it 'should have a code of 4 colors' do
    code = CodeMaker.new.code

    expect(code.is_a?(String)).to eq(true)
    expect(code.length).to eq(4)
  end
end