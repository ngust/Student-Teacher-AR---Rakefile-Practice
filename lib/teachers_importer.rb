class TeachersImporter

  # def initialize(filename=File.absolute_path('db/data/students.csv'))
  #   @filename = filename
  # end

   def import
  #   field_names = ['first_name', 'last_name', 'gender', 'birthday', 'email', 'phone']
  #   puts "Importing students from '#{@filename}'"
  #   failure_count = 0
    # Student.transaction do
    #   File.open(@filename).each do |line|
    #     data = line.chomp.split(',')
    #     attribute_hash = Hash[field_names.zip(data)]
    #     begin
    #       Student.create!(attribute_hash)
    #       print '.'
    #     rescue ActiveRecord::UnknownAttributeError
    #       failure_count += 1
    #       print '!'
    #     ensure
    #       STDOUT.flush
    #     end
    #   end
    # end

    Teacher.create(name: "Don Burks", email: 'don@lighthouse.ca', phone: '555-555-5555', address: '12 West Hastings Ave')
    Teacher.create(name: "Snoop Dogg", email: 'snoop@example.com', phone: '555-555-5555', address: '12 West Hastings Ave')
    Teacher.create(name: "Dr Dre", email: 'drdre@example.com', phone: '555-555-5555', address: '12 West Hastings Ave')
    Teacher.create(name: "Eazy E", email: 'Easy@example.com', phone: '555-555-5555', address: '12 West Hastings Ave')
    Teacher.create(name: "Nate Dog", email: 'NateD@example.com', phone: '555-555-5555', address: '12 West Hastings Ave')
    Teacher.create(name: "Ice Cube", email: 'IceC@example.com', phone: '555-555-5555', address: '12 West Hastings Ave')
    Teacher.create(name: "Drake", email: 'Drake@example.com', phone: '555-555-5555', address: '12 West Hastings Ave')
    Teacher.create(name: "MC Hammer", email: 'hammerTime@example.com', phone: '555-555-5555', address: '12 West Hastings Ave')
    Teacher.create(name: "Eminem", email: 'mm@example.com', phone: '555-555-5555', address: '12 West Hastings Ave')
  end

    # failures = failure_count > 0 ? "(failed to create #{failure_count} student records)" : ''
    # puts "\nDONE #{failures}\n\n"
  #end

end
