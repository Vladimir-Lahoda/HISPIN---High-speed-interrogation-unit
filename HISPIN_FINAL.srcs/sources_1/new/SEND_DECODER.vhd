----------------------------------------------------------------------------------
-- Engineer: Vladimir Lahoda
-- 
-- Create Date: 15.04.2022 20:09:13
-- Design Name: 
-- Module Name: SEND_DECODER - Behavioral
-- Project Name: HISPIN
-- Target Devices: CMOD-S7
-- Tool Versions: 
-- Description: The block decoding the number of written data generates an interrupt for a single board computer
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

entity SEND_DECODER is
    Port ( D : in STD_LOGIC_VECTOR (11 downto 0);
           SEND : out STD_LOGIC;
           clk : in STD_LOGIC);
end SEND_DECODER;

architecture rtl of SEND_DECODER is

begin

SEND_CNTRL : process(D, clk)
begin
    if clk'event and clk='1' then
        if D > X"6DC" then -- 7EA FE8
            SEND <= '1';
        else
            SEND <= '0';
        end if;
    end if;                        
end process;
end rtl;
