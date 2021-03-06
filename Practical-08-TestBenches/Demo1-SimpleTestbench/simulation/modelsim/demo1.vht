-- Copyright (C) 1991-2014 Altera Corporation
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
-- Generated on "12/01/2014 06:43:18"
                                                            
-- Vhdl Test Bench template for design  :  demo1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY demo1_vhd_tst IS
END demo1_vhd_tst;
ARCHITECTURE demo1_arch OF demo1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT demo1
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	Y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : demo1
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	Y => Y
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
BEGIN                                                         
        -- code executes for every event on sensitivity list  
        -- code executes for every event on sensitivity list  
        A <= '0';
        B <= '0';
        wait for 20 ns;
        
        A <= '0';
        B <= '1';
        wait for 20 ns;
        
        A <= '1';
        B <= '0';
        wait for 20 ns;
         
        A <= '1';
        B <= '1';
        wait for 20 ns;
         
        A <= '0';
        B <= '0'; 
        WAIT; 		  
WAIT;                                                        
END PROCESS always;                                          
END demo1_arch;
