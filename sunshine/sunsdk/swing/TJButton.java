/**
 *##############################################################################
 *
 *	[ 项目名      ]  : 酒店管理系统
 *	[ 模块名      ]  : 制作带ICO和气泡提示的按键
 *	[ 文件名      ]  : TJButton.java
 *	[ 相关文件    ]  : 
 *	[ 文件实现功能]  : 制作带ICO和气泡提示的按键
 *	[ 作者        ]  : 籍子淇
 *	[ 版本        ]  : 1.1
 *	----------------------------------------------------------------------------
 *	[ 备注        ]  : 
 *	----------------------------------------------------------------------------
 *	[ 修改记录    ]  : 
 *
 *	[ 日  期 ]     [版本]         [修改人]         [修改内容] 
 *	2020/11/30      1.0             籍子淇            创建
 *	2020/12/06      1.1             籍子淇            增加构造函数
 *	2020/12/19      1.1             籍子淇            增加监听效果
 *	--------------------------------------------------------------------------##
 *	
 *	[ 函数说明    ]  :
 *
 *	[## public TJButton(String picName, String text, String toolTip) {} ]:
 *		功能: 构造函数	制作带ICO和气泡提示的按键
 *
 *	[## public TJButton(String picName, String text, String toolTip,boolean flag) {} ]:
 *		功能: 制作带ICO和气泡提示的工具栏按键
 *
 *	[## private buildButton(String picName, String text, String toolTip,boolean flag) {} ]:
 *		功能: 制作带ICO和气泡提示的工具栏按键,仅类内使用
 *
 *
 *##############################################################################
 */
package com.sunshine.sunsdk.swing;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class TJButton 
extends JButton 
implements MouseListener {
	
	/**=======================================================================**
	 *		[## public TJButton(String picName, String text, String toolTip) {} ]
	 *			构造函数
	 *			参数   ：String picName 表示按键上的ICO文件名
	 *					 String text 表示按键的名称
	 *					 String toolTip 表示按键的ToolTip标示
	 *			返回值 ：无
	 *			修饰符 ：public
	 *			功能   ：制作带ICO和气泡提示的按键
	 **=======================================================================**
	 */
	public TJButton(String picName, String text, String toolTip) {
		buildButton(picName, text, toolTip, false);
	}
	
	/**=======================================================================**
	 *		[## public TJButton(String picName, String text, String toolTip,boolean flag) {} ]
	 *			构造函数
	 *			参数   ：String picName 表示按键上的ICO文件名
	 *					 String text 表示按键的名称
	 *					 String toolTip 表示按键的ToolTip标示
	 *					 boolean 表示按键为大图标工具栏模式
	 *			返回值 ：无
	 *			修饰符 ：public
	 *			功能   ：制作带ICO和气泡提示的工具栏按键
	 **=======================================================================**
	 */
	public TJButton(String picName, String text, String toolTip,boolean flag) {
		buildButton(picName, text, toolTip, flag);
	}
	
	/**=======================================================================**
	 *		[## private buildButton(String picName, String text, String toolTip,boolean flag) {} ]
	 *			制作按键函数
	 *			参数   ：String picName 表示按键上的ICO文件名
	 *					 String text 表示按键的名称
	 *					 String toolTip 表示按键的ToolTip标示
	 *					 boolean 表示按键为大图标工具栏模式
	 *			返回值 ：无
	 *			修饰符 ：private
	 *			功能   ：制作带ICO和气泡提示的工具栏按键,仅类内使用
	 **=======================================================================**
	 */
	private void buildButton(String picName, String text, String toolTip,boolean flag) {
		this.setIcon (new ImageIcon (picName));
		this.setText (text);
		this.setToolTipText (toolTip);
		if(flag) {
			//this.setBorderPainted (false);
			this.setContentAreaFilled(false);		//设置背景色透明
			this.setHorizontalTextPosition (SwingConstants.CENTER);//设置标签文本相对图像水平位置
			this.setVerticalTextPosition (SwingConstants.BOTTOM);//设置标签文本相对图像垂直位置
		}//End if(flag)
		this.addMouseListener(this);
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

	public void mouseEntered (MouseEvent me) {
		this.setForeground(new Color(255, 0, 255));//选中后字体颜色
		this.setBackground(new Color(234, 223, 203));//选中后按钮颜色
	}

	public void mouseExited (MouseEvent me) {
		this.setForeground(new Color( 0,  87,  47));//穿过后字体颜色
		this.setBackground(new Color(231, 215, 183));//穿过后按钮颜色
	}
}