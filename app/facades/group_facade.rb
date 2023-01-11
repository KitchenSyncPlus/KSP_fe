class GroupFacade

  def self.all_groups

    info = DatabaseService.groups

    info[:data].map do |i|
      Group.new(i)
    end
  end
end