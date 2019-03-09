class PopulateSectypes < ActiveRecord::Migration[5.2]
  def change
    execute "INSERT INTO sectypes (name) VALUES ('Header'),('Contact Info'),('Summary'),('Skills'),('Projects'),('Professional'),('Education'),('Volunteer'),('Interests'),('Other'),('Empty');"
  end
end
