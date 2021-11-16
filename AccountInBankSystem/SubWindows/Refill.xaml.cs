using System;
using System.Windows;
using BankSystem;

namespace AccountInBankSystem.SubWindows
{   
    public partial class Refill : Window
    {
        public Client<long, int> Client;
        public Refill()
        {
            InitializeComponent();
            Client = new Client<long, int>();
        }

        private void RefillClick(object sender, RoutedEventArgs e)
        {
            try
            {
                if (IsNumberContains(AccountNumber.Text))
                {
                    throw new SymbolException("Номер счета не может содержать буквы");
                }
                int tmp = 0;
                for (int i = 0; i < DBClients.clients.Count; i++)
                {
                    if (DBClients.clients[i].Equals(Client))
                    {
                        for (int j = 0; j < DBClients.clients[i].Accounts.Count; j++)
                        {
                            if (AccountNumber.Text.Equals(DBClients.clients[i].Accounts[j].AccountNumber))
                            {
                                tmp = DBClients.clients[i].Accounts[j].Balance;
                                for (int k = 0; k < DBClients.clients[i].Deposits.Count; k++)
                                {
                                    if (DBClients.clients[i].Accounts[j].AccountNumber.Equals(DBClients.clients[i].Deposits[k].AccountNumber))
                                    {
                                        DBClients.clients[i].Refill(Convert.ToInt64(AccountNumber.Text), tmp, Convert.ToInt32(Sum.Text), "д");
                                    }
                                    else DBClients.clients[i].Refill(Convert.ToInt64(AccountNumber.Text), tmp, Convert.ToInt32(Sum.Text), "нд");
                                }

                            }

                        }
                    }
                }
            }
            catch (SymbolException error)
            {
                MessageBox.Show(error.Message);
            }
        }
        static bool IsNumberContains(string input)
        {
            foreach (char c in input)
                if (Char.IsLetter(c))
                    return true;
            return false;
        }
    }
}
