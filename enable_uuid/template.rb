copy_file "enable_uuid/db/migrate/00000000000000_enable_uuid.rb", "db/migrate/00000000000000_enable_uuid.rb"
copy_file "enable_uuid/config/initializers/generators.rb", "config/initializers/generators.rb"
insert_into_file "app/models/application_record.rb",
                 "\nself.implicit_order_column = :created_at'\n",
                 after: "self.abstract_class = true"