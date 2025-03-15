module RequestSpecHelpers
  def authenticate_with_params(user)
    post session_path, params: { email_address: user.email_address, password: user.password }
  end
end
