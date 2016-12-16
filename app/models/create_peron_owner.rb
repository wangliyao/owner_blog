class CreatePeronOwner < ApplicationRecord
  self.table_name =:create_peron_owners
  before_create do
    self.id = UUIDTools::UUID.timestamp_create().to_s.delete "-"
  end

  after_create do
    TemplateJob.perform_later(22,"755210570@qq.com")
  end

end
