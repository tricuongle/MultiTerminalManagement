using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using MultiTerminalManagement.Models;

namespace MultiTerminalManagement.Views
{
    public partial class ProfileManagerDialog : Window
    {
        private List<TerminalProfile> _profiles;
        private TerminalProfile _selected;

        public ProfileManagerDialog()
        {
            InitializeComponent();
            _profiles = TerminalProfileStore.Load();
            RefreshList();
        }

        private void RefreshList()
        {
            ProfileList.Items.Clear();
            foreach (var p in _profiles)
                ProfileList.Items.Add(p.Name);

            if (_selected != null)
            {
                int idx = _profiles.IndexOf(_selected);
                if (idx >= 0) ProfileList.SelectedIndex = idx;
            }
        }

        private void ProfileList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int idx = ProfileList.SelectedIndex;
            if (idx < 0 || idx >= _profiles.Count)
            {
                _selected = null;
                ClearForm();
                return;
            }

            _selected = _profiles[idx];
            ProfNameBox.Text = _selected.Name;
            ProfTypeCombo.SelectedIndex = _selected.TerminalType == TerminalType.PowerShell ? 1 : 0;
            ProfDirBox.Text = _selected.DefaultWorkingDirectory ?? "";
            ProfCmdBox.Text = _selected.StartupCommand ?? "";

            // Select color
            for (int i = 0; i < ProfColorCombo.Items.Count; i++)
            {
                if (ProfColorCombo.Items[i] is ComboBoxItem ci && ci.Content?.ToString() == _selected.IconColor)
                {
                    ProfColorCombo.SelectedIndex = i;
                    break;
                }
            }
        }

        private void ClearForm()
        {
            ProfNameBox.Text = "";
            ProfTypeCombo.SelectedIndex = 0;
            ProfDirBox.Text = "";
            ProfCmdBox.Text = "";
            ProfColorCombo.SelectedIndex = 0;
        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            var p = new TerminalProfile { Name = "New Profile" };
            _profiles.Add(p);
            _selected = p;
            RefreshList();
            ProfileList.SelectedIndex = _profiles.Count - 1;
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {
            if (_selected == null) return;
            _profiles.Remove(_selected);
            _selected = null;
            TerminalProfileStore.Save(_profiles);
            RefreshList();
            ClearForm();
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            if (_selected == null) return;
            _selected.Name = ProfNameBox.Text?.Trim() ?? "Profile";
            _selected.TerminalType = ProfTypeCombo.SelectedIndex == 1 ? TerminalType.PowerShell : TerminalType.Cmd;
            _selected.DefaultWorkingDirectory = string.IsNullOrWhiteSpace(ProfDirBox.Text) ? null : ProfDirBox.Text.Trim();
            _selected.StartupCommand = string.IsNullOrWhiteSpace(ProfCmdBox.Text) ? null : ProfCmdBox.Text.Trim();

            if (ProfColorCombo.SelectedItem is ComboBoxItem ci)
                _selected.IconColor = ci.Content?.ToString() ?? "#0e639c";

            TerminalProfileStore.Save(_profiles);
            RefreshList();
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
