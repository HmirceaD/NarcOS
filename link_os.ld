ENTRY(loader)

SECTIONS{

    . = 0x00100000;

    .text ALIGN (0x1000) : /*boundary of 4 kb between sections*/
    {
        *(.text) /*everything from the .text*/

    }

    .rodata ALIGN (0x1000) :
    {
        *(.rodata*) /* everything in the read only data sections*/

    }

    .data ALIGN (0x1000) :
    {
        *(.data)

    }
    
    .bss ALIGN (0x1000) :
    {
        *(COMMON) /* everything in the COMMON sections*/
        *(.bss)

    }

}

