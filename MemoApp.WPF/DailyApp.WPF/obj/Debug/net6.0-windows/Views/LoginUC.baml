   M S B A M L   `   `   `  ����G  CDailyApp.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:DailyApp.WPF.ViewsDailyApp.WPF.Views  5      A%clr-namespace:DailyApp.WPF.ExtensionsDailyApp.WPF.Extensions  5           DailyApp.WPF.Views.LoginUC   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:DailyApp.WPF.Views     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a:md1http://materialdesigninxaml.net/winfx/xaml/themes  5	      [ WPrism.DryIoc.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59T	 PPrism.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/  	 5
      3pwdEx%clr-namespace:DailyApp.WPF.Extensions  	 5      $	��350��5      $	��600��6   # 	 Prism.Services.Dialogs.Dialog    WindowStyle  5      �� 5   
    �� 
TargetType" �6   .�5      ��  �� Property � �� �� Value$	 600��6&   �� 5       � ��$	 350��6'   �� 5       �@�SizeToContent$ WidthAndHeight=�6.   �� 5       �@�
ResizeMode$ NoResize=�6+   �� 5       �@ WindowStartupLocation$ CenterScreen=�6C   5      .��5      � 
������� � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   .+�5   
   '  !MaterialDesignThemes.Wpf.Snackbar  -   5          Name$ RegLoginBar��5      $��2��6+      MessageQueue 6?   4  .MaterialDesignThemes.Wpf.MessageQueueExtension  6b   �� 5    
   $��/Images/login.png��6   7  1MaterialDesignThemes.Wpf.Transitions.Transitioner  5"   
   $��1��6    �� SelectedIndex 6*   �� *SelectedIndex+ �� FallbackValue$ 0��.@�5$      <  6MaterialDesignThemes.Wpf.Transitions.TransitionerSlide  .��5%      ]� $��15q�6   $��Center=�6(   .+�5&      �� $��备忘录管家��6    $��FangSong)�6-   $
��Bold"�6D   	 �� TextAlignment$	 Center=�6V   $	��Top=�6n   $��33(�6�   $
��0,10q�6�   6�   �� 5'      $
��0,10q�6   )  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 请输入账号��6-   $	��Top=�6H   ��6]   �� *	Account+6x   G� 5)      $
��0,10q�6#   $
 请输入密码��5*   #   $	��Top=�5+   #   .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton$
 True��5-   #    /  +MaterialDesignFloatingHintRevealPasswordBox#��[  5/   #   /   )DailyApp.WPF.Extensions.PasswordBoxExtend
   Pwd 5,   #   �� *Pwd+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�{�5.   #   ��  �� ElementName$# RevealPasswordFloatingEnabled�� �� Path$ 	IsChecked�*	  $Microsoft.Xaml.Behaviors.Interaction 	  	Behaviors 50      1
   +DailyApp.WPF.Extensions.PasswordBoxBehavior
  51      6:    � 	Resources 53      '  !MaterialDesignThemes.Wpf.PackIcon �� BasedOn��%   '        7 �� 54      "  6$   8   .�55   "   ��  � ��$ 15��6:   �� 56   "    � ��$ 15��6;   57      58      59      �� 5:      $��登录系统��6   $	��Top=�6-   ��6B   �� *
LoginCmm+6a   ]� 5<      $	��0,5q�6    $��False��6.   .+�5=      �� $��注册账号��6$    	  Triggers 5>      +  %Microsoft.Xaml.Behaviors.EventTrigger  5?   "      	EventName$ MouseLeftButtonDown��61   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5@   &   2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command 6<   �� *ShowRegInfoCmm+6a   5A   #   5C      �� 5E      $��忘记密码?��6$   $��Right=�61   6J   5F      5G      5H        5J      .��5K      ]� $��15q�6   $��Center=�6(   .+�5L      �� $��注册账号��6    $
��Bold"�6,   $	��Top=�6>   $��22(�6S   $
��0,10q�6a   6q   �� 5M      $
��0,10q�6   $
 请输入姓名��6-   $	��Top=�6H   ��6^   �� *AccountInfoDTO.Name+6�   �� 5N      $
��0,10q�6   $
 请输入账号��6-   $	��Top=�6H   ��6]   �� *AccountInfoDTO.Account+6�   G� 5O      $
��0,10q�6#   $
 请输入密码��61   $	��Top=�6M    6b   �� *AccountInfoDTO.Pwd+$ TwoWay=�$ PropertyChanged=� 5P      
  5Q      6:   5S      G� 5T      $
��0,10q�6#   $
 请再次输入密码��61   $	��Top=�6O    6d   �� *AccountInfoDTO.ConfirmPwd+$ TwoWay=�$ PropertyChanged=� 5U      
  5V      6:   5X      �� 5Y      $��注册账号��6   $	��Top=�6,   ��6A   �� *RegCmm+6^   �� 5Z      $��返回登录��6   $
��0,10q�6,   $	��Top=�6:      MaterialDesignOutlinedButton#��[ 6u   ��6O   �� *ShowLoginInfoCmm+6�   5[      5\      5]      5^      5_      