----------------------------------------------------------------------------------
-- Engineer: Vladimir Lahoda
-- 
-- Create Date: 11.04.2022 13:14:23
-- Design Name: 
-- Module Name: MUX_1to2_128bit - Behavioral
-- Project Name: HISPIN 
-- Target Devices: 
-- Tool Versions: 
-- Description: Data multiplexer for dividing 128-bit input data into two buses (each 128-bit wide)
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_1to2_128bit is
    Port ( B0 : out STD_LOGIC_VECTOR (127 downto 0);
           B1 : out STD_LOGIC_VECTOR (127 downto 0);
           A : in STD_LOGIC_VECTOR (127 downto 0);
           clk : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR(1 DOWNTO 0));
end MUX_1to2_128bit;

architecture rtl of MUX_1to2_128bit is

begin
MUX_CNTRL : process(S, clk)
begin
    if clk'event and clk='1' then
        if S = "10" then
            B0 <= A;
        elsif S = "01" then
            B1 <= A;
        end if;
    end if;
end process;

end rtl;
