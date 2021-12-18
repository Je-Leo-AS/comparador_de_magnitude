-- Exercicio 4

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mag_comp is 
generic
(
N : integer := 4
);
port
(
A : in std_logic_vector(N-1 downto 0);
B : in std_logic_vector(N-1 downto 0);
x : out std_logic);
end mag_comp;
 
architecture hardware of mag_comp is
SIGNAL sum, sub: SIGNED(N-1 downto 0);
SIGNAL sum_1, sub_1: std_logic_vector(N-1 downto 0);
CONSTANT ZERO: std_logic_vector(N-1 downto 0):= (others => '0');
begin 
	
	sum <= signed(A) + signed(B);
	sub <= signed(A) - signed(B);
	sum_1 <= std_logic_vector(sum);
	sub_1 <= std_logic_vector(sub);
	
	X <= '1' when sub_1 = ZERO OR sum_1 = ZERO else
		 '0';
end hardware; 
