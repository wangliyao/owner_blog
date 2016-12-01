class OtherInformation < ApplicationRecord
  self.table_name = :other_informations
  before_create do
    self.id = UUIDTools::UUID.timestamp_create().to_s.delete "-"
  end
end
