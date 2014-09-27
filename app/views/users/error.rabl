object false
child(@user) do
  attributes :first_name, :last_name, :email
  node :errors do |user|
    user.errors.full_messages
  end
end

node(:errors) { "true" }