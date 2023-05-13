/*
NAME		: AKHIL AJITH K C
DATE		: 22/04/2023
DESCRIPTION	: CAR BLACK BOX
*/

#include <xc.h>
#include "clcd.h"
#include "ds1307.h"
#include "i2c.h"
#include "adc.h"
#include "external_eeprom.h"
#include "matrix_keypad.h"
#include "uart.h"
//#include "string.h"

unsigned char clock_reg[3],key;
//unsigned char calender_reg[4];
unsigned char time[9];
unsigned char gear[9][3] = { "ON" ,"NU", "G1" , "G2" , "G3" , "G4" , "G5" ,"RG" , "CO"};
char menu[5][17] = {"view log     " , "clear log       ", "set time        ", "change pwd       ", "download log    "};

unsigned int delay = 0;
unsigned char event[10][17];
int count=0,log=0,returnvalue;
short adc_reg_val;
char str[3];
char str_user[5] = "0011";
//unsigned char date[11];

//void display_date(void)
//{
// clcd_print(date, LINE2(3));
//}

/*---------------------------------------------
 * ADD EVENT
---------------------------------------------*/
void add_event(void)
{
    int i = 0 , j = 0;

    if(log < 10)
    {

        for(j=0 ; time[j] != '\0' ; j++)
        {
            event[log][i++] = time[j];
        }
        event[log][i++] = ' ';


        for(j=0 ; gear[count][j] != '\0' ; j++)
        {
            event[log][i++] = gear[count][j];
        }
        event[log][i++] = ' ';


        for(j=0 ; str[j] != '\0' ; j++)
        {
            event[log][i++] = str[j];
        }

        event[log][i] = '\0';
        log++;
    }


    if(log == 10)
        log = 0;
}

/*---------------------------------------------
 * FUNCTION TO COMPARE STRING 
---------------------------------------------*/
int my_strcmp(char *str1, char *str2)
{
    while(*str1 && *str2)                   
    {
        if(*str1 != *str2)               
            return *str1 - *str2;
        str1++;
        str2++;
    }
    return *str1 - *str2;
} 
int password(void)
{
    short i = 0;
    static bit flag = 0;
    char key;
    char str_pass[5]="";
    while(1)
    {
        key = read_switches(STATE_CHANGE);
        if(i < 4)
        {
            clcd_print("ENTER PASSWORD" , LINE1(0));
            if(key == MK_SW11)
            {
                str_pass[i++] = '1';                    
                clcd_putch('*' , LINE2(i));
            }
            if(key == MK_SW12)
            {
                str_pass[i++] = '0';
                clcd_putch('*' , LINE2(i));
            }	
        }

        if(i == 4)
        {
            str_pass[i] = '\0';
            flag = 1;
        }

        if(flag)
        {

            if(my_strcmp(str_user , str_pass) == 0)        
            {
                CLEAR_DISP_SCREEN;
                clcd_print("Password Entered" , LINE1(0));
                clcd_print("Successfully" , LINE2(4));
                for(long wait = 0 ; wait < 50000 ; wait++);
                return 1;
            }
            else 
            {
                CLEAR_DISP_SCREEN;
                clcd_print("Password Wrong" , LINE1(0));      

                for(long wait=0;wait<500000;wait++);
                {
                    i = 0;
                    CLEAR_DISP_SCREEN;
                }
            }

            flag = 0;
        }
    }
}

