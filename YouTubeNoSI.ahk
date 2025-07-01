#NoEnv
#Persistent  ; Keeps the script running
OnClipboardChange("ClipMod")
return

ClipMod() {
    OnClipboardChange("ClipMod", 0)
    if (Clipboard)
    {
        if (RegExMatch(Clipboard, "^https://youtu\.be/[^\?]*"))
        {
            Clipboard := RegExReplace(Clipboard, "si=[^&]*&?", "") ; Remove si parameter
            Clipboard := RegExReplace(Clipboard, "\?$", "")    ; Remove trailing ?
        }
    }
    
    OnClipboardChange("ClipMod", 1)
}