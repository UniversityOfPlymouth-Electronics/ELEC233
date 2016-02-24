-- Vhdl Test Bench template for design  :  my_jk
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

--TEST BENCH ENTITY
ENTITY my_jk_vhd_tst IS
END my_jk_vhd_tst;

--TEST BENCH ARCHITECTURE
ARCHITECTURE my_jk_arch OF my_jk_vhd_tst IS
-- constants  
constant T : Time := 100 ns;  -- Time Period of the clock 
constant Tsetup : Time := 5 ns;  -- setup time requirement
constant Thold  : Time := 5 ns;  -- hold time requirement 
constant Tpd    : Time := (T-Tsetup);                                             

-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL J : STD_LOGIC;
SIGNAL K : STD_LOGIC;
SIGNAL Q : STD_LOGIC;

--declare components
COMPONENT my_jk
	PORT (
	CLK : IN STD_LOGIC;
	J : IN STD_LOGIC;
	K : IN STD_LOGIC;
	Q : OUT STD_LOGIC
	);
END COMPONENT;


BEGIN
	-- instantiate a JK flip-flop
	i1 : my_jk
	PORT MAP (
	CLK => CLK,
	J => J,
	K => K,
	Q => Q );

init : PROCESS                                               
-- variable declarations 										
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           

-- Clock Generation (Runs for 20 cycles)
clock_gen : PROCESS
	variable SYS_CLK : std_logic := '1';
BEGIN
  CLK <='0';
  wait for (T/2);
  for i in 0 to 19 loop -- 20 clock cycles
	 CLK <= SYS_CLK;	 
	 SYS_CLK := not SYS_CLK; -- Toggle clock signal
	 wait for (T/2);			 -- Wait 1/2 clock cycle
	end loop;
	WAIT;	-- Wait forever
END PROCESS clock_gen;

--Check setup and time
setup_hold_test: PROCESS
BEGIN 
  wait until rising_edge(CLK);
  assert (J'STABLE(Tsetup) and K'STABLE(Tsetup)) report "Setup time criteria failed" severity WARNING;
  wait for Thold; -- wait time Thold beyond the clock, then check again
  assert (J'STABLE(Thold) and K'STABLE(Thold)) report "Hold time criteria failed" severity WARNING;
END PROCESS setup_hold_test;

-- Test stimulus
always : PROCESS                                              
BEGIN
   -- initial inputs
	J <= '0'; K <= '0';
	
	-- wait for rising edge using a 'wait until'
	-- note: you cannot mix sensitivity lists with wait instructions
	wait until CLK = '1'; --rising edge (from any state to '1')
	wait for (T/4); -- halfway through the MARK portion of the clock
	
	J <= '1'; K <= '0';	-- SET (Q=1)
	wait for Tpd;  -- Wait for the max propogation delay permitted (by the designer)
	assert (Q = '1') report "J=1,K=0,Q is wrong value" severity ERROR;
	wait for (T-Tpd); --Wait for a total of T (a whole clock cycle)
	

	J <= '0'; K <= '0'; -- LATCH (Q=1)
	wait for Tpd;  -- Wait for the max propogation delay permitted (by the designer)
	assert (Q = '1') report "J=0,K=0,Q is wrong value" severity ERROR;
	wait for (T-Tpd); --Wait for a total of T (a whole clock cycle)
	 
	J <= '0'; K <= '1'; -- RESET (Q=0)
	wait for Tpd;  -- Wait for the max propogation delay permitted (by the designer)
	assert (Q = '0') report "J=0,K=1,Q is wrong value" severity ERROR;
	wait for (T-Tpd); --Wait for a total of T (a whole clock cycle)
	
	J <= '0'; K <= '0'; -- LATCH (Q=0)
	wait for Tpd;  -- Wait for the max propogation delay permitted (by the designer)
	assert (Q = '0') report "J=0,K=0,Q is wrong value" severity ERROR;
	wait for (T-Tpd); --Wait for a total of T (a whole clock cycle)
	
	J <= '1'; K <= '1'; -- TOGGLE (Q=1)
	wait for Tpd;  -- Wait for the max propogation delay permitted (by the designer)
	assert (Q = '1') report "J=1,K=1,Q is wrong value" severity ERROR;
	wait for (T-Tpd); --Wait for a total of T (a whole clock cycle)
	
	J <= '1'; K <= '1'; -- TOGGLE (Q=0)
	wait for Tpd;  -- Wait for the max propogation delay permitted (by the designer)
	assert (Q = '0') report "J=1,K=1,Q is wrong value" severity ERROR;
	wait for (T-Tpd); --Wait for a total of T (a whole clock cycle)
	 
	WAIT; -- STOP SIMULATION
	
END PROCESS always;
  
  
END my_jk_arch;
