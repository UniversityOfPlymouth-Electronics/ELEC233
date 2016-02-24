-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/15/2012 11:24:03"
                                                            
-- Vhdl Test Bench template for design  :  myxor
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
use ieee.numeric_std.all;

ENTITY myxor_vhd_tst IS
END myxor_vhd_tst;


ARCHITECTURE myxor_arch OF myxor_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL y : STD_LOGIC;

COMPONENT myxor
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	y : OUT STD_LOGIC
	);
END COMPONENT;

BEGIN
	i1 : myxor
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	y => y
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;    
                                       
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations
variable count : unsigned(1 downto 0) := "00";
                                     
BEGIN                                                         
        -- code executes for every event on sensitivity list  
        a <= count(1); b <= count(0); wait for 20 ns;
        count := count + 1;
              
        a <= count(1); b <= count(0); wait for 20 ns;
        count := count + 1;
        
        a <= count(1); b <= count(0); wait for 20 ns;
        count := count + 1;
        
        a <= count(1); b <= count(0); wait for 20 ns;
        count := count + 1;    

--Now the efficient way!

		 count := "00";
		 for i in 0 to 3 loop
		 
			a <= count(1); 
			b <= count(0); 
			count := count + 1;
			wait for 20 ns;
		 
		 end loop;
WAIT;                                                        
END PROCESS always;                                          
END myxor_arch;
