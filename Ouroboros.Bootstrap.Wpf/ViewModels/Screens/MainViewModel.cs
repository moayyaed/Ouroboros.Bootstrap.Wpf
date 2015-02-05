﻿using PropertyChanged;

namespace Ouroboros.Bootstrap.Wpf.ViewModels.Screens
{
    [ImplementPropertyChanged]
    public class MainViewModel
    {
        public string Content { get; set; }

        public MainViewModel()
        {
            this.Content = "Hello World!";
        }
    }
}
