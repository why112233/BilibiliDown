Set WshShell = WScript.CreateObject("WScript.Shell")
strCurFolder = createobject("Scripting.FileSystemObject").GetFolder(".").Path '��ǰ·��
strDesktop = WshShell.SpecialFolders("Desktop") '�����ļ��С����桱
'Rem �����洴��һ��BilibiliDown��ݷ�ʽ
set oShellLink = WshShell.CreateShortcut(strDesktop & "\Bili ������.lnk")
oShellLink.TargetPath = strCurFolder & "\Double-Click-to-Run-for-Win.bat"  '��ִ���ļ�·��
oShellLink.Arguments = "" '����Ĳ���
oShellLink.WindowStyle = 7 '����1Ĭ�ϴ��ڼ������3��󻯼������7��С��
oShellLink.Hotkey = ""  '��ݼ�
oShellLink.IconLocation = strCurFolder &"\config\favicon.ico"  'ͼ��
oShellLink.Description = "Bili ������."  '��ע
oShellLink.WorkingDirectory = strCurFolder  '��ʼλ��
oShellLink.Save  '���������ݷ�ʽ 