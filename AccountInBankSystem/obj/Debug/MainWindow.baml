   M S B A M L   `   `   `  ����  AccountInBankSystem$    AccountInBankSystem.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��13(�5	   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5
   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � Title$ Банк��5   	   $	��800��6   $	��600��6#    � WindowStartupLocation$ CenterScreen=�6/   .��5      �  � RowDefinitions 5   
   �� 5      $	��57* �6   �� 5      $
��712* �6   .+�5   
   �� $��0��6   $��2q�6#   .+�5      o�  o� 
IsMainMenu . $��0��6%   .@�5      m� $��Меню��6   .@�5      m� -   5        $%��Добавить клиента��5       m� Icon 5      0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ 
AccountAdd=�5      m� 5      -   5        $��Открыть счет��5       5        $
 Plus=�5      m� 5      -   5        $!��Показать счета��5       5        $
 Show=�5       m� 5!      -   5        $;��5Перевод между своими счетами��5!       5"        $ ArrowUpDown=�5#      m� 5$      -   5        $2��,Перевод между клиентами��5$       5%        $ ArrowSplitHorizontal=�5&      m� 5'      -   5        $!��Пополнить счет��5'       5(        $ BookPlusOutline=�5)      m� 5*      -   5        $��Закрыть счет��5*       5+        $ Close=�5,      m� 5-      -   5        $4��.Показать журнал действий��5-       5.        $ 	ShowChart=�5/      �� 50      m� 51      -	   5        $��
Выход��51       52        $ 	ExitToApp=�53      54      55      �� 56      
���   �$��3q�6%   $��1��60   57      �� 59   
   -
   5         ��Name$ dbClient��59      $��1��6&   ��63   �� *Client+	 �� View	 5:      �� 5;      .P�5<      �� $��ID��5>      
 �� DisplayMemberBinding
 5=      �� *Id+5>      �� 5?      $��Фамилия��5A      
 5@      �� *	Surname+5A      �� 5B      $��Имя��5D      
 5C      �� *Name+5D      �� 5E      $��Отчество��5G      
 5F      �� *
Patronimyc+5G      5H      5J      5K      5L      