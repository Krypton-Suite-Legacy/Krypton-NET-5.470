﻿// *****************************************************************************
// BSD 3-Clause License (https://github.com/ComponentFactory/Krypton/blob/master/LICENSE)
//  © Component Factory Pty Ltd, 2006-2019, All rights reserved.
// The software and associated documentation supplied hereunder are the 
//  proprietary information of Component Factory Pty Ltd, 13 Swallows Close, 
//  Mornington, Vic 3931, Australia and are supplied subject to licence terms.
// 
//  Modifications by Peter Wagner(aka Wagnerp) & Simon Coghlan(aka Smurf-IV) 2017 - 2019. All rights reserved. (https://github.com/Wagnerp/Krypton-NET-5.470)
//  Version 5.470.0.0  www.ComponentFactory.com
// *****************************************************************************

using System.Windows.Forms;
using System.Diagnostics;
using ComponentFactory.Krypton.Toolkit;

namespace ComponentFactory.Krypton.Ribbon
{
	/// <summary>
	/// Process mouse events for a ribbon group track bar.
	/// </summary>
    internal class TrackBarController : GlobalId,
                                        ISourceController,
                                        IKeyController,
                                        IRibbonKeyTipTarget
	{
		#region Instance Fields
        private readonly KryptonRibbon _ribbon;
        private readonly KryptonRibbonGroupTrackBar _trackBar;
        private readonly ViewDrawRibbonGroupTrackBar _target;
        #endregion

		#region Identity
		/// <summary>
        /// Initialize a new instance of the TrackBarController class.
		/// </summary>
        /// <param name="ribbon">Reference to owning ribbon instance.</param>
        /// <param name="trackBar">Source definition.</param>
        /// <param name="target">Target view element.</param>
        public TrackBarController(KryptonRibbon ribbon,
                                  KryptonRibbonGroupTrackBar trackBar,
                                  ViewDrawRibbonGroupTrackBar target)
		{
            Debug.Assert(ribbon != null);
            Debug.Assert(trackBar != null);
            Debug.Assert(target != null);

            _ribbon = ribbon;
            _trackBar = trackBar;
            _target = target;
        }
		#endregion

        #region Focus Notifications
        /// <summary>
        /// Source control has got the focus.
        /// </summary>
        /// <param name="c">Reference to the source control instance.</param>
        public void GotFocus(Control c)
        {
            if ((_trackBar.LastTrackBar!= null) &&
                (_trackBar.LastTrackBar.CanFocus))
            {
                _ribbon.LostFocusLosesKeyboard = false;
                _trackBar.LastTrackBar.Focus();
            }
        }

        /// <summary>
        /// Source control has lost the focus.
        /// </summary>
        /// <param name="c">Reference to the source control instance.</param>
        public void LostFocus(Control c)
        {
        }
        #endregion

        #region Key Notifications
        /// <summary>
        /// Key has been pressed down.
        /// </summary>
        /// <param name="c">Reference to the source control instance.</param>
        /// <param name="e">A KeyEventArgs that contains the event data.</param>
        public void KeyDown(Control c, KeyEventArgs e)
        {
            // Get the root control that owns the provided control
            c = _ribbon.GetControllerControl(c);

            switch (c)
            {
                case KryptonRibbon rib:
                    KeyDownRibbon(rib, e);
                    break;
                case VisualPopupGroup pop:
                    KeyDownPopupGroup(pop, e);
                    break;
                case VisualPopupMinimized min:
                    KeyDownPopupMinimized(min, e);
                    break;
            }
        }

        /// <summary>
        /// Key has been pressed.
        /// </summary>
        /// <param name="c">Reference to the source control instance.</param>
        /// <param name="e">A KeyPressEventArgs that contains the event data.</param>
        public void KeyPress(Control c, KeyPressEventArgs e)
        {
        }

        /// <summary>
        /// Key has been released.
        /// </summary>
        /// <param name="c">Reference to the source control instance.</param>
        /// <param name="e">A KeyEventArgs that contains the event data.</param>
        /// <returns>True if capturing input; otherwise false.</returns>
        public bool KeyUp(Control c, KeyEventArgs e)
        {
            return false;
        }
        #endregion

        #region KeyTipSelect
        /// <summary>
        /// Perform actual selection of the item.
        /// </summary>
        /// <param name="ribbon">Reference to owning ribbon instance.</param>
        public void KeyTipSelect(KryptonRibbon ribbon)
        {
            // Can the trackbar take the focus
            if (_trackBar.LastTrackBar.CanFocus)
            {
                // Prevent the ribbon from killing keyboard mode when it loses the focus,
                // as this causes the tracking windows to be killed and we want them kept
                ribbon.LostFocusLosesKeyboard = false;

                // Prevent the restore of focus when we fill the keyboard mode, as the focus
                // has been placed on the trackbar and so focus is allowed to change
                ribbon.IgnoreRestoreFocus = true;

                // Exit the use of keyboard mode
                ribbon.KillKeyboardMode();

                // Push focus to the specified target control
                _trackBar.LastTrackBar.Focus();
                // Ensure that the previous ribbon focus is restored when the popup window is dismissed

                // If the trackbar is inside a popup window
                if (_trackBar.LastParentControl is VisualPopupGroup popupGroup)
                {
                    popupGroup.RestorePreviousFocus = true;
                }
            }
        }
        #endregion

        #region Implementation
        private void KeyDownRibbon(KryptonRibbon ribbon, KeyEventArgs e)
        {
            ViewBase newView = null;

            switch (e.KeyData)
            {
                case Keys.Tab | Keys.Shift:
                case Keys.Left:
                    // Get the previous focus item for the currently selected page
                    newView = ribbon.GroupsArea.ViewGroups.GetPreviousFocusItem(_target) ?? ribbon.TabsArea.LayoutTabs.GetViewForRibbonTab(ribbon.SelectedTab);

                    // Got to the actual tab header
                    break;
                case Keys.Tab:
                case Keys.Right:
                    // Get the next focus item for the currently selected page
                    newView = (ribbon.GroupsArea.ViewGroups.GetNextFocusItem(_target) ?? ribbon.TabsArea.ButtonSpecManager.GetFirstVisibleViewButton(PaletteRelativeEdgeAlign.Far)) ??
                              ribbon.TabsArea.ButtonSpecManager.GetFirstVisibleViewButton(PaletteRelativeEdgeAlign.Inherit);

                    // Move across to any far defined buttons

                    // Move across to any inherit defined buttons

                    // Rotate around to application button
                    if (newView == null)
                    {
                        if (ribbon.TabsArea.LayoutAppButton.Visible)
                        {
                            newView = ribbon.TabsArea.LayoutAppButton.AppButton;
                        }
                        else if (ribbon.TabsArea.LayoutAppTab.Visible)
                        {
                            newView = ribbon.TabsArea.LayoutAppTab.AppTab;
                        }
                    }                        
                    break;
            }

            // If we have a new view to focus and it is not ourself...
            if ((newView != null) && (newView != _target))
            {
                // If the new view is a tab then select that tab unless in minimized mode
                if (!ribbon.RealMinimizedMode && (newView is ViewDrawRibbonTab tab))
                {
                    ribbon.SelectedTab = tab.RibbonTab;
                }

                // Finally we switch focus to new view
                ribbon.FocusView = newView;
            }
        }

        private void KeyDownPopupGroup(VisualPopupGroup popupGroup, KeyEventArgs e)
        {
            switch (e.KeyData)
            {
                case Keys.Tab | Keys.Shift:
                case Keys.Left:
                    popupGroup.SetPreviousFocusItem();
                    break;
                case Keys.Tab:
                case Keys.Right:
                    popupGroup.SetNextFocusItem();
                    break;
            }
        }

        private void KeyDownPopupMinimized(VisualPopupMinimized popupMinimized, KeyEventArgs e)
        {
            switch (e.KeyData)
            {
                case Keys.Tab | Keys.Shift:
                case Keys.Left:
                    popupMinimized.SetPreviousFocusItem();
                    break;
                case Keys.Tab:
                case Keys.Right:
                    popupMinimized.SetNextFocusItem();
                    break;
            }
        }
        #endregion
    }
}
