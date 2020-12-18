# == Schema Information
#
# Table name: importers
#
#  id                 :integer         not null, primary key
#  entity_id          :integer
#  file_size    :integer
#  file_name    :string(255)
#  content_type :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#

class Importer < ActiveRecord::Base
  belongs_to :entity, polymorphic: true

  # We want to store importers in separate directories based on entity type
  # (i.e. /importers/Campaign/, /importers/Lead/, etc.), so we are adding :entity_type
  # interpolation to the Paperclip::Interpolations module.  Also, Paperclip
  # doesn't seem to care preserving styles hash so we must use STYLES.dup.
  #----------------------------------------------------------------------------
  Paperclip::Interpolations.module_eval do
    def entity_type(attachment)
      attachment.instance.entity_type
    end
  end
  has_attached_file :file, url: "/importers/:entity_type/:id/:filename"
  validates_attachment :file, presence: true,
                       content_type:
                           {
                               content_type: %w(application/vnd.ms-excel application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
                           }

  ActiveSupport.run_load_hooks(:fat_free_crm_importer, self)
end
