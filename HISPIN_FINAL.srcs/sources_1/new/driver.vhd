----------------------------------------------------------------------------------
-- Engineer: Vladimir Lahoda
-- 
-- Create Date: 17.03.2022 08:10:23
-- Design Name: 
-- Module Name: driver - Behavioral
-- Project Name: HISPIN
-- Target Devices: CMOD-S7
-- Tool Versions: 
-- Description: Driver for ADC type MAX11049
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

entity driver is
    Port ( CONVSTRT : out STD_LOGIC := '0';
           EOC : in STD_LOGIC;
           CS : out STD_LOGIC := '1';
           RD : out STD_LOGIC := '1';
           Q : in STD_LOGIC_VECTOR (10 downto 0);
           AXI_valid : out STD_LOGIC := '0';
           AXI_ready : in STD_LOGIC;
           D_valid : out STD_LOGIC_VECTOR(7 DOWNTO 0):=X"00";
           AXI_EN : in STD_LOGIC;    
           clk: in STD_LOGIC);
end driver;

architecture rtl of driver is
signal CS_i : std_logic;
begin
DRV_CONVSTRT: process(Q)
begin
if (Q > "00000000010" and Q < "00100101110") then
    CONVSTRT <= '1';
else
    CONVSTRT <= '0';
end if;
end process;

DRV_CS: process(Q, EOC)
begin
if (EOC = '0') and (Q > "00100110110") and (Q < "01110110110") then
    CS_i <= '0';
else
    CS_i <= '1';
end if;
end process;

DRV_RD: process(Q, CS_i, clk)
begin
if (clk'event and clk='1') then
    if (CS_i = '0') then
        if (Q >= "00101000000" and Q < "00101100110") or (Q >= "00110001011" and Q < "00110110001") or (Q >= "00111010110" and Q < "00111111100") or (Q >= "01000100001" and Q < "01001000111") then
            RD <= '0';
        elsif (Q >= "01001101100" and Q < "01010010010") or (Q >= "01010110111" and Q < "01011011101") or (Q >= "01100000010" and Q < "01100101000") or (Q >= "01101001101" and Q < "01101110011") then
            RD <= '0';
        else
            RD <= '1';
        end if;
          
        if (Q >= "00101100000" and Q < "00101100001") then
            D_valid(0) <= '1';
        elsif (Q >= "00110100011" and Q < "00110100100") then
            D_valid(1) <= '1';
        elsif (Q >= "00111101110" and Q < "00111101111") then
            D_valid(2) <= '1';
        elsif (Q >= "01001000011" and Q < "01001000100") then
            D_valid(3) <= '1';
        elsif (Q >= "01010000100" and Q < "01010000101") then
            D_valid(4) <= '1';
        elsif (Q >= "01011001111" and Q < "01011010000") then
            D_valid(5) <= '1';
        elsif (Q >= "01100011010" and Q < "01100011011") then
            D_valid(6) <= '1';
        elsif (Q >= "01101100101" and Q < "01101100110") then
            D_valid(7) <= '1';
        else
            D_valid <= X"00";
        end if;
        
        if (Q >= "01101110000" and Q < "01101110001") then
            AXI_valid <= AXI_ready;
        else
            AXI_valid <= '0';
        end if;
    end if;
end if;
end process;

CS <= CS_i;
end rtl;
