-- Zdroj viz: https://surf-vhdl.com/spi-slave-vhdl-design/
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity spi_slave is
generic(
  N                     : integer := 128;      -- number of bit to serialize
  CPOL                  : std_logic := '0' );  -- clock polarity
 port (
  i_data_parallel             : in  std_logic_vector(N-1 downto 0);  -- data to sent
  i_sclk                      : in  std_logic;
  i_ss                        : in  std_logic;
  o_miso                      : out std_logic
);
end spi_slave;
architecture rtl of spi_slave is
signal r_shift_ena                           : std_logic;
signal r_tx_data                             : std_logic_vector(N-2 downto 0);  -- data to sent
begin
p_spi_slave_output : process(i_sclk,i_ss, i_data_parallel)
begin
  if(i_ss='1') then
    r_shift_ena            <= '0';
  elsif(i_sclk'event and i_sclk= '1') then --not CPOL CPOL='0' => falling edge; CPOL='1' => risinge edge
    r_shift_ena            <= '1';
    if(r_shift_ena='0') then
      o_miso                 <= i_data_parallel(N-1);
      r_tx_data              <= i_data_parallel(N-2 downto 0);
    else
      o_miso                 <= r_tx_data(N-2);
      r_tx_data              <= r_tx_data(N-3 downto 0)&'0';
    end if;
  end if;
end process p_spi_slave_output;

end rtl;