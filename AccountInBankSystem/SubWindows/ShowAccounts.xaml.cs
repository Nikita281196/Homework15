using System.Collections.ObjectModel;
using System.Windows;
using BankSystem;

namespace AccountInBankSystem.SubWindows
{
    public partial class ShowAccounts : Window
    {
        public ObservableCollection<Deposit<long, int>> deposits;
        public ObservableCollection<NotDeposit<long, int>> notdeposits;
        public ShowAccounts()
        {
            InitializeComponent();
            deposits = new ObservableCollection<Deposit<long, int>>();
            notdeposits = new ObservableCollection<NotDeposit<long, int>>();
        }

        private void ShowDepositAccount_Click(object sender, RoutedEventArgs e)
        {
            dbAccount.ItemsSource = deposits;
        }

        private void ShowNotDepositAccount_Click(object sender, RoutedEventArgs e)
        {
            dbAccount.ItemsSource = notdeposits;
        }
    }
}
