require 'spec_helper'
require 'rails_helper'

describe Movie do
  describe 'searching TMDb by keyword' do
    it 'should call TMDb with title keywords given valid API key' do
      expect(Movie).to receive(:find).with(hash_including :title => 'Inception')
    end
    it 'should raise an InvalidKeyError with no API key' do
      Movie.stub(:api_key).and_return('')
      lambda {Movie.find_in_tmdb('Inception') }.should raise_error(Movie::InvalidKeyError)
    end
  end
end
