-- cite: https://vhdlguide.readthedocs.io/en/latest/vhdl/testbench.html
-- half_adder_process_tb.vhd

library ieee;
use ieee.std_logic_1164.all;


entity half_adder_process_tb is
end half_adder_process_tb;

architecture tb of half_adder_process_tb is
    signal a, b : std_logic;
    signal sum, carry : std_logic;
begin
    -- connecting testbench signals with half_adder.vhd
    UUT : entity work.half_adder port map (a => a, b => b, sum => sum, carry => carry);

    tb1 : process
        constant period: time := 20 ns;
        begin
            a <= '0';
            b <= '0';
            wait for period;
            assert ((sum = '0') and (carry = '0'))  -- expected output
            -- error will be reported if sum or carry is not 0
            report "test failed for input combination 00" severity error;

            a <= '0';
            b <= '1';
            wait for period;
            assert ((sum = '1') and (carry = '0'))
            report "test failed for input combination 01" severity error;

            a <= '1';
            b <= '0';
            wait for period;
            assert ((sum = '1') and (carry = '0'))
            report "test failed for input combination 10" severity error;

            a <= '1';
            b <= '1';
            wait for period;
            assert ((sum = '0') and (carry = '1'))
            report "test failed for input combination 11" severity error;

            -- Fail test
            a <= '0';
            b <= '1';
            wait for period;
            assert ((sum = '0') and (carry = '1'))
            report "test failed for input combination 01 (fail test)" severity error;


            wait; -- indefinitely suspend process
        end process;
end tb;
