package com.sunshine.customer;

import javax.swing.*;
import java.awt.*;
import javax.swing.border.*;
import javax.swing.table.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import com.sunshine.sunsdk.sql.*;
import com.sunshine.sunsdk.swing.*;
import com.sunshine.mainframe.HotelFrame;



public class Customer 
extends JDialog 
implements ActionListener,MouseListener {
	
	public static long pk;
	private JLabel top;
	private JTabbedPane tp;
	private JPanel panelMain;
	
	//������Ϣһ����
	private JButton bt21,bt22;
	private JTextField tf21,tf2;
	private JTable tb2;
	private DefaultTableModel dtm2;
	private JScrollPane sp2;
	
	
	public Customer(JFrame frame) {
		super(frame,"�ͻ�����",true);
		
		top = new JLabel();		//�ٿո�
		panelMain = new JPanel(new BorderLayout(0,5));
		tab();					//����ϵͳ������Ŀ��ǩ���
		addListener();			//�����¼�����
		panelMain.add("North",top);
		panelMain.add("Center",tp);
		this.setContentPane(panelMain);
		this.setPreferredSize (new Dimension (750,500));
		this.setMinimumSize (new Dimension (750,500));
		this.setResizable(false);		//������ı䴰�ڴ�С
		pack();
		sunswing.setWindowCenter(this);	//������Ļ����
	}
	
	private void addListener() {
		bt21.addActionListener(this);
		bt22.addActionListener(this);//���¼�����
		bt21.addMouseListener(this);
		bt22.addMouseListener(this);
	}
	
	//����ϵͳ������Ŀ��ǩ���
	private void tab() {
		JPanel jp2;
		///////////////////////////////////////////////-----------ģ��ӿ�
		jp2 = laiBin();	            //������Ϣһ����
		//////////////////////////////////////////////////////////////////
		tp = new JTabbedPane();
		tp.addTab("������Ϣһ����", new ImageIcon("pic/u03.gif"), jp2);
	}
	
	//������Ϣһ����
	private JPanel laiBin() {
		
		tf21 = new TJTextField (10);
		tf2  = new TJTextField ("������Ϣ");
		tf2.setHorizontalAlignment (JTextField.CENTER);
		tf2.setBackground(new Color(199,183,143));
		tf2.setBorder(new LineBorder(new Color(87,87,47)));
		tf2.setEditable(false);
		
		bt21 = new TJButton ("pic/find.gif", "��ѯ", "��ѯ������Ϣ");
		bt22 = new TJButton ("pic/b1.gif", "ˢ��", "ˢ��������Ϣ");
		
		dtm2 = new DefaultTableModel();
		tb2  = new JTable(dtm2);
		sp2  = new JScrollPane(tb2);
		////////////////////////��д���
		initDTM2();
		
		JLabel lb1,lb2,lb3,lb4;
		lb1 = new JLabel("��������/֤����ţ�");
		lb2 = new JLabel("      ");
		lb3 = new JLabel("   ");
		lb4 = new JLabel("   ");
		
		JPanel pl,pn,pc; 
		pl = new JPanel(new BorderLayout());
		pn = new JPanel();
		pc = new JPanel(new BorderLayout());
		
		pn.add(lb1);
		pn.add(tf21);
		pn.add(lb2);
		pn.add(bt21);
		pn.add(lb3);
		pn.add(bt22);
		pn.add(lb4);
		
		pc.add("North",tf2);
		pc.add(sp2);
		pc.setBorder(BorderFactory.createTitledBorder(""));
		
		pl.add("North",pn);
		pl.add(pc);
		
		return pl;
	}
	
	//DTM2��ʼ��
	private void initDTM2() {
		String sqlCode = "select c_name ��������,sex �Ա�,zj_type ֤������,zj_no ֤�����,address ��ϸ��ַ from livein where delmark = 0";
		sunsql.initDTM(dtm2,sqlCode);
		tf21.setText("");
	}
	
	/**=======================================================================**
	 *			ActionListener ����
	 **=======================================================================**
	 */
	public void actionPerformed(ActionEvent ae) {
		Object o = ae.getSource();
		if(o==bt21) {
			//��ѯ������Ϣ
			String cz = tf21.getText();
			String sqlCode = "select c_name ��������,sex �Ա�,zj_type ֤������,zj_no ֤�����,address ��ϸ��ַ "+
							 "from livein where delmark = 0 and (c_name like '%"+cz+"%' or zj_no like '%"+cz+"%')";
			sunsql.initDTM(dtm2,sqlCode);
		}
		else if(o==bt22) {
			//ˢ��������Ϣ
			initDTM2();
		}
		
	}
	
	/**=======================================================================**
	 *			MouseListener ����
	 **=======================================================================**
	 */
	public void mouseClicked (MouseEvent me) {
	}

	public void mousePressed (MouseEvent me) {
	}

	public void mouseReleased(MouseEvent me) {
	}

	public void mouseEntered (MouseEvent me) {		//����ƽ���ʾ
		Object o = me.getSource ();
		if(o == bt21) {
			HotelFrame.lbA.setText (HotelFrame.clue + 
			"��ѯ������Ϣ����      ���������������������������������� ��");
		}else if(o == bt22) {
			HotelFrame.lbA.setText (HotelFrame.clue + 
			"ˢ��������Ϣ����      ���������������������������������� ��");
		}
	}

	public void mouseExited (MouseEvent me) {
		HotelFrame.lbA.setText (HotelFrame.clue + "��ѡ������ ...   ����������������������������������������");
	}
}