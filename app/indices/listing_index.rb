ThinkingSphinx::Index.define :listing, :with => :active_record do
  indexes asset_name, :sortable => true 
end
