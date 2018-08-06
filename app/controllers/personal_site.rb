require 'rack'
# PersonalSite
class PersonalSite
  def self.call(env)
    # Recall, this array includes the HTTP response status code,
    # HTTP response headers & HTTP body
    ['200', { 'Content-Type' => 'text/html' }, ['Welcome!']]
  end
end
