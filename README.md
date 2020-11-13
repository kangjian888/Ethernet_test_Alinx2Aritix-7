## Ethernet Test Demo Transplant
### The source of this project
The original of this project is from Alinx (黑金)， the experiment demo "G Ethernet Test" (千兆以太网传输实验). 
### The motivation of this project
Transplant it to Artix-7 developing board. The original project is for GMII interface. I build a GMII to RGMII bridge in the project so Aritix-7 developing board can be used directly. The time and io constraint is also added in the project. 
### Software version
The project can be opened into Vivado2019.2 directly. 
Or you can add the source and constraint files in an empty project created by any version Vivado or ISE. But you need to add FIFO and Block ram IP by yourself. So you still need to use Vivado 2019.2 to open the original project and see the settings of the used IP core.
### Contact
If you have other questions, please feel free to contact with me through jkangac@connect.ust.hk