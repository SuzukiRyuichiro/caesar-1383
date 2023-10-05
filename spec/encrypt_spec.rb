require_relative '../encrypt'

describe '#encrypt' do
  it 'returns an empty string if empty string is given' do
    expected = ''
    actual = encrypt('')

    # actual == expected
    expect(actual).to eq(expected)
  end

  it 'returns a three letter shifted sentence' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end
end
