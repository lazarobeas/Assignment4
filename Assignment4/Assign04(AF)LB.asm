.MODEL FLAT, STDCALL
.STACK 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
; Unsigned var holding decimal 80
deciValue1 DWORD 80

; Signed var holding hexadecimal -82025
hexaValue1 SDWORD 0FFFECD87h

; Unsigned var holding binary 200
binValue1 DWORD 11001000b

; String var for input message
inputMessage1 BYTE "Please enter a value: ", 0

; Calculate length of inputMessage1 and subtract 1 for null terminator
len1 EQU $ - offset inputMessage1 - 1

; String var for output message
outputMessage1 BYTE "The result is: ", 0

; Calculate length of outputMessage1 and subtract 1 for null terminator
len2 EQU $ - offset outputMessage1 - 1

; String variable for welcome message
welcomeMessage1 BYTE "What is Assembly Language? ", 0Dh, 0Ah
    BYTE "It is a low-level mnemonic programming language. ", 0

; Calculate length of welcomeMessage1 and subtract 1 for null terminator
len3 EQU $ - offset welcomeMessage1 - 1

; Variable that will hold the length of var welcomeMessage1
len5 EQU len3 + 5

.code
_main PROC
    ; len5 logic for incrementing
    mov eax, len5   ; Move value of len5 into EAX
    inc eax         ; Increment EAX which therefore increments len5
    ; Now EAX holds the incremented value of len5


    invoke ExitProcess, 0
_main ENDP
END
