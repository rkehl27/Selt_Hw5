class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 R)
  end

#  def self.api_key
#    'f4702b08c0ac6ea5b51425788bb26562'
#  end

#  def self.find_in_tmdb(string)
#    Tmdb.api_key = self.api_key 
#    begin
#      TmdbMovie.find(:title => string)
#    rescue ArgumentError => tmdb_error
#      raise Movie::InvalidKeyError, tmdb_error.message
#    end
#  end
end
