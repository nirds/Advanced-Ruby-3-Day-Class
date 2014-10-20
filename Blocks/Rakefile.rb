desc "prints student names and creates class dir with a directory for each student"
task :default => [:show_names, :create_student_dirs]

desc "prints student names"
task :show_names do
 open_file_and_get_lines do |line|
    puts line
  end
end

desc "creates a directory called class"
task :create_class_dir do
  Dir.mkdir('class') unless Dir.exists? 'class'
end

desc "creates a directory for each student in the names file"
task :create_student_dirs => [:create_class_dir] do
  open_file_and_get_lines do |line|
    dir = "class/#{line}"
    Dir.mkdir(dir) unless Dir.exists? dir
  end
end

desc "removes all the student directories in class and the class dir"
task :clean_up => [:create_student_dirs] do
  open_file_and_get_lines do |line|
    dir = "class/#{line}"
    Dir.rmdir(dir) if Dir.exists? dir
  end
  Dir.rmdir 'class'
end

def open_file_and_get_lines file_name = "names"
  File.open(file_name) do |f|
    f.each do |line|
      yield line.chomp
    end
  end
end