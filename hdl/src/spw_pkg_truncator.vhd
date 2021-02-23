-- this block limits spw package length
-- it discards the package after iLimit symbols
-- has been transfered. eop is transmitted when this happenes
-- do not truncate packages if iLimit == 0
-- fsm:
-- 1. wait for first symbol
-- 2. pass through a symbol and increment counter
-- 3. loop in 2 untill cnt = iLimit (goto 4) or eop/eep arrives (goto 1)
-- 4. send eep
-- 5. discard incoming pkg tail
-- 6. goto 1
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.config.all;


entity spw_pkg_truncator is
    port (
        iClk: in std_logic;
        iReset: in std_logic;

        iLimit: in std_logic_vector (cLimit_width-1 downto 0);

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
