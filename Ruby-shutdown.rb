# 使用 Ruby 的系统调用方法执行命令
def run_command(command)
  system(command)
end

# 检查当前操作系统类型
def operating_system
  RbConfig::CONFIG['host_os']
end

# 根据操作系统类型执行关机命令
def shutdown
  os = operating_system.downcase

  if os.include?('linux') || os.include?('darwin')
    run_command('shutdown -h now') # 在 Linux 或 macOS 上执行关机命令
  elsif os.include?('mingw') || os.include?('mswin')
    run_command('shutdown /s /t 0') # 在 Windows 上执行关机命令
  else
    puts 'Unsupported operating system.'
  end
end

# 调用关机方法
shutdown
