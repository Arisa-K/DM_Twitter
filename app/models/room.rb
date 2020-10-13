class Room < ApplicationRecord
    belongs_to :send_user, class_name:'User'
    belongs_to :receive_user, class_name: 'User'
    has_many :messages
    belongs_to :pair_room, class_name: 'Room',foreign_key:'pair_room_id'
    has_one :pair_room_room, class_name:'Room', foreign_key: 'pair_room_id'
end
