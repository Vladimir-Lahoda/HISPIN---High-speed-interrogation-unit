----------------------------------------------------------------------------------
-- Engineer: Vladimir Lahoda
-- 
-- Create Date: 20.04.2022 10:29:34
-- Design Name: 
-- Module Name: STATUS_LED - Behavioral
-- Project Name: HISPIN
-- Target Devices: CMOD-S7
-- Tool Versions: 
-- Description: Driver for integrated LEDs on modul kit CMOD-S7, only for diagnostics purposes
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

entity STATUS_LED is
    Port ( clk : in STD_LOGIC;
           SPI_SS : in STD_LOGIC;
           FIFO_STATUS : in STD_LOGIC_VECTOR (31 downto 0);
           AD_VALID : in STD_LOGIC;
           LEDs : out STD_LOGIC_VECTOR (3 downto 0);
           RGB : out STD_LOGIC_VECTOR (2 downto 0));
end STATUS_LED;

architecture rtl of STATUS_LED is

begin
LEDky: process(clk, SPI_SS, FIFO_STATUS, AD_VALID)
begin
    if clk'event and clk='1' then
        LEDs(3) <= not(SPI_SS);
        LEDs(2) <= AD_VALID;
        RGB <= "111";
        if FIFO_STATUS > X"00000000" then
            LEDs(0) <= '1';
            if FIFO_STATUS > X"00001000" then        
                LEDs(0) <= '1';
            else
                LEDs(0) <= '0';            
            end if;
        else
                LEDs(1) <= '0';
        end if;
    end if;
end process;                
end rtl;
