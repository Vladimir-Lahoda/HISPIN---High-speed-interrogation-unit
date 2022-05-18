----------------------------------------------------------------------------------
-- Engineer: Vladimir Lahoda
-- 
-- Create Date: 23.03.2022 17:42:46
-- Design Name: 
-- Module Name: data_expander - Behavioral
-- Project Name: HISPIN
-- Target Devices: CMOD-S7
-- Tool Versions: 
-- Description: Parallel to Paralel converter; Transfer data from ADC (16-bit) to AXI DATA bus (128-bit)
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity data_expander is
    Port ( D : in STD_LOGIC_VECTOR (15 downto 0);
           CLK : in STD_LOGIC;
           ADDR : in STD_LOGIC_VECTOR (7 downto 0);
           Q : out STD_LOGIC_VECTOR (127 downto 0)
           );

end data_expander;

architecture rtl of data_expander is

begin
process (CLK) 
begin
  if (CLK'event and CLK = '1') then
   if(ADDR = X"01") then
    Q(15 downto 0) <= D;
   elsif(ADDR = X"02") then
    Q(31 downto 16) <= D;
   elsif(ADDR = X"04") then
    Q(47 downto 32) <= D;
   elsif(ADDR = X"08") then
    Q(63 downto 48) <= D;
   elsif(ADDR = X"10") then
    Q(79 downto 64) <= D;
   elsif(ADDR = X"20") then
    Q(95 downto 80) <= D;
   elsif(ADDR = X"40") then
    Q(111 downto 96) <= D;
   elsif(ADDR = X"80") then
    Q(127 downto 112) <= D;   
   end if;
  end if;
 end process;

end rtl;
