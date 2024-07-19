# 实验环境配置

## Linux 环境配置

以下两种方案任选其一：

### 方案一 虚拟机

1. 从[官网](https://releases.ubuntu.com/22.04/)下载[桌面版镜像](https://releases.ubuntu.com/22.04)
2. 下载虚拟机软件，[VMware Workstation Player](https://www.vmware.com/products/workstation-player/workstation-player-evaluation.html) 或者 [Virtual Box](https://www.virtualbox.org/wiki/Downloads)均可
3. 虚拟机软件的使用方法类似，下面以VMware为例。首先新建虚拟机，并选择下载的镜像文件
    ![](img/setup/vm/0.png)
    ![](img/setup/vm/1.png)
4. 有的软件可能会触发简易安装的功能，输入用户名和密码即可
    ![](img/setup/vm/2.png)
    如果使用其他软件没有触发此步也没关系，在后续的安装过程中会像下图一样要求你再次输入的
    ![](img/setup/vm/3.png)
5. 将虚拟机的路径修改到空余空间较大的盘上，并且为它分配 50GB 以上的空间。如果你打算将 Vivado 安装到虚拟机上（使用 mac 的同学必须这么选择），那么需要至少分配 100GB。等到空间不够再去扩容会比较麻烦，建议提前划分出足够的空间
    ![](img/setup/vm/4.png)
    ![](img/setup/vm/5.png)
6. 选择最小化安装，并在下一步中选择擦除整个磁盘安装
    ![](img/setup/vm/6.png)
    ![](img/setup/vm/7.png)
7. 安装成功后打开一个终端，执行命令 `xeyes`，效果如下：
    ![](img/setup/vm/8.png)

### 方案二 WSL

1. 首先直接在应用商店中搜索 ubuntu，安装蓝框选中的应用
    ![](img/setup/wsl/0.png)
2. 不出意外的话，第一次启动应该会报错 0x8007019e，如果没有直接到第 4 步
    - 如果是Windows 11的系统，可能会报错 0x800701bc，此时可以跳转到第 5 步，执行完后再回到这里

    ![](img/setup/wsl/1.png)

3. 以管理员身份打开 Power Shell，输入以下两组命令中的任一一组执行，完成后重启：
    ```
    dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
    dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
    :: Or
    Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
    ```

    ![](img/setup/wsl/2.png)

    ![](img/setup/wsl/3.png)

4. 启动WSL，可以看到成功进入 Linux 环境

    ![](img/setup/wsl/4.png)

    接着输入下面的命令，不出意外的话应该会报错 `Error: Can't open display:`。

    如果没报错弹出了一双小眼睛表明环境成功配置，忽略下面的步骤即可。

    ```shell
    sudo apt update
    sudo apt install x11-apps
    xeyes
    ```

5. 接下来配置 WSL 的图形化界面，为了方便起见，我们选择升级 WSL1 为 WSL2 的方式
    - 按顺序执行下面的指令，首先先检查下你的WSL的版本，如果是WSL1继续执行剩余命令；
    - 如果已经是WSL2了，越过第二条命令直接执行第三条命令即可，执行的过程中可能会报错要求你打开一个Windows的更新选项。

    ```
    wsl --list --verbose
    wsl --set-version Ubuntu-22.04 2
    wsl --update
    ```

    如果执行第二条指令遇到图中的错误，说明你需要进入BIOS中将处理器的虚拟化功能打开。
    
    请根据你正在使用的主板厂商自行检索如何进入BIOS，进入BIOS后AMD CPU找AMD Secure Virtual Machine (AMD SVM)选项开启，Intel CPU找Intel Virtualization Technology (Intel VT-x)选项开启。

    ![](img/setup/wsl/5.png)

6. 最终的效果应该是这样的：
    ![](img/setup/wsl/6.png)

## Vivado 安装

1. 从[官网](https://www.xilinx.com/support/download.html)下载Vivado ML Edition 2022.2
    - 如果系统空间不足，可以选择Windows Self Extracting Web Installer使用在线下载工具，下载过程需要保持联网
    - Linux下选择Linux Self Extracting Web Installer，下载后在终端输入`sh <download file name>.bin`，下载过程同样需要保持联网
    - 如果空间足够，选择最大的Xilinx Unified Installer，下载后进行解压，解压后双击xsetup.exe进行安装
    - Linux下在终端中执行`sh xsetup`。
2. 此处选择vivado
    ![](img/setup/vivado/0.png)
3. 此处选择standard
    ![](img/setup/vivado/1.png)
4. 此处修改为你的路径。
    ![](img/setup/vivado/2.png)
5. 安装完成，你可以直接从桌面的图标启动 vivado

我们后续的的实验主要使用命令行的方式，方式如下：

- Widows 在 CMD 中先加载 vivado 安装目录下的设置文件 settings64.bat，Linux下为 `source .../settings64.sh`
- 然后直接输入 vivado 即可

![](img/setup/vivado/3.png)

## 工具链配置

### verilator

verilator 用于将 Verilog/SystemVerilog 语言转换为 C++ 程序并模拟执行。

1. 安装 verilator 的依赖包

    ```shell
        sudo apt-get install git perl python3 make autoconf g++ flex bison ccache
        sudo apt-get install autoconf automake libtool
        sudo apt-get install help2man
    ```

2. 同步 verilator 仓库

    ```shell
        git submodule update --init repo/verilator
    ```

3. 执行 repo 下的 Makefile 脚本编译安装 verilator

    ```shell
        cd repo
        make verilator
    ```
    输出以下版本号即为安装成功
    ```shell
        verilator --version
        Verilator 5.021 devel rev v5.020-98-g365537d8e
    ```
>>> 请不要使用`sudo apt install verilator`来安装 verilator， 这个 verilator 版本过于老旧，无法满足实验需求

### co-simulation

处理器验证工作 morfuzz 提供的开源工具，用于自动化处理器差分测试，感兴趣的同学可以自行阅读论文 [MorFuzz: Fuzzing Processor via Runtime Instruction Morphing enhanced Synchronizable Co-simulation](https://www.usenix.org/conference/usenixsecurity23/presentation/xu-jinyan)

1. 安装 co-simulation 的依赖包

    ```shell
        apt-get install device-tree-compiler
    ```

2. 同步 riscv-isa-cosim 仓库

    ```shell
        git submodule update --init repo/riscv-isa-cosim
    ```

3. 执行 repo 下的 Makefile 脚本编译安装 co-simulation

    ```shell
        cd repo
        make ip_gen
    ```

安装成功后可以在 src/project 目录下看到 ip 文件夹，即为编译得到的 co-simulation 工具、头文件、链接库。

```
.
├── general
├── include
├── ip              # co-simulation
│   ├── bin         # 可执行程序
│   ├── include     # 头文件
│   └── lib         # 链接库
├── sim
├── submit
└── testcode
```

### 其他

直接 apt 安装即可
* riscv-toolchain：riscv编译工具链
* gtkwave：vcd 波形文件查看器
