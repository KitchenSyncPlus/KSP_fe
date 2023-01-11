class GroupFacade

  def self.all_groups

    info = DatabaseService.groups

    info[:data].map do |i|
      Group.new(i)
    end
  end

  def self.group(id)
    @group = DatabaseService.group(id)[:data]
    
    Group.new(@group)
  end
end