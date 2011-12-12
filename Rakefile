desc 'Default: run unit tests.'
task :default => :test

def run(*cmd)
  system(*cmd)
  raise "Command #{cmd.inspect} failed!" unless $?.success?
end

desc 'Run the unit tests.'
task :test do
  run "turn test/test_*.rb"
end
