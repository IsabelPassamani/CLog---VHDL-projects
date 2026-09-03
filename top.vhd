----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.09.2026 13:50:26
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
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

entity top is
    port(
        sw: in std_logic_vector(7 downto 0);
        led: out std_logic_vector(5 downto 0)
    );
end top;

architecture decodifica_e_codifica of top is
begin
    -- anotacao
    prioridade_com_IF : entity work.prio_encoder(if_arch) --deve utilizar para acessar o arquivo do portmap
        port map(
            r => sw(3 downto 0),
            pcode => led(2 downto 0)
        );
    prioridade_com_CASE : entity work.prio_encoder(case_arch)
        port map(
            r => sw(7 downto 4),
            pcode =>led(5 downto 3)
        );       
 end decodifica_e_codifica;
 