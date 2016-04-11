desc "Update"
task :update do
  system("rm -rf multiselect-src")

  system("git clone https://github.com/artyomkalm/multiselect.git multiselect-src")
  system("cp multiselect-src/img/switch.png app/assets/images/switch.png")
  system("cp multiselect-src/css/multiselect.css app/assets/stylesheets/multiselect.scss")
  system("cp multiselect-src/js/jquery.multiselect.js app/assets/javascripts/multiselect.js")

  fixes

  system("rm -rf multiselect-src")
end

def fixes
  replace_string_in_file("app/assets/stylesheets/multiselect.scss", "url('../img/switch.png')", "image-url('switch.png')")
end

def replace_string_in_file(file, find, replace)
  file_content = File.read(file)

  File.open(file, "w") do |f|
    f.puts file_content.gsub!(find, replace)
  end
end

desc "Build"
task "build" do
  system("gem build multiselect.gemspec")
end
