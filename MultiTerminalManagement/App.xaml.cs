using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;
using System.Windows.Media;
using MultiTerminalManagement.Models;

namespace MultiTerminalManagement
{
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);
            DispatcherUnhandledException += (s, args) =>
            {
                System.IO.File.AppendAllText("crash.log",
                    $"[{DateTime.Now}] {args.Exception}\n\n");
                MessageBox.Show(args.Exception.ToString(), "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                args.Handled = true;
            };
            AppDomain.CurrentDomain.UnhandledException += (s, args) =>
            {
                System.IO.File.AppendAllText("crash.log",
                    $"[{DateTime.Now}] FATAL: {args.ExceptionObject}\n\n");
            };

            ApplyTheme(AppSettings.Load());
        }

        public static void ApplyTheme(AppSettings settings)
        {
            var res = Current.Resources;
            SetBrush(res, "ThemeAccent", settings.ThemeAccentColor);
            SetBrush(res, "ThemeHeaderBg", settings.ThemeHeaderBg);
            SetBrush(res, "ThemeMainBg", settings.ThemeMainBg);
            SetBrush(res, "ThemeInputBg", settings.ThemeInputBg);
            SetBrush(res, "ThemeText", settings.ThemeTextColor);
            SetBrush(res, "ThemeMutedText", settings.ThemeMutedText);
        }

        private static void SetBrush(ResourceDictionary res, string key, string hex)
        {
            try
            {
                var color = (Color)ColorConverter.ConvertFromString(hex);
                res[key] = new SolidColorBrush(color);
            }
            catch { }
        }
    }

    public class InverseBooleanToVisibilityConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is bool b && b)
                return Visibility.Collapsed;
            return Visibility.Visible;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is Visibility v)
                return v != Visibility.Visible;
            return false;
        }
    }

    public class StringToBrushConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is string colorStr && !string.IsNullOrEmpty(colorStr))
            {
                try
                {
                    var color = (Color)ColorConverter.ConvertFromString(colorStr);
                    return new SolidColorBrush(color);
                }
                catch { }
            }
            return Brushes.Transparent;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return null;
        }
    }
}
