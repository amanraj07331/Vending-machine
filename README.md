#Vending-Machine

This project is a simulation of a vending machine that dispenses a single product implemented using Verilog. The vending machine is able to accept coins, dispense the product and return the change. The implementation is done using this single source code file vending_machine.v .

##Requirements

Verilog compiler and simulator (e.g., Icarus Verilog)
Text editor with Verilog syntax highlighting (e.g., VS Code)
Waveform viewer (e.g., GTKWave)
##Usage

Open the vending_machine.v and vending_machine_tb.v files in your text editor.

Compile the Verilog code using your preferred Verilog compiler. For example, you can use the following command in the terminal:
$ iverilog -o vending_machine_tb.vvp vending_machine_tb.v vending_machine.v
This will create an output file vending_machine_tb.vvp.

Simulate the compiled code using your preferred Verilog simulator. For example, you can use the following command in the terminal:
$ vvp vending_machine_tb.vvp
This will run the simulation and create an output file vending_machine_tb.vcd.

Open the vending_machine_tb.vcd file in a waveform viewer. For example, you can use GTKWave by running the following command in the terminal:
$ gtkwave vending_machine_tb.vcd
This will open the GTKWave GUI, where you can observe the simulation results.

Observe the simulation results to verify the functionality of the vending machine.

##Testbench

The vending_machine_tb.v file contains the testbench for the vending machine. The testbench simulates the functionality of the vending machine by inserting coins, dispensing the product and returning the change, and verifies that the change is returned if the user doesnot insert enough money.

Observing the Signal
After running the simulation and opening the waveform viewer, you can observe the signals for each module to verify the functionality of the vending machine.
