----------------------------------------------------------------------------------
-- Engineer: Vladimir Lahoda
-- 
-- Create Date: 04.04.2022 13:10:08
-- Design Name: 
-- Module Name: SPI_CNTRL - Behavioral
-- Project Name: HISPIN
-- Target Devices: CMOD-S7
-- Tool Versions: 
-- Description: SPI bus switch, important for SPI switching during transactions.
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SPI_CNTRL is
port (
  i_sclk : in  std_logic;
  o_sclk_0 : out  std_logic;
  o_sclk_1 : out  std_logic;
  
  i_ss : in  std_logic;
  o_ss_0 : out  std_logic;
  o_ss_1 : out  std_logic;

  o_miso : out std_logic;
  i_miso_0 : in std_logic;
  i_miso_1 : in std_logic;

  clock_sig : in  std_logic;
  NUM : in std_logic_vector(7 downto 0);
  MUX_CNTRL1 : out std_logic_vector (1 downto 0) := "00";
  AXI_VALID : in std_logic;
  AXI_READY : out std_logic := '0'
  );
  
end SPI_CNTRL;

architecture rtl of SPI_CNTRL is
signal MUX_CNTRL : std_logic_vector (1 downto 0) := "00";  -- flag for SPI select
signal STOP_0, TEMP_0 : std_logic;
signal SCK_0_FLAG, MISO_0_FLAG, SCK_1_FLAG, MISO_1_FLAG : std_logic;

begin

SPI_MUX_CNTRL : process(NUM, clock_sig)
begin
    if clock_sig'event and clock_sig='1' then
        if NUM >= 128 and NUM < 240 then
            MUX_CNTRL <= "10";   
            o_ss_0 <= '1';
            o_ss_1 <= i_ss;
            SCK_0_FLAG <= '0';
            SCK_1_FLAG <= '1';
            MISO_0_FLAG <= '0';
            MISO_1_FLAG <= '1';    
        elsif NUM >= 0 and NUM < 113 then
            MUX_CNTRL <= "01";
            o_ss_0 <= i_ss;
            o_ss_1 <= '1';
            SCK_0_FLAG <= '1';
            SCK_1_FLAG <= '0';
            MISO_0_FLAG <= '1';
            MISO_1_FLAG <= '0';
        elsif NUM >= 113 and NUM < 128 then
            MUX_CNTRL <= "11";
            o_ss_0 <= i_ss;
            o_ss_1 <= i_ss;
            SCK_0_FLAG <= '1';
            SCK_1_FLAG <= '0';
            MISO_0_FLAG <= '1';
            MISO_1_FLAG <= '0';
        elsif NUM > 239 then
            MUX_CNTRL <= "00";
            o_ss_0 <= i_ss;
            o_ss_1 <= i_ss;
            SCK_0_FLAG <= '0';
            SCK_1_FLAG <= '1';
            MISO_0_FLAG <= '0';
            MISO_1_FLAG <= '1';
        end if;    
        
        if i_ss = '1' then
            o_ss_0 <= i_ss;
            o_ss_1 <= i_ss;
        
        end if;   
    end if;
    
end process;

AXI_STREAM_CNTRL : process(i_sclk, clock_sig, MUX_CNTRL)
begin
    if clock_sig'event and clock_sig='1' then
        if NUM = 7 OR NUM = 135 then
            AXI_READY <= AXI_VALID;
        else
            AXI_READY <= '0';    
        end if;       
    end if;
end process;

o_sclk_0 <= i_sclk AND SCK_0_FLAG;
o_sclk_1 <= i_sclk AND SCK_1_FLAG;
o_miso <= (i_miso_0 AND MISO_0_FLAG) OR (i_miso_1 AND MISO_1_FLAG);

MUX_CNTRL1 <= MUX_CNTRL;
end rtl;
