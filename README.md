# Ruby-shutdown
Ruby关机程序
def run_command(command)：定义一个方法，用于执行系统命令。这个方法使用Ruby的system函数来执行传入的命令。

def operating_system：定义一个方法，用于获取当前操作系统的类型。它使用RbConfig::CONFIG['host_os']来获取操作系统信息。

def shutdown：定义一个方法，用于执行关机命令。首先，它获取当前操作系统类型，并将其转换为小写字母。

if os.include?('linux') || os.include?('darwin')：如果操作系统是Linux或macOS，那么执行下面的语句块。

run_command('shutdown -h now')：调用run_command方法来执行关机命令。在Linux或macOS上，shutdown -h now命令用于立即关闭计算机。

elsif os.include?('mingw') || os.include?('mswin')：如果操作系统是Windows，那么执行下面的语句块。

run_command('shutdown /s /t 0')：调用run_command方法来执行关机命令。在Windows上，shutdown /s /t 0命令用于立即关闭计算机。

else：如果操作系统不是Linux、macOS或Windows，那么输出不支持的操作系统消息。

shutdown：调用shutdown方法来执行关机操作。
