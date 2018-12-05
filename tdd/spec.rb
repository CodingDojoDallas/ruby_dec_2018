require_relative 'fixnum'

RSpec.describe Fixnum do
  it 'has a method prev that returns previous number of self' do
    expect(3.prev).to eq(2)
    expect(3.prev.prev).to eq(1)
  end
  it 'has a method skip that returns self + 2' do
    expect(3.skip).to eq(5)
    expect(3.skip.skip).to eq(7)
  end
  it 'has a method double that doubles self' do
    expect(3.double).to eq(6)
    expect(3.double.double).to eq(12)
  end
end
