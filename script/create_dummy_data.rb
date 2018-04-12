require 'csv'
require 'pp'

CSV.foreach(ARGV[0], :quote_char => '"', :headers => true, encoding: "ISO8859-1") do |row|
  puts row[7].to_f
  dummy = DummyData.create(:student_number => row[0].strip,
                           :school_year => row[1].strip,
                           :school => row[2],
                           :grade => row[3],
                           :gender => row[4],
                           :race => row[5],
                           :frl => row[6],
                           :attendance => row[7].to_f / 100.0,
                           :reading => row[8],
                           :math => row[9])

  success = dummy.save

end

print 'Create dummy data complete'