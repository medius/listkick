class UserSession < Authlogic::Session::Base
  # To fix the Authlogic problem with Rails 3
  def to_key
      new_record? ? nil : [ self.send(self.class.primary_key) ]
  end
end