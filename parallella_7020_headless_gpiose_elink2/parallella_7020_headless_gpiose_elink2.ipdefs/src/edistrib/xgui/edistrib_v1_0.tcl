# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  set Component_Name  [  ipgui::add_param $IPINST -name "Component_Name" -display_name {Component Name}]
  set_property tooltip {Component Name} ${Component_Name}
  #Adding Page
  set Page_0  [  ipgui::add_page $IPINST -name "Page 0" -display_name {Page 0}]
  set_property tooltip {Page 0} ${Page_0}
  set C_READ_TAG_ADDR  [  ipgui::add_param $IPINST -name "C_READ_TAG_ADDR" -parent ${Page_0} -display_name {C_READ_TAG_ADDR}]
  set_property tooltip {C_READ_TAG_ADDR} ${C_READ_TAG_ADDR}
  set C_REMAP_BITS  [  ipgui::add_param $IPINST -name "C_REMAP_BITS" -parent ${Page_0} -display_name {C_REMAP_BITS}]
  set_property tooltip {C_REMAP_BITS} ${C_REMAP_BITS}
  set C_REMAP_ADDR  [  ipgui::add_param $IPINST -name "C_REMAP_ADDR" -parent ${Page_0} -display_name {C_REMAP_ADDR}]
  set_property tooltip {C_REMAP_ADDR} ${C_REMAP_ADDR}


}

proc update_PARAM_VALUE.C_READ_TAG_ADDR { PARAM_VALUE.C_READ_TAG_ADDR } {
	# Procedure called to update C_READ_TAG_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_READ_TAG_ADDR { PARAM_VALUE.C_READ_TAG_ADDR } {
	# Procedure called to validate C_READ_TAG_ADDR
	return true
}

proc update_PARAM_VALUE.C_REMAP_BITS { PARAM_VALUE.C_REMAP_BITS } {
	# Procedure called to update C_REMAP_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_REMAP_BITS { PARAM_VALUE.C_REMAP_BITS } {
	# Procedure called to validate C_REMAP_BITS
	return true
}

proc update_PARAM_VALUE.C_REMAP_ADDR { PARAM_VALUE.C_REMAP_ADDR } {
	# Procedure called to update C_REMAP_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_REMAP_ADDR { PARAM_VALUE.C_REMAP_ADDR } {
	# Procedure called to validate C_REMAP_ADDR
	return true
}


proc update_MODELPARAM_VALUE.C_READ_TAG_ADDR { MODELPARAM_VALUE.C_READ_TAG_ADDR PARAM_VALUE.C_READ_TAG_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_READ_TAG_ADDR}] ${MODELPARAM_VALUE.C_READ_TAG_ADDR}
}

proc update_MODELPARAM_VALUE.C_REMAP_BITS { MODELPARAM_VALUE.C_REMAP_BITS PARAM_VALUE.C_REMAP_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_REMAP_BITS}] ${MODELPARAM_VALUE.C_REMAP_BITS}
}

proc update_MODELPARAM_VALUE.C_REMAP_ADDR { MODELPARAM_VALUE.C_REMAP_ADDR PARAM_VALUE.C_REMAP_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_REMAP_ADDR}] ${MODELPARAM_VALUE.C_REMAP_ADDR}
}

