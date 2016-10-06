require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  def setup
    @room = Room.new({room_id: 1002, building: "D.H.Hill Library", room_size: "Small - 4 chairs"})
  end

  test "should not save room without room_id" do
    room = Room.new
    assert_not room.save
  end

  test "should save room with room_id" do
    assert @room.save
  end

  test "should update room with room_id" do
    assert @room.update({room_id: 1002, building: "Hunt Library", room_size: "Small - 4 chairs"})
  end

  test "should destroy room with room_id" do
    assert @room.destroy
  end
end
