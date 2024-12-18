﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using MaterialDesignThemes.Wpf;
using Prism.Events;


namespace DailyApp.WPF.Views
{
    /// <summary>
    /// MainWin.xaml 的交互逻辑
    /// </summary>
    public partial class MainWin : Window
    {

        public MainWin()
        {
            InitializeComponent();
        }

        /// <summary>
        /// 最小化窗口
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnMin_Click(object sender, RoutedEventArgs e)
        {
            
            WindowState= WindowState.Minimized;
        }

        /// <summary>
        /// 最大化窗口/还原
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnMax_Click(object sender, RoutedEventArgs e)
        {
            if (WindowState == WindowState.Maximized)
            {
                WindowState = WindowState.Normal;
            }
            else
            {
                WindowState = WindowState.Maximized;
            }
        }

        /// <summary>
        /// 关闭
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            Environment.Exit(0);
        }

        /// <summary>
        /// 鼠标双击
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void ColorZone_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (WindowState == WindowState.Maximized)
            {
                WindowState = WindowState.Normal;
            }
            else
            {
                WindowState = WindowState.Maximized;
            }
        }

        /// <summary>
        /// 左侧菜单 选项改变
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void lbMenu_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //菜单移开
            drawerHost.IsLeftDrawerOpen = false;
        }

        private void LogoutButton_Click(object sender, RoutedEventArgs e)
        {
            // 获取可执行文件的路径
            string exePath = System.IO.Path.Combine(
                System.IO.Path.GetDirectoryName(Application.ResourceAssembly.Location),
                "DailyApp.WPF.exe");

            // 退出当前应用程序
            Application.Current.Shutdown();

            // 启动新的应用程序实例
            Process.Start(exePath);


        }
    }
}
