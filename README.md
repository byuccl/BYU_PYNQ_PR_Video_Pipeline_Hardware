# BYU_Pynq_PR_Video_Pipeline_Hardware
This is repo has scripts to build Vivado _Hardware_ for [BYU Pynq PR Video Pipeline](https://github.com/byuccl/BYU_PYNQ_PR_Video_Pipeline) _Software_ repo. Note, that build process is time-consuming and takes many hours. Prebuilt `*.bit` files are already included in _Software_ repo.
The original design was built for Pynq-z1, but it was also verified for Pynq-z2.


## Setup and Build Instructions

<a id="Step2"></a>

1. **Build IP Cores.** <br>
Firstly navigate to `/Pynq-Z1/video` directory and build the IP cores using `source build_base_ip.tcl`. **Vivado HLS Note:** after 2022 Vivado HLS (required for building IPs) will not work without a fix described in this article: [Number Overflow Issue Y2K22](https://adaptivesupport.amd.com/s/article/76960?language=en_US).


<a id="Step2"></a>

2. **Generate and Synthesize Vivado Project.** <br>
Run `source video.tcl`. This step will:

    1. Generate Vivado project [Block Design Diagram](doc/system.bd.pdf):<img src="doc\system.bd.png">

    2. This Block Design has a [Video](doc/system.bd.video.pdf) submodule with black-box placeholders (undefined contents) for Partial Reconfiguration (PR) modules, i.e. HLS_PR_WRAPPER_[0-9] and HLS_Merger_0:<img src="doc\system.bd.video.png"> Overall it has 11 different partial reconfigurable regions that are connected to AXI-Stream switch.


    3. `bare_top.v` is set as top module with `constrains/top.xdc` constrains file.

    4. Note, that this step only synthesizes Vivado project, but does not perfrom implementation/bitstream generation (which are done later in [Step 3.7](#Step3.7)).

    5. Finally, it writes a checkpoint: `write_checkpoint -force ../../drp/Static/top.dcp`


<a id="Step3"></a>

3. **Build a static Vivado Design.** <br>
Navigate to `/drp` directory and build a static design running `source build_static_design.tcl`. This step does the following:

    1. Runs **Vivado implementation**. Generated checkpoint is stored using `write_checkpoint -force Implement/pass_route_design.dcp`)

    2. Generates **Vivavdo Bitstream**, which is stored  using `write_bitstream -file Bitstreams/video.bit -force`

    <a id="Step3.3"></a>

    3. **Generates partially synthesized designs** for HLS_PR_WRAPPER_[0-9] and HLS_Merger_0 (storing *.dcp filfes into `/drp/Synth` folder).

    4. **Generates combined (static + PR) design**. Firstly we read the `/Static/top.dcp` checkpoint from [Step 2](#Step2) and partially synthesized designs from [Step 3.3](#Step3.3). PR designs are marked as reconfigurable (`set_property HD.RECONFIGURABLE 1`). A combined design (which now includes the static design and the marked reconfigurable regions) is saved into a checkpoint using `write_checkpoint -force ./Checkpoint/pr_block_design.dcp` command.

    5. **Defines Pblocks (Physical Partitions) for Reconfigurable Modules**. Define regions on the FPGA fabric where reconfigurable modules can be placed with `create_pblock <name>`. Set specific SLICE XY coordinates to place each PBlock.

6. Reads constraints (`Const/top.xdc` and `Const/1080p.xdc`).

<a id="Step3.7"></a>

    7. Performs Vivado Design Implementation (Place&Route), storing implementation checkpoint  (`write_checkpoint -force Implement/pass_route_design.dcp`). Generates output bitstream file (`write_bitstream -file Bitstreams/video.bit -force`) and stores the overall static design checkpoint (`write_checkpoint -force Checkpoint/static_route_design.dcp`)


<a id="Step4"></a>

4. **Build Partial Ceconfiguration (PR) Vivado  Design modules.** <br>
Navigate to `/drp` directory and build PR modules running `source build_prs.tcl`. This step generates 16 PR modules (15 Filters and one switch/mux). Depending on the module size (small\mid\large) a corresponding TCL script is used to build one of the filters:
- ASCII text overlay
- Dilate
- Emboss
- Erode
- Grayscale
- Green Screen
- Image Overlay
- Invert
- Japanese Hiragana text overlay
- Custom 3x3 Kernel
- Line overlay
- Mirror
- RGB filter
- Sobel
- Threshold
