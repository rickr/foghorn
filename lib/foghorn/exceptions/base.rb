class Foghorn::Exceptions::Base
  def self.phrases
    phrase_path = File.join(File.dirname(__FILE__), '..', 'inc', 'phrases.txt')
    File.readlines(phrase_path).map{|line| line.rstrip}
  end

  def self.phrase
    self.phrases.sample
  end
end
