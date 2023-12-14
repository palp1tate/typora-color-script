; Typora - 快捷增加字体颜色

#IfWinActive ahk_exe Typora.exe
{
    ; 定义快捷键，使用Ctrl+Alt+组合键添加不同的颜色
    ^!r::addFontColor("red")           ; Ctrl+Alt+R 添加红色
    ^!o::addFontColor("orange")        ; Ctrl+Alt+O 添加橙色
    ^!y::addFontColor("yellow")        ; Ctrl+Alt+Y 添加黄色
    ^!g::addFontColor("green")         ; Ctrl+Alt+G 添加绿色
    ^!c::addFontColor("cyan")          ; Ctrl+Alt+C 添加青色
    ^!b::addFontColor("blue")          ; Ctrl+Alt+B 添加蓝色
    ^!p::addFontColor("purple")        ; Ctrl+Alt+P 添加紫色
}

addFontColor(color) {
    clipboard =   ; 清空剪贴板
    Send {ctrl down}c{ctrl up}  ; 复制选中文本
    clipboard = <font color='%color%'>%clipboard%</font>  ; 在剪贴板内容中添加颜色标签
    SendInput {ctrl down}v{ctrl up}  ; 粘贴修改后的文本
    ; 将光标移动到文本内部，以便继续编辑
    Send {Left 7}  
}
