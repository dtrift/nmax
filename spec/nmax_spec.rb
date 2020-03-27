RSpec.describe Nmax do
  it "has a version number" do
    expect(Nmax::VERSION).not_to be nil
  end

  context '.parse return' do
    let(:data) { (0..10).map { |x| (x * 10).to_s } }

    before { allow(STDIN).to receive(:each_line).and_return(data) }

    it 'correct count' do
      expect(Nmax.parse([2]).size).to eq(2)
    end
  end
end
