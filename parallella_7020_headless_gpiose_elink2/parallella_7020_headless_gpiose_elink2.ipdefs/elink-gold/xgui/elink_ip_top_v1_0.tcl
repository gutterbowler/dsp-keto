# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  set Component_Name  [  ipgui::add_param $IPINST -name "Component_Name" -display_name {Component Name}]
  set_property tooltip {Component Name} ${Component_Name}
  #Adding Page
  set Page_0  [  ipgui::add_page $IPINST -name "Page 0" -display_name {Page 0}]
  set_property tooltip {Page 0} ${Page_0}
  set DW  [  ipgui::add_param $IPINST -name "DW" -parent ${Page_0} -display_name {Dw}]
  set_property tooltip {Dw} ${DW}
  set AW  [  ipgui::add_param $IPINST -name "AW" -parent ${Page_0} -display_name {Aw}]
  set_property tooltip {Aw} ${AW}
  set LW  [  ipgui::add_param $IPINST -name "LW" -parent ${Page_0} -display_name {Lw}]
  set_property tooltip {Lw} ${LW}
  set MSTW  [  ipgui::add_param $IPINST -name "MSTW" -parent ${Page_0} -display_name {Mstw}]
  set_property tooltip {Mstw} ${MSTW}
  set MDW  [  ipgui::add_param $IPINST -name "MDW" -parent ${Page_0} -display_name {Mdw}]
  set_property tooltip {Mdw} ${MDW}
  set MAW  [  ipgui::add_param $IPINST -name "MAW" -parent ${Page_0} -display_name {Maw}]
  set_property tooltip {Maw} ${MAW}
  set MIDW  [  ipgui::add_param $IPINST -name "MIDW" -parent ${Page_0} -display_name {Midw}]
  set_property tooltip {Midw} ${MIDW}
  set SSTW  [  ipgui::add_param $IPINST -name "SSTW" -parent ${Page_0} -display_name {Sstw}]
  set_property tooltip {Sstw} ${SSTW}
  set SDW  [  ipgui::add_param $IPINST -name "SDW" -parent ${Page_0} -display_name {Sdw}]
  set_property tooltip {Sdw} ${SDW}
  set SAW  [  ipgui::add_param $IPINST -name "SAW" -parent ${Page_0} -display_name {Saw}]
  set_property tooltip {Saw} ${SAW}
  set SIDW  [  ipgui::add_param $IPINST -name "SIDW" -parent ${Page_0} -display_name {Sidw}]
  set_property tooltip {Sidw} ${SIDW}


}

proc update_PARAM_VALUE.MSTW { PARAM_VALUE.MSTW } {
	# Procedure called to update MSTW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MSTW { PARAM_VALUE.MSTW } {
	# Procedure called to validate MSTW
	return true
}

proc update_PARAM_VALUE.MDW { PARAM_VALUE.MDW } {
	# Procedure called to update MDW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MDW { PARAM_VALUE.MDW } {
	# Procedure called to validate MDW
	return true
}

proc update_PARAM_VALUE.MAW { PARAM_VALUE.MAW } {
	# Procedure called to update MAW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAW { PARAM_VALUE.MAW } {
	# Procedure called to validate MAW
	return true
}

proc update_PARAM_VALUE.MIDW { PARAM_VALUE.MIDW } {
	# Procedure called to update MIDW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MIDW { PARAM_VALUE.MIDW } {
	# Procedure called to validate MIDW
	return true
}

proc update_PARAM_VALUE.SSTW { PARAM_VALUE.SSTW } {
	# Procedure called to update SSTW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SSTW { PARAM_VALUE.SSTW } {
	# Procedure called to validate SSTW
	return true
}

proc update_PARAM_VALUE.SDW { PARAM_VALUE.SDW } {
	# Procedure called to update SDW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SDW { PARAM_VALUE.SDW } {
	# Procedure called to validate SDW
	return true
}

proc update_PARAM_VALUE.SAW { PARAM_VALUE.SAW } {
	# Procedure called to update SAW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SAW { PARAM_VALUE.SAW } {
	# Procedure called to validate SAW
	return true
}

proc update_PARAM_VALUE.SIDW { PARAM_VALUE.SIDW } {
	# Procedure called to update SIDW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SIDW { PARAM_VALUE.SIDW } {
	# Procedure called to validate SIDW
	return true
}


proc update_MODELPARAM_VALUE.SIDW { MODELPARAM_VALUE.SIDW PARAM_VALUE.SIDW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SIDW}] ${MODELPARAM_VALUE.SIDW}
}

proc update_MODELPARAM_VALUE.SAW { MODELPARAM_VALUE.SAW PARAM_VALUE.SAW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SAW}] ${MODELPARAM_VALUE.SAW}
}

proc update_MODELPARAM_VALUE.SDW { MODELPARAM_VALUE.SDW PARAM_VALUE.SDW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SDW}] ${MODELPARAM_VALUE.SDW}
}

proc update_MODELPARAM_VALUE.SSTW { MODELPARAM_VALUE.SSTW PARAM_VALUE.SSTW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SSTW}] ${MODELPARAM_VALUE.SSTW}
}

proc update_MODELPARAM_VALUE.MIDW { MODELPARAM_VALUE.MIDW PARAM_VALUE.MIDW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MIDW}] ${MODELPARAM_VALUE.MIDW}
}

proc update_MODELPARAM_VALUE.MAW { MODELPARAM_VALUE.MAW PARAM_VALUE.MAW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAW}] ${MODELPARAM_VALUE.MAW}
}

proc update_MODELPARAM_VALUE.MDW { MODELPARAM_VALUE.MDW PARAM_VALUE.MDW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MDW}] ${MODELPARAM_VALUE.MDW}
}

proc update_MODELPARAM_VALUE.MSTW { MODELPARAM_VALUE.MSTW PARAM_VALUE.MSTW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MSTW}] ${MODELPARAM_VALUE.MSTW}
}

