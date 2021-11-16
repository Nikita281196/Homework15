using System;

namespace BankSystem
{
    public struct MagazineEvent
    {
        public DateTime Key { get; set; }
        public string Value { get; set; }
        public MagazineEvent(DateTime Key, string Value)
        {
            this.Key = Key;
            this.Value = Value;
        }
    }
}
