package view;

public class StaffManagementView {
	public void printStaffDetails(int staff_id, String name, int contact_no, String email, String home_address, String designation, int a_leave, int m_leave, int c_leave, int reports_to, int total_hours_claimed)
	{
		System.out.println("Staff Details: ");
		System.out.println("Staff ID: " + staff_id);
		System.out.println("Name: " + name);
		System.out.println("Contact No: " + contact_no);
		System.out.println("Email: " + email);
		System.out.println("Home Address: " +home_address);
		System.out.println("Designation: " + designation);
		System.out.println("Annual Leave: " + a_leave);
		System.out.println("Medical Leave: " + m_leave);
		System.out.println("Reports To (Staff ID): " + reports_to);
		System.out.println("Overtime Hours Claimed: " + total_hours_claimed);
	}

}
