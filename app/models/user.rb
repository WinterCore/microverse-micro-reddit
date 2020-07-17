class User < ApplicationRecord
  devise :database_authenticatable, :timeoutable
end
