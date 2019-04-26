; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Krypton Toolkit Suite for .NET 4.7"
!define PRODUCT_VERSION "5.470.872"
!define PRODUCT_PUBLISHER "Krypton Contributors"
!define PRODUCT_WEB_SITE "https://wagnerp.github.io/Krypton-NET-5.470/"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\AppMainExe.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "..\..\Assets\ICO\Square Design\48 x 48\Square Design 48 x 48 Green.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "P:\Development\Krypton Releases\5.470\License\License.rtf"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\Binaries\Examples\Krypton Explorer.exe"
!define MUI_FINISHPAGE_SHOWREADME "$INSTDIR\License\License.rtf"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "Krypton Toolkit Suite Demos Setup.exe"
InstallDir "$PROGRAMFILES\Krypton Toolkit Suite for .NET 4.7"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show
BrandingText 'Krypton Toolkit Suite for .NET 4.7'

Function onGUIInit
  Aero::Apply
FunctionEnd

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite ifnewer
  SetOutPath "$INSTDIR\Binaries\DLLs"
  SetOverwrite try
  File "P:\Development\Krypton Releases\5.470\Binaries\DLLs\Krypton Docking.dll"
  File "P:\Development\Krypton Releases\5.470\Binaries\DLLs\Krypton Docking.xml"
  File "P:\Development\Krypton Releases\5.470\Binaries\DLLs\Krypton Navigator.dll"
  File "P:\Development\Krypton Releases\5.470\Binaries\DLLs\Krypton Navigator.xml"
  File "P:\Development\Krypton Releases\5.470\Binaries\DLLs\Krypton Ribbon.dll"
  File "P:\Development\Krypton Releases\5.470\Binaries\DLLs\Krypton Ribbon.xml"
  File "P:\Development\Krypton Releases\5.470\Binaries\DLLs\Krypton Toolkit.dll"
  File "P:\Development\Krypton Releases\5.470\Binaries\DLLs\Krypton Toolkit.xml"
  File "P:\Development\Krypton Releases\5.470\Binaries\DLLs\Krypton Workspace.dll"
  SetOutPath "$INSTDIR\Binaries\Examples"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Advanced Page Drag and Drop.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Application Menu.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Auto Shrinking Groups.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Basic Events.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Basic Page Drag and Drop.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Button Spec Playground.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Cell Maximize and Restore.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Child Control Stack.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Contextual Tabs.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Custom Control Using Palettes.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Custom Control Using Renderers.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Docking Customized.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Docking Flags.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Docking Persistence.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Expanding Header Groups DockStyle Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Expanding Header Groups Splitters Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Expanding Header Groups Stack Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Expanding Pages.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\External Drag to Docking.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Input Form Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Key Tips and Keyboard Access.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Border Edge Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Bread Crumb Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Button Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Checkbox Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton CheckButton Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Checked ListBox Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton CheckSet Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton ColorButton Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton ComboBox Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Command Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Context Menu Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Data GridView Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton DateTimePicker Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Docking.dll"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Domain UpDown Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton DropButton Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Explorer.exe"
  CreateShortCut "$DESKTOP.lnk" "$INSTDIR\Binaries\Examples\Krypton Explorer.exe"
  CreateShortCut "$STARTMENU.lnk" "$INSTDIR\Binaries\Examples\Krypton Explorer.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Form Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Gallery Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Group Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton GroupBox Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Header Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Header Group Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton InputBox Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Label Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Link Label Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton ListBox Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Masked TextBox Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton MessageBox Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Month Calendar Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Navigator.dll"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Numeric UpDown Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Palette Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Panel Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton RadioButton Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Ribbon.dll"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Rich TextBox Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Separator Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Split Container Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton TaskDialog Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton TextBox Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Toolkit.dll"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton TrackBar Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton TreeView Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Workspace.dll"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Krypton Wrap Label Examples.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\MDI Application.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\MDI Ribbon.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Memo Editor.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Multi Control Docking.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Navigator and Floating Windows.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Navigator Context Menus.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Navigator Modes.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Navigator Palettes.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Navigator Playground.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Navigator Tool Tips.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\OneNote Tabs.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Orientation Plus Alignment.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Outlook Mail Clone.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Outlook Mockup.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Palette Designer.exe"
  CreateShortCut "$DESKTOP.lnk" "$INSTDIR\Binaries\Examples\Palette Designer.exe"
  CreateShortCut "$STARTMENU.lnk" "$INSTDIR\Binaries\Examples\Palette Designer.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Palette Upgrade Tool.exe"
  CreateShortCut "$DESKTOP.lnk" "$INSTDIR\Binaries\Examples\Palette Upgrade Tool.exe"
  CreateShortCut "$STARTMENU.lnk" "$INSTDIR\Binaries\Examples\Palette Upgrade Tool.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Per Tab Buttons.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Popup Pages.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Quick Access Toolbar.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Ribbon and Navigator and Workspace.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Ribbon Controls.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Ribbon Gallery.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Ribbon Tool Tips.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Singleline Plus Multiline.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Standard Docking.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\System Themed Forms.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Tab Border Styles.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Test Clip Base.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Test MessageBox Clipping.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Test Text Clipping.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\TestApp.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Three Pane Application Basic.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Three Pane Application Extended.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\User Page Creation.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Workspace Cell Layout.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Workspace Cell Modes.exe"
  File "P:\Development\Krypton Releases\5.470\Binaries\Examples\Workspace Persistence.exe"
  SetOutPath "$INSTDIR\Binaries\PDBs"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Advanced Page Drag and Drop.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Application Menu.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Auto Shrinking Groups.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Basic Events.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Basic Page Drag and Drop.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Button Spec Playground.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Cell Maximize and Restore.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Child Control Stack.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Contextual Tabs.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Custom Control Using Palettes.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Custom Control Using Renderers.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Docking Customized.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Docking Flags.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Docking Persistence.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Expanding Header Groups DockStyle Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Expanding Header Groups Splitters Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Expanding Header Groups Stack Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Expanding Pages.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\External Drag to Docking.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Input Form Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Key Tips and Keyboard Access.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Border Edge Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Bread Crumb Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Button Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Checkbox Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton CheckButton Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Checked ListBox Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton CheckSet Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton ColorButton Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton ComboBox Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Command Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Context Menu Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Data GridView Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton DateTimePicker Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Docking.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Domain UpDown Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton DropButton Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Explorer.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Form Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Gallery Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Group Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton GroupBox Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Header Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Header Group Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton InputBox Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Label Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Link Label Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton ListBox Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Masked TextBox Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton MessageBox Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Month Calendar Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Navigator.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Numeric UpDown Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Palette Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Panel Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton RadioButton Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Ribbon.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Rich TextBox Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Separator Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Split Container Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton TaskDialog Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton TextBox Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Toolkit.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton TrackBar Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton TreeView Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Workspace.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Krypton Wrap Label Examples.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\MDI Application.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\MDI Ribbon.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Memo Editor.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Multi Control Docking.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Navigator and Floating Windows.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Navigator Context Menus.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Navigator Modes.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Navigator Palettes.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Navigator Playground.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Navigator Tool Tips.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\OneNote Tabs.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Orientation Plus Alignment.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Outlook Mail Clone.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Outlook Mockup.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Palette Designer.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Palette Upgrade Tool.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Per Tab Buttons.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Popup Pages.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Quick Access Toolbar.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Ribbon and Navigator and Workspace.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Ribbon Controls.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Ribbon Gallery.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Ribbon Tool Tips.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Singleline Plus Multiline.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Standard Docking.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\System Themed Forms.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Tab Border Styles.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Test Clip Base.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Test MessageBox Clipping.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Test Text Clipping.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\TestApp.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Three Pane Application Basic.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Three Pane Application Extended.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\User Page Creation.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Workspace Cell Layout.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Workspace Cell Modes.pdb"
  File "P:\Development\Krypton Releases\5.470\Binaries\PDBs\Workspace Persistence.pdb"
  SetOutPath "$INSTDIR\Help"
  File "P:\Development\Krypton Releases\5.470\Help\Krypton Toolkit Help.chm"
  CreateDirectory "$SMPROGRAMS\Krypton Toolkit Suite for .NET 4.7"
  CreateShortCut "$SMPROGRAMS\Krypton Toolkit Suite for .NET 4.7\Help.lnk" "$INSTDIR\Help\Krypton Toolkit Help.chm"
  SetOutPath "$INSTDIR\License"
  File "P:\Development\Krypton Releases\5.470\License\License.rtf"
  SetOutPath "$INSTDIR\NuGet"
  File "P:\Development\Krypton Releases\5.470\NuGet\KryptonToolkitSuite5470.nupkg"
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\Krypton Toolkit Suite for .NET 4.7\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\Krypton Toolkit Suite for .NET 4.7\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\AppMainExe.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\AppMainExe.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\NuGet\KryptonToolkitSuite5470.nupkg"
  Delete "$INSTDIR\License\License.rtf"
  Delete "$INSTDIR\Help\Krypton Toolkit Help.chm"
  Delete "$INSTDIR\Binaries\PDBs\Workspace Persistence.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Workspace Cell Modes.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Workspace Cell Layout.pdb"
  Delete "$INSTDIR\Binaries\PDBs\User Page Creation.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Three Pane Application Extended.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Three Pane Application Basic.pdb"
  Delete "$INSTDIR\Binaries\PDBs\TestApp.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Test Text Clipping.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Test MessageBox Clipping.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Test Clip Base.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Tab Border Styles.pdb"
  Delete "$INSTDIR\Binaries\PDBs\System Themed Forms.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Standard Docking.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Singleline Plus Multiline.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Ribbon Tool Tips.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Ribbon Gallery.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Ribbon Controls.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Ribbon and Navigator and Workspace.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Quick Access Toolbar.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Popup Pages.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Per Tab Buttons.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Palette Upgrade Tool.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Palette Designer.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Outlook Mockup.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Outlook Mail Clone.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Orientation Plus Alignment.pdb"
  Delete "$INSTDIR\Binaries\PDBs\OneNote Tabs.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Navigator Tool Tips.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Navigator Playground.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Navigator Palettes.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Navigator Modes.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Navigator Context Menus.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Navigator and Floating Windows.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Multi Control Docking.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Memo Editor.pdb"
  Delete "$INSTDIR\Binaries\PDBs\MDI Ribbon.pdb"
  Delete "$INSTDIR\Binaries\PDBs\MDI Application.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Wrap Label Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Workspace.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton TreeView Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton TrackBar Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Toolkit.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton TextBox Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton TaskDialog Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Split Container Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Separator Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Rich TextBox Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Ribbon.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton RadioButton Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Panel Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Palette Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Numeric UpDown Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Navigator.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Month Calendar Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton MessageBox Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Masked TextBox Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton ListBox Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Link Label Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Label Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton InputBox Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Header Group Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Header Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton GroupBox Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Group Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Gallery Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Form Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Explorer.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton DropButton Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Domain UpDown Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Docking.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton DateTimePicker Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Data GridView Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Context Menu Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Command Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton ComboBox Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton ColorButton Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton CheckSet Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Checked ListBox Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton CheckButton Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Checkbox Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Button Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Bread Crumb Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Krypton Border Edge Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Key Tips and Keyboard Access.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Input Form Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\External Drag to Docking.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Expanding Pages.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Expanding Header Groups Stack Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Expanding Header Groups Splitters Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Expanding Header Groups DockStyle Examples.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Docking Persistence.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Docking Flags.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Docking Customized.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Custom Control Using Renderers.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Custom Control Using Palettes.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Contextual Tabs.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Child Control Stack.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Cell Maximize and Restore.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Button Spec Playground.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Basic Page Drag and Drop.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Basic Events.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Auto Shrinking Groups.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Application Menu.pdb"
  Delete "$INSTDIR\Binaries\PDBs\Advanced Page Drag and Drop.pdb"
  Delete "$INSTDIR\Binaries\Examples\Workspace Persistence.exe"
  Delete "$INSTDIR\Binaries\Examples\Workspace Cell Modes.exe"
  Delete "$INSTDIR\Binaries\Examples\Workspace Cell Layout.exe"
  Delete "$INSTDIR\Binaries\Examples\User Page Creation.exe"
  Delete "$INSTDIR\Binaries\Examples\Three Pane Application Extended.exe"
  Delete "$INSTDIR\Binaries\Examples\Three Pane Application Basic.exe"
  Delete "$INSTDIR\Binaries\Examples\TestApp.exe"
  Delete "$INSTDIR\Binaries\Examples\Test Text Clipping.exe"
  Delete "$INSTDIR\Binaries\Examples\Test MessageBox Clipping.exe"
  Delete "$INSTDIR\Binaries\Examples\Test Clip Base.exe"
  Delete "$INSTDIR\Binaries\Examples\Tab Border Styles.exe"
  Delete "$INSTDIR\Binaries\Examples\System Themed Forms.exe"
  Delete "$INSTDIR\Binaries\Examples\Standard Docking.exe"
  Delete "$INSTDIR\Binaries\Examples\Singleline Plus Multiline.exe"
  Delete "$INSTDIR\Binaries\Examples\Ribbon Tool Tips.exe"
  Delete "$INSTDIR\Binaries\Examples\Ribbon Gallery.exe"
  Delete "$INSTDIR\Binaries\Examples\Ribbon Controls.exe"
  Delete "$INSTDIR\Binaries\Examples\Ribbon and Navigator and Workspace.exe"
  Delete "$INSTDIR\Binaries\Examples\Quick Access Toolbar.exe"
  Delete "$INSTDIR\Binaries\Examples\Popup Pages.exe"
  Delete "$INSTDIR\Binaries\Examples\Per Tab Buttons.exe"
  Delete "$INSTDIR\Binaries\Examples\Palette Upgrade Tool.exe"
  Delete "$INSTDIR\Binaries\Examples\Palette Designer.exe"
  Delete "$INSTDIR\Binaries\Examples\Outlook Mockup.exe"
  Delete "$INSTDIR\Binaries\Examples\Outlook Mail Clone.exe"
  Delete "$INSTDIR\Binaries\Examples\Orientation Plus Alignment.exe"
  Delete "$INSTDIR\Binaries\Examples\OneNote Tabs.exe"
  Delete "$INSTDIR\Binaries\Examples\Navigator Tool Tips.exe"
  Delete "$INSTDIR\Binaries\Examples\Navigator Playground.exe"
  Delete "$INSTDIR\Binaries\Examples\Navigator Palettes.exe"
  Delete "$INSTDIR\Binaries\Examples\Navigator Modes.exe"
  Delete "$INSTDIR\Binaries\Examples\Navigator Context Menus.exe"
  Delete "$INSTDIR\Binaries\Examples\Navigator and Floating Windows.exe"
  Delete "$INSTDIR\Binaries\Examples\Multi Control Docking.exe"
  Delete "$INSTDIR\Binaries\Examples\Memo Editor.exe"
  Delete "$INSTDIR\Binaries\Examples\MDI Ribbon.exe"
  Delete "$INSTDIR\Binaries\Examples\MDI Application.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Wrap Label Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Workspace.dll"
  Delete "$INSTDIR\Binaries\Examples\Krypton TreeView Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton TrackBar Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Toolkit.dll"
  Delete "$INSTDIR\Binaries\Examples\Krypton TextBox Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton TaskDialog Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Split Container Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Separator Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Rich TextBox Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Ribbon.dll"
  Delete "$INSTDIR\Binaries\Examples\Krypton RadioButton Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Panel Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Palette Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Numeric UpDown Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Navigator.dll"
  Delete "$INSTDIR\Binaries\Examples\Krypton Month Calendar Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton MessageBox Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Masked TextBox Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton ListBox Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Link Label Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Label Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton InputBox Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Header Group Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Header Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton GroupBox Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Group Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Gallery Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Form Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Explorer.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton DropButton Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Domain UpDown Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Docking.dll"
  Delete "$INSTDIR\Binaries\Examples\Krypton DateTimePicker Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Data GridView Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Context Menu Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Command Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton ComboBox Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton ColorButton Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton CheckSet Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Checked ListBox Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton CheckButton Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Checkbox Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Button Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Bread Crumb Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Krypton Border Edge Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Key Tips and Keyboard Access.exe"
  Delete "$INSTDIR\Binaries\Examples\Input Form Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\External Drag to Docking.exe"
  Delete "$INSTDIR\Binaries\Examples\Expanding Pages.exe"
  Delete "$INSTDIR\Binaries\Examples\Expanding Header Groups Stack Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Expanding Header Groups Splitters Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Expanding Header Groups DockStyle Examples.exe"
  Delete "$INSTDIR\Binaries\Examples\Docking Persistence.exe"
  Delete "$INSTDIR\Binaries\Examples\Docking Flags.exe"
  Delete "$INSTDIR\Binaries\Examples\Docking Customized.exe"
  Delete "$INSTDIR\Binaries\Examples\Custom Control Using Renderers.exe"
  Delete "$INSTDIR\Binaries\Examples\Custom Control Using Palettes.exe"
  Delete "$INSTDIR\Binaries\Examples\Contextual Tabs.exe"
  Delete "$INSTDIR\Binaries\Examples\Child Control Stack.exe"
  Delete "$INSTDIR\Binaries\Examples\Cell Maximize and Restore.exe"
  Delete "$INSTDIR\Binaries\Examples\Button Spec Playground.exe"
  Delete "$INSTDIR\Binaries\Examples\Basic Page Drag and Drop.exe"
  Delete "$INSTDIR\Binaries\Examples\Basic Events.exe"
  Delete "$INSTDIR\Binaries\Examples\Auto Shrinking Groups.exe"
  Delete "$INSTDIR\Binaries\Examples\Application Menu.exe"
  Delete "$INSTDIR\Binaries\Examples\Advanced Page Drag and Drop.exe"
  Delete "$INSTDIR\Binaries\DLLs\Krypton Workspace.dll"
  Delete "$INSTDIR\Binaries\DLLs\Krypton Toolkit.xml"
  Delete "$INSTDIR\Binaries\DLLs\Krypton Toolkit.dll"
  Delete "$INSTDIR\Binaries\DLLs\Krypton Ribbon.xml"
  Delete "$INSTDIR\Binaries\DLLs\Krypton Ribbon.dll"
  Delete "$INSTDIR\Binaries\DLLs\Krypton Navigator.xml"
  Delete "$INSTDIR\Binaries\DLLs\Krypton Navigator.dll"
  Delete "$INSTDIR\Binaries\DLLs\Krypton Docking.xml"
  Delete "$INSTDIR\Binaries\DLLs\Krypton Docking.dll"
  Delete "$INSTDIR\Example.file"
  Delete "$INSTDIR\AppMainExe.exe"

  Delete "$SMPROGRAMS\Krypton Toolkit Suite for .NET 4.7\Uninstall.lnk"
  Delete "$SMPROGRAMS\Krypton Toolkit Suite for .NET 4.7\Website.lnk"
  Delete "$SMPROGRAMS\Krypton Toolkit Suite for .NET 4.7\Help.lnk"
  Delete "$STARTMENU.lnk"
  Delete "$DESKTOP.lnk"
  Delete "$STARTMENU.lnk"
  Delete "$DESKTOP.lnk"
  Delete "$STARTMENU.lnk"
  Delete "$DESKTOP.lnk"

  RMDir "$SMPROGRAMS\Krypton Toolkit Suite for .NET 4.7"
  RMDir "$INSTDIR\NuGet"
  RMDir "$INSTDIR\License"
  RMDir "$INSTDIR\Help"
  RMDir "$INSTDIR\Binaries\PDBs"
  RMDir "$INSTDIR\Binaries\Examples"
  RMDir "$INSTDIR\Binaries\DLLs"
  RMDir "$INSTDIR"
  RMDir ""

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
  
  
SectionEnd