/*---------------------------------------------
 * TIME CONVERSION
---------------------------------------------*/
 char convertval(char val)
{
    char rem, num;
    rem = val % 10;
    num = val / 10;
    val = rem;
    val = num << 4 | val;    
    return val;
}
/*---------------------------------------------
 * FUNCTION TO SET TIME
---------------------------------------------*/
void set_time(void)
{
    unsigned long wait = 0 ,flag = 0;
    char clock_reg[3];
    unsigned char key , prekey, time[10];
    CLEAR_DISP_SCREEN;
    char secs , mins , hour, SEC , MIN , HOUR;



    hour = (read_ds1307(HOUR_ADDR) / 10) << 4 & 0x01;
    hour = ((read_ds1307(HOUR_ADDR) % 10) & 0x0f) | hour;
    mins = (read_ds1307(MIN_ADDR) / 10) << 4;
    mins = ((read_ds1307(MIN_ADDR) % 10) & 0x0f) | mins;
    secs = (read_ds1307(SEC_ADDR) / 10) << 4;
    secs = ((read_ds1307(SEC_ADDR) % 10) & 0x0f) | secs;

    while(1)
    {

        clcd_print("TIME SET" , LINE1(4));
        key = read_switches(STATE_CHANGE);
        prekey = read_switches(LEVEL_CHANGE);


        if(key == MK_SW11)
        {
            if(flag == 0)
            {

                if(secs++ == 59)
                    secs  = 0;
            }

            if(flag == 1)
            {

                if(mins++ == 59)
                    mins = 0;
            }

            if(flag == 2)
            {

                if(hour++ == 12)
                    hour = 0;
            }
        }


        if(key == MK_SW12)
        {
            if(flag == 0)
            {

                if(secs-- == 0)
                    secs  = 59;
            }

            if(flag == 1)
            {

                if(mins-- == 0)
                    mins = 59;
            }

            if(flag == 2)
            {

                if(hour-- == 0)
                    hour = 12;
            }
        }


        if(prekey == MK_SW9 )
        {
            wait = 0;
            flag++;
            if(flag > 2)
                flag = 0;
        }


        if(key == MK_SW10)
        {
            CLEAR_DISP_SCREEN;
            break;
        }


        SEC = convertval(secs);
        MIN = convertval(mins);
        HOUR = convertval(hour);


        write_ds1307(SEC_ADDR , SEC | 0x00);
        write_ds1307(MIN_ADDR, MIN | 0x00);
        write_ds1307(HOUR_ADDR , HOUR | 0x00);

        for(unsigned long wait = 100000; wait--;);
        clcd_putch(hour / 10 + '0', LINE2(1));
        clcd_putch(hour % 10 + '0', LINE2(2));
        clcd_putch(':', LINE2(3));
        clcd_putch(mins / 10 + '0', LINE2(4));
        clcd_putch(mins % 10 + '0', LINE2(5));
        clcd_putch(':', LINE2(6));
        clcd_putch(secs / 10 + '0', LINE2(7));
        clcd_putch(secs % 10 + '0', LINE2(8));
    }
}

/*---------------------------------------------
 * FUNCTION TO CHANGE PASSWORD
---------------------------------------------*/
void change_password(void)
{
    unsigned char pwd_key;
    int change = 0  , j = 0;
    CLEAR_DISP_SCREEN;
    clcd_print("Enter Password  ",LINE1(0));

    while(1)
    {
        pwd_key = read_switches(STATE_CHANGE);

        if( change < 4)
        {

            if(pwd_key == MK_SW11)
            {
                if(change == 0)
                    write_external_eeprom(0x00,'1');
                if( change == 1)
                    write_external_eeprom(0x01,'1');
                if(change == 2)
                    write_external_eeprom(0x02,'1');
                if(change == 3)
                    write_external_eeprom(0x03,'1');
                clcd_putch('*' , LINE2(j++));
                change++;
            }


            else if(pwd_key == MK_SW12)
            {
                if(change == 0)
                    write_external_eeprom(0x00,'0');
                if( change == 1)
                    write_external_eeprom(0x01,'0');
                if( change== 2)
                    write_external_eeprom(0x02,'0');
                if( change== 3)
                    write_external_eeprom(0x03,'0');
                clcd_putch('*' , LINE2(j++));
                change++;
            }
        }


        if(change == 4)
        {
            clcd_print("Password is set  ",LINE2(0));
            str_user[0] = read_external_eeprom(0x00);
            str_user[1] = read_external_eeprom(0x01);
            str_user[2] = read_external_eeprom(0x02);
            str_user[3] = read_external_eeprom(0x03);
            str_user[4] = '\0';
        }


        if(pwd_key == MK_SW10)
        {
            CLEAR_DISP_SCREEN;
            break;	
        }
    }
}
/*---------------------------------------------
 * FUNCTION TO VIEW LOG
---------------------------------------------*/
void view_log(void)
{
    int i = 0;

    while(1)
    {
        key = read_switches(STATE_CHANGE);


        if(key == MK_SW11)
        {
            i++;
            if(i == 10)
                i = 0;
        }


        if(key == MK_SW12)
        {
            i--;
            if(i == -1)
                i = 9;
        }


        if(key == MK_SW10)
        {
            CLEAR_DISP_SCREEN;
            break;
        }


        clcd_print("TIME     EV  RPM " , LINE1(0));
        clcd_print(event[i] , LINE2(0));
    }

}
/*---------------------------------------------
 * FUNCTION TO CLEAR LOG
---------------------------------------------*/
void clear_log(void)
{
    unsigned char clr;
    int i  , j;


    for(i = 0 ; i < 10 ; i++)
    {
        for(j = 0 ; j < 18 ; j++)
        {
            event[i][j] = 0;
        }
    }

    CLEAR_DISP_SCREEN;
    clcd_print("LOG_CLEARED" , LINE1(2));
    while(1)
    {
        clr = read_switches(STATE_CHANGE);


        if(clr == MK_SW10)
        {
            CLEAR_DISP_SCREEN;
            break;
        }
    }
}

