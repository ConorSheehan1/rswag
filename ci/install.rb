# build and install each subgem
%w(rswag-ui rswag-api rswag-specs rswag).each do |gem|
  Dir.chdir("#{__dir__}/../#{gem}") do
    system("pwd")
    commands = [
      "gem build #{gem}.gemspec",
      "gem install #{gem}*.gem"
    ]
    commands.each do |command|
      puts(command)
      system(command)
    end
  end
end
