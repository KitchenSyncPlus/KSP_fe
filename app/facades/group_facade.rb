class GroupFacade

  def self.group_info

    info = GroupService.groups

    info.map do |i|
      Group.new(i)
    end
  end
end