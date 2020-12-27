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
	
	//来宾信息一览表
	private JButton bt21,bt22;
	private JTextField tf21,tf2;
	private JTable tb2;
	private DefaultTableModel dtm2;
	private JScrollPane sp2;
	
	
	public Customer(JFrame frame) {
		super(frame,"客户管理",true);
		
		top = new JLabel();		//假空格
		panelMain = new JPanel(new BorderLayout(0,5));
		tab();					//制作系统设置项目标签面板
		addListener();			//加入事件监听
		panelMain.add("North",top);
		panelMain.add("Center",tp);
		this.setContentPane(panelMain);
		this.setPreferredSize (new Dimension (750,500));
		this.setMinimumSize (new Dimension (750,500));
		this.setResizable(false);		//不允许改变窗口大小
		pack();
		sunswing.setWindowCenter(this);	//窗口屏幕居中
	}
	
	private void addListener() {
		bt21.addActionListener(this);
		bt22.addActionListener(this);//加事件监听
		bt21.addMouseListener(this);
		bt22.addMouseListener(this);
	}
	
	//制作系统设置项目标签面板
	private void tab() {
		JPanel jp2;
		///////////////////////////////////////////////-----------模块接口
		jp2 = laiBin();	            //来宾信息一览表
		//////////////////////////////////////////////////////////////////
		tp = new JTabbedPane();
		tp.addTab("来宾信息一览表", new ImageIcon("pic/u03.gif"), jp2);
	}
	
	//来宾信息一览表
	private JPanel laiBin() {
		
		tf21 = new TJTextField (10);
		tf2  = new TJTextField ("来宾信息");
		tf2.setHorizontalAlignment (JTextField.CENTER);
		tf2.setBackground(new Color(199,183,143));
		tf2.setBorder(new LineBorder(new Color(87,87,47)));
		tf2.setEditable(false);
		
		bt21 = new TJButton ("pic/find.gif", "查询", "查询来宾信息");
		bt22 = new TJButton ("pic/b1.gif", "刷新", "刷新来宾信息");
		
		dtm2 = new DefaultTableModel();
		tb2  = new JTable(dtm2);
		sp2  = new JScrollPane(tb2);
		////////////////////////填写表格
		initDTM2();
		
		JLabel lb1,lb2,lb3,lb4;
		lb1 = new JLabel("来宾姓名/证件编号：");
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
	
	//DTM2初始化
	private void initDTM2() {
		String sqlCode = "select c_name 宾客姓名,sex 性别,zj_type 证件类型,zj_no 证件编号,address 详细地址 from livein where delmark = 0";
		sunsql.initDTM(dtm2,sqlCode);
		tf21.setText("");
	}
	
	/**=======================================================================**
	 *			ActionListener 监听
	 **=======================================================================**
	 */
	public void actionPerformed(ActionEvent ae) {
		Object o = ae.getSource();
		if(o==bt21) {
			//查询来宾信息
			String cz = tf21.getText();
			String sqlCode = "select c_name 宾客姓名,sex 性别,zj_type 证件类型,zj_no 证件编号,address 详细地址 "+
							 "from livein where delmark = 0 and (c_name like '%"+cz+"%' or zj_no like '%"+cz+"%')";
			sunsql.initDTM(dtm2,sqlCode);
		}
		else if(o==bt22) {
			//刷新来宾信息
			initDTM2();
		}
		
	}
	
	/**=======================================================================**
	 *			MouseListener 监听
	 **=======================================================================**
	 */
	public void mouseClicked (MouseEvent me) {
	}

	public void mousePressed (MouseEvent me) {
	}

	public void mouseReleased(MouseEvent me) {
	}

	public void mouseEntered (MouseEvent me) {		//鼠标移进提示
		Object o = me.getSource ();
		if(o == bt21) {
			HotelFrame.lbA.setText (HotelFrame.clue + 
			"查询来宾信息　　      　　　　　　　　　　　　　　　　　 　");
		}else if(o == bt22) {
			HotelFrame.lbA.setText (HotelFrame.clue + 
			"刷新来宾信息　　      　　　　　　　　　　　　　　　　　 　");
		}
	}

	public void mouseExited (MouseEvent me) {
		HotelFrame.lbA.setText (HotelFrame.clue + "请选择功能项 ...   　　　　　　　　　　　　　　　　　　　　");
	}
}