/*---------------------------------------------
 * FUNCTION TO DOWNLOAD LOG
---------------------------------------------*/
void download_log(void)
{
    char key;
    CLEAR_DISP_SCREEN;
    clcd_print("Downloading LOGS" , LINE1(0));
    clcd_print("in UART" , LINE2(5));

    puts("Logs are Downloaded\n\r");
    puts("Logs are : \n\r");


    for(int i = 0 ; i < 10 ; i++)
    {
        puts(event[i]);
        puts("\n\r");
    }


    while(1)
    {
        key = read_switches(STATE_CHANGE);

        if(key == MK_SW10)
        {
            CLEAR_DISP_SCREEN;
            break;
        }
    }

}

/*---------------------------------------------
 * FUNCTION TO DISPLAY MENU
---------------------------------------------*/

void display_menu(void)
{
    static int flag = 1;
    unsigned char lkey , key;
    unsigned int i = 0;
    while(1)
    {
        if(i == 0 && flag)
        {
            clcd_print("* " , LINE1(0));
            clcd_print(menu[i] , LINE1(2));
            clcd_print(menu[i+1] , LINE2(2));
        }

        key = read_switches(STATE_CHANGE);
        lkey = read_switches(LEVEL_CHANGE);

        if(key == MK_SW12 && i <= 4 && flag)
        {
            if(i >= 5)
                i = 4;
            i++;

            if(i < 5)
            {
                clcd_print(menu[i-1] , LINE1(2));
                clcd_print(menu[i] , LINE2(2));
                clcd_print("  " , LINE1(0));
                clcd_print("* " , LINE2(0));
            }

            else
            {
                clcd_print(menu[3] , LINE1(2));
                clcd_print(menu[4] , LINE2(2));
                clcd_print("  " , LINE1(0));
                clcd_print("* " , LINE2(0));
            }


        }

        if(key  == MK_SW11 && i > 0 && flag)
        {
            if(i < 5)
            {
                clcd_print("* " , LINE1(0));
                clcd_print(menu[i-1] , LINE1(2));
                clcd_print("  " , LINE2(0));
                clcd_print(menu[i] , LINE2(2));
            }
            else
            {
                clcd_print(menu[3] , LINE1(2));
                clcd_print(menu[4] , LINE2(2));
                clcd_print("  " , LINE1(0));
                clcd_print("* " , LINE2(0));
            }

            i--;
            
            if(i < 0)
            i = 0;
        }
if(lkey == MK_SW11 && delay++ == 50000)
        {
            flag = 1;
            delay = 0;

            i--;
            
            if(i == 0)
            {
                view_log();
            }
            
             if(i == 1)
            {
                clear_log();
                i = 0;
            }
            
            if(i == 2)

            {
                set_time();
                i = 0;
            }
            
            if(i == 3)
            {
                change_password();
                i = 0;
            }
            
            if(i == 4)
            {
                download_log();
                i = 0;
            }                        
        }

        if(key == MK_SW10)
        {
            
            break;
        }
    }
}

/*---------------------------------------------
 * FUNCTION TO DISPLAY TIME
---------------------------------------------*/

void display_time(void)
{
clcd_print(time, LINE2(0));

// if (clock_reg[0] & 0x40)
// {
// if (clock_reg[0] & 0x20)
// {
// clcd_print("PM", LINE2(12));
// }
// else
// {
// clcd_print("AM", LINE2(12));
// }
// }
}

static void get_time(void)
{
clock_reg[0] = read_ds1307(HOUR_ADDR);
clock_reg[1] = read_ds1307(MIN_ADDR);
clock_reg[2] = read_ds1307(SEC_ADDR);

if (clock_reg[0] & 0x40)
{
time[0] = '0' + ((clock_reg[0] >> 4) & 0x01);
time[1] = '0' + (clock_reg[0] & 0x0F);
}
else
{
time[0] = '0' + ((clock_reg[0] >> 4) & 0x03);
time[1] = '0' + (clock_reg[0] & 0x0F);
}
time[2] = ':';
time[3] = '0' + ((clock_reg[1] >> 4) & 0x0F);
time[4] = '0' + (clock_reg[1] & 0x0F);
time[5] = ':';
time[6] = '0' + ((clock_reg[2] >> 4) & 0x0F);
time[7] = '0' + (clock_reg[2] & 0x0F);
time[8] = '\0';
}

//static void get_date(void)
//{
// calender_reg[0] = read_ds1307(YEAR_ADDR);
// calender_reg[1] = read_ds1307(MONTH_ADDR);
// calender_reg[2] = read_ds1307(DATE_ADDR);
// calender_reg[3] = read_ds1307(DAY_ADDR);
//
// date[0] = '2';
// date[1] = '0';
// date[2] = '0' + ((calender_reg[0] >> 4) & 0x0F);
// date[3] = '0' + (calender_reg[0] & 0x0F);
// date[4] = '-';
// date[5] = '0' + ((calender_reg[1] >> 4) & 0x0F);
// date[6] = '0' + (calender_reg[1] & 0x0F);
// date[7] = '-';
// date[8] = '0' + ((calender_reg[2] >> 4) & 0x0F);
// date[9] = '0' + (calender_reg[2] & 0x0F);
// date[10] = '\0';
//}

void init_config(void)
{
init_clcd();
init_i2c();
init_ds1307();
init_adc();
init_matrix_keypad();
clcd_print("TIME     EV  RPM ", LINE1(0));
}

void main()
{
    
init_config();

while (1)      
{
adc_reg_val = ((read_adc(CHANNEL4)) / 10);
    
if(adc_reg_val >= 100)
    {
        adc_reg_val = 99;
    }

    str[2] = '\0';

    for(int i=1; i>=0; i--)
    {
        str[i] = (adc_reg_val % 10) + '0';
        adc_reg_val = adc_reg_val / 10 ;
    }

    clcd_print(str, LINE2(14));

get_time();
display_time();

key = read_switches(STATE_CHANGE);


        if(key == MK_SW1)
        {
            count = 8; 
            add_event();
        }


    if(key == MK_SW2)
        {
        if(count<7)
         count++;
         add_event();           
        }


    if(key  == MK_SW3)
        {
            
            if(count > 1)
            count--;
            add_event();           
        }

        clcd_print(gear[count], LINE2(10));
        if(key == MK_SW11)
        {
            CLEAR_DISP_SCREEN;
            returnvalue = password();
            if(returnvalue == 1)
            {
                display_menu();
            }
        }		
}
}