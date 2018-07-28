require 'csv'
class CsvProgram
  def read_csv
    read_file = CSV.parse(File.read('/home/rails/unupdated_file.csv'))
    multiply_value = []
    CSV.foreach('/home/rails/unupdated_file.csv', converters: :numeric) { |row| multiply_value << row[0] * row[1] }
    read_file.each { |pro| pro << multiple.shift }
    CSV.open('/home/rails/unupdated_file.csv', 'w') do |csv_object|
      read_file.each do |row_arrray|
        csv_object << row_arrray
      end
    end
    print read_file
  end
end

csv_program = CsvProgram.new
csv_program.read_csv
