library ieee;
use ieee.std_logic_1164.all;


entity spw_pkg_truncator is
    port (
        iClk: in std_logic;
        iReset: in std_logic;

        iLimit: in std_logic_vector;

        iValid: in std_logic;
        iData: in std_logic_vector (8 downto 0);
        oAck: out std_logic;

        oValid: out std_logic;
        oData: out std_logic_vector (8 downto 0);
        iAck: in std_logic
    );
end entity;

architecture v1 of spw_pkg_truncator is
begin
end v1;