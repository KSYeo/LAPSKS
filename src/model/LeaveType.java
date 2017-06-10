package model;

public class LeaveType {

	protected int leave_type;
	protected String leave_name;
	
	public LeaveType()
	{
	}

	public LeaveType(int leave_type, String leave_name)
	{
		this.leave_type=leave_type;
		this.leave_name= leave_name;
	}
	
	public int getLeaveType()
	{
		return leave_type;
	}
	public void setLeaveType(int leave_type)
	{
		this.leave_type=leave_type;
	}
	public String getLeaveName()
	{
		return leave_name;
	}
	public void setLeaveName(String leave_name)
	{
		this.leave_name=leave_name;
	}
}
