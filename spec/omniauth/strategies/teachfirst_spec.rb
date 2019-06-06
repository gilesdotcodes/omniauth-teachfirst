RSpec.describe OmniAuth::Strategies::TeachFirst do
  subject do
    OmniAuth::Strategies::TeachFirst.new({})
  end

  it "has a version number" do
    expect(OmniAuth::TeachFirst::VERSION).not_to be nil
  end

  context 'general' do
    it "should be called teachfirst" do
      expect(subject.options.name).to eq('teachfirst')
    end
  end
end
