
################################################################
# This is a generated script based on design: fp_arithmetic
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source fp_arithmetic_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Modulul_1, Modulul_2, Modulul_3, Modulul_4, Modulul_5, Modulul_6, Modulul_7, Registru_16_biti, Registru_16_biti, Registru_24_biti, Registru_26_biti, Registru_48_biti, Registru_48_biti, Registru_57_biti, Registru_8_biti, Registru_8_biti, Registru_8_biti

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name fp_arithmetic

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set clk [ create_bd_port -dir I -type clk clk ]
  set exponent_out [ create_bd_port -dir O -from 7 -to 0 exponent_out ]
  set exponentii [ create_bd_port -dir I -from 15 -to 0 exponentii ]
  set load [ create_bd_port -dir I -type clk load ]
  set mantisa_out [ create_bd_port -dir O -from 23 -to 0 mantisa_out ]
  set mantisele [ create_bd_port -dir I -from 47 -to 0 mantisele ]
  set operatie [ create_bd_port -dir I operatie ]
  set reset [ create_bd_port -dir I -type clk reset ]

  # Create instance: Modulul_1_0, and set properties
  set block_name Modulul_1
  set block_cell_name Modulul_1_0
  if { [catch {set Modulul_1_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Modulul_1_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Modulul_2_0, and set properties
  set block_name Modulul_2
  set block_cell_name Modulul_2_0
  if { [catch {set Modulul_2_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Modulul_2_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Modulul_3_0, and set properties
  set block_name Modulul_3
  set block_cell_name Modulul_3_0
  if { [catch {set Modulul_3_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Modulul_3_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Modulul_4_0, and set properties
  set block_name Modulul_4
  set block_cell_name Modulul_4_0
  if { [catch {set Modulul_4_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Modulul_4_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Modulul_5_0, and set properties
  set block_name Modulul_5
  set block_cell_name Modulul_5_0
  if { [catch {set Modulul_5_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Modulul_5_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Modulul_6_0, and set properties
  set block_name Modulul_6
  set block_cell_name Modulul_6_0
  if { [catch {set Modulul_6_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Modulul_6_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Modulul_7_0, and set properties
  set block_name Modulul_7
  set block_cell_name Modulul_7_0
  if { [catch {set Modulul_7_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Modulul_7_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Registru_16_biti_0, and set properties
  set block_name Registru_16_biti
  set block_cell_name Registru_16_biti_0
  if { [catch {set Registru_16_biti_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Registru_16_biti_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Registru_16_biti_1, and set properties
  set block_name Registru_16_biti
  set block_cell_name Registru_16_biti_1
  if { [catch {set Registru_16_biti_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Registru_16_biti_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Registru_24_biti_0, and set properties
  set block_name Registru_24_biti
  set block_cell_name Registru_24_biti_0
  if { [catch {set Registru_24_biti_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Registru_24_biti_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Registru_26_biti_0, and set properties
  set block_name Registru_26_biti
  set block_cell_name Registru_26_biti_0
  if { [catch {set Registru_26_biti_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Registru_26_biti_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Registru_48_biti_0, and set properties
  set block_name Registru_48_biti
  set block_cell_name Registru_48_biti_0
  if { [catch {set Registru_48_biti_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Registru_48_biti_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Registru_48_biti_1, and set properties
  set block_name Registru_48_biti
  set block_cell_name Registru_48_biti_1
  if { [catch {set Registru_48_biti_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Registru_48_biti_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Registru_57_biti_0, and set properties
  set block_name Registru_57_biti
  set block_cell_name Registru_57_biti_0
  if { [catch {set Registru_57_biti_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Registru_57_biti_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Registru_8_biti_0, and set properties
  set block_name Registru_8_biti
  set block_cell_name Registru_8_biti_0
  if { [catch {set Registru_8_biti_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Registru_8_biti_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Registru_8_biti_1, and set properties
  set block_name Registru_8_biti
  set block_cell_name Registru_8_biti_1
  if { [catch {set Registru_8_biti_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Registru_8_biti_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Registru_8_biti_2, and set properties
  set block_name Registru_8_biti
  set block_cell_name Registru_8_biti_2
  if { [catch {set Registru_8_biti_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Registru_8_biti_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net Modulul_1_0_fw_exp [get_bd_pins Modulul_1_0/fw_exp] [get_bd_pins Registru_16_biti_1/inp]
  connect_bd_net -net Modulul_1_0_valoarea1 [get_bd_pins Modulul_1_0/valoarea1] [get_bd_pins Modulul_7_0/val1]
  connect_bd_net -net Modulul_2_0_exp_ales [get_bd_pins Modulul_2_0/exp_ales] [get_bd_pins Registru_8_biti_0/inp]
  connect_bd_net -net Modulul_3_0_exponent_bun [get_bd_pins Modulul_3_0/exponent_bun] [get_bd_pins Registru_8_biti_2/inp]
  connect_bd_net -net Modulul_4_0_mantise [get_bd_pins Modulul_4_0/mantise] [get_bd_pins Registru_48_biti_1/inp]
  connect_bd_net -net Modulul_5_0_outp [get_bd_pins Modulul_5_0/outp] [get_bd_pins Registru_26_biti_0/inp]
  connect_bd_net -net Modulul_6_0_mantisa [get_bd_pins Modulul_6_0/mantisa] [get_bd_pins Registru_24_biti_0/inp]
  connect_bd_net -net Modulul_6_0_valoarea2 [get_bd_pins Modulul_3_0/valoarea2] [get_bd_pins Modulul_6_0/valoarea2]
  connect_bd_net -net Modulul_7_0_out [get_bd_pins Modulul_7_0/outp] [get_bd_pins Registru_57_biti_0/inp]
  connect_bd_net -net Registru_16_biti_0_out [get_bd_pins Modulul_1_0/exponenti] [get_bd_pins Registru_16_biti_0/outp]
  connect_bd_net -net Registru_16_biti_1_out [get_bd_pins Modulul_2_0/exponenti] [get_bd_pins Registru_16_biti_1/outp]
  connect_bd_net -net Registru_24_biti_0_out [get_bd_ports mantisa_out] [get_bd_pins Registru_24_biti_0/outp]
  connect_bd_net -net Registru_26_biti_0_outp [get_bd_pins Modulul_6_0/inp] [get_bd_pins Registru_26_biti_0/outp]
  connect_bd_net -net Registru_48_biti_0_out [get_bd_pins Modulul_7_0/mantise] [get_bd_pins Registru_48_biti_0/outp]
  connect_bd_net -net Registru_48_biti_1_out [get_bd_pins Modulul_5_0/mantise] [get_bd_pins Registru_48_biti_1/outp]
  connect_bd_net -net Registru_57_biti_0_out [get_bd_pins Modulul_4_0/inp] [get_bd_pins Registru_57_biti_0/outp]
  connect_bd_net -net Registru_8_biti_0_outp [get_bd_pins Registru_8_biti_0/outp] [get_bd_pins Registru_8_biti_1/inp]
  connect_bd_net -net Registru_8_biti_1_out [get_bd_pins Modulul_3_0/exponent] [get_bd_pins Registru_8_biti_1/outp]
  connect_bd_net -net Registru_8_biti_2_out [get_bd_ports exponent_out] [get_bd_pins Registru_8_biti_2/outp]
  connect_bd_net -net clk_0_1 [get_bd_ports clk] [get_bd_pins Registru_16_biti_0/clk] [get_bd_pins Registru_16_biti_1/clk] [get_bd_pins Registru_24_biti_0/clk] [get_bd_pins Registru_26_biti_0/clk] [get_bd_pins Registru_48_biti_0/clk] [get_bd_pins Registru_48_biti_1/clk] [get_bd_pins Registru_57_biti_0/clk] [get_bd_pins Registru_8_biti_0/clk] [get_bd_pins Registru_8_biti_1/clk] [get_bd_pins Registru_8_biti_2/clk]
  connect_bd_net -net exponentii_1 [get_bd_ports exponentii] [get_bd_pins Registru_16_biti_0/inp]
  connect_bd_net -net in_0_1 [get_bd_ports mantisele] [get_bd_pins Registru_48_biti_0/inp]
  connect_bd_net -net load_1 [get_bd_ports load] [get_bd_pins Registru_16_biti_0/ld] [get_bd_pins Registru_16_biti_1/ld] [get_bd_pins Registru_24_biti_0/ld] [get_bd_pins Registru_26_biti_0/ld] [get_bd_pins Registru_48_biti_0/ld] [get_bd_pins Registru_48_biti_1/ld] [get_bd_pins Registru_57_biti_0/ld] [get_bd_pins Registru_8_biti_0/ld] [get_bd_pins Registru_8_biti_1/ld] [get_bd_pins Registru_8_biti_2/ld]
  connect_bd_net -net op_0_1 [get_bd_ports operatie] [get_bd_pins Modulul_5_0/op]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins Registru_16_biti_0/clr] [get_bd_pins Registru_16_biti_1/clr] [get_bd_pins Registru_24_biti_0/clr] [get_bd_pins Registru_26_biti_0/clr] [get_bd_pins Registru_48_biti_0/clr] [get_bd_pins Registru_48_biti_1/clr] [get_bd_pins Registru_57_biti_0/clr] [get_bd_pins Registru_8_biti_0/clr] [get_bd_pins Registru_8_biti_1/clr] [get_bd_pins Registru_8_biti_2/clr]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


