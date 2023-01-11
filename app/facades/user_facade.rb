class UserFacade

  def self.all_users
    @users = DatabaseService.all_users
    @users[:data].map do |user|
      User.new(user)
    end

  end

  def self.service 
    DatabaseService.new
  end
end