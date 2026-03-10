# RAM-DESIGN

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: PICHHIKA SARVANI

*INTERN ID*: CTIS6955

*DOMAIN*: VLSI

*DURATION*: 4 WEEKS

*MENTOR*: NEELA SANTHOSH KUMAR

## DESCRIPTION OF TASK

The task performed in this project involves the design and implementation of a simple Synchronous Random Access Memory (RAM) module using Verilog Hardware Description Language (HDL). RAM is a fundamental component in digital systems and computer architecture, used for temporary data storage and quick access to information during program execution. The main objective of this task is to understand how memory elements operate in digital systems and to implement a basic RAM structure using Verilog, followed by verification through simulation.

In this project, a 16 × 8 synchronous RAM is designed. This means the memory contains 16 memory locations, and each location can store 8 bits of data. The RAM module consists of several important signals, including a clock signal (clk), a write enable signal (we), an address input (addr), a data input (data_in), and a data output (data_out). The address input determines which memory location is accessed, while the data input and output are used for writing and reading data respectively.

The RAM operates in a synchronous manner, meaning all operations occur in synchronization with the positive edge of the clock signal. The write enable signal controls whether the RAM performs a write operation or a read operation. When the write enable signal is high (we = 1), the RAM performs a write operation. During this operation, the data present on the data_in input is stored in the memory location specified by the address input. When the write enable signal is low (we = 0), the RAM performs a read operation. In this case, the data stored at the specified memory address is retrieved and provided at the data_out output.

The RAM module is implemented in Verilog using a memory array declaration, which represents the internal storage locations. The behavior of the RAM is defined using an always block triggered by the positive edge of the clock signal. Inside this block, conditional statements are used to determine whether the operation should be a read or write depending on the value of the write enable signal. This structure accurately models the behavior of synchronous memory used in many digital systems and FPGA designs.

After implementing the RAM module, a testbench is created to verify the functionality of the design. The testbench is responsible for generating the clock signal and providing different input values to simulate both write and read operations. Initially, the testbench writes data into several memory locations by setting the write enable signal to high and providing specific addresses and input data values. After writing the data, the write enable signal is set to low to perform read operations from the same addresses. The output data is then observed to confirm that the stored data is correctly retrieved from memory.

During simulation, display statements are used to show the current time, write enable status, memory address, input data, output data, and the type of operation being performed. This helps in clearly demonstrating the functionality of the RAM module and verifying that both read and write operations work as expected.

The simulation is carried out using the Vivado simulation tool, which allows the observation of signal changes through waveforms and console outputs. The waveform confirms that the RAM correctly stores data during write operations and retrieves the same data during read operations.

Overall, this task demonstrates the design and verification of a synchronous RAM module using Verilog. It provides practical experience in modeling memory structures in hardware description languages and understanding how data storage and retrieval are implemented in digital systems. The successful simulation confirms that the RAM module operates correctly according to the design specifications.

## OUTPUT

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/a6955336-e1d4-418f-ae77-e497b99893a6" />
