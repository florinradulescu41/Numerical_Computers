-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Mar 12 17:20:14 2019
-- Host        : DESKTOP-P723BM5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/student/325CC/Lab4_UAL/Lab4_UAL.srcs/sources_1/bd/design_1/ip/design_1_mux41_0_0/design_1_mux41_0_0_sim_netlist.vhdl
-- Design      : design_1_mux41_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mux41_0_0_mux41 is
  port (
    outf : out STD_LOGIC_VECTOR ( 0 to 0 );
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    a : in STD_LOGIC_VECTOR ( 0 to 0 );
    b : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mux41_0_0_mux41 : entity is "mux41";
end design_1_mux41_0_0_mux41;

architecture STRUCTURE of design_1_mux41_0_0_mux41 is
begin
\outf__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6B38"
    )
        port map (
      I0 => sel(1),
      I1 => sel(0),
      I2 => a(0),
      I3 => b(0),
      O => outf(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mux41_0_0 is
  port (
    sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    a : in STD_LOGIC_VECTOR ( 0 to 0 );
    b : in STD_LOGIC_VECTOR ( 0 to 0 );
    outf : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_mux41_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_mux41_0_0 : entity is "design_1_mux41_0_0,mux41,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_mux41_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_mux41_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_mux41_0_0 : entity is "mux41,Vivado 2018.3";
end design_1_mux41_0_0;

architecture STRUCTURE of design_1_mux41_0_0 is
begin
inst: entity work.design_1_mux41_0_0_mux41
     port map (
      a(0) => a(0),
      b(0) => b(0),
      outf(0) => outf(0),
      sel(1 downto 0) => sel(1 downto 0)
    );
end STRUCTURE;
