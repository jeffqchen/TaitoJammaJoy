/* Data type and addresses for the Taito Wolf System
Directions	0xCB206
Button	Bit
1P U	1
1P D	2
1P L	3
1P R	4
=========
2P U	5
2P D	6
2P L	7
2P R	8

1P Buttons	0xCB201
2P Buttons	0xCB200
Button	Bit		
1		1
2		2
3		3
4		4
5		5
START	7
SELECT	8

Cabinet Buttons	0xCB203
			Bit
Service		2
Test		4
*/
typedef	unsigned char BYTE;
BYTE *dPad				= (BYTE *)0x0CB206;
BYTE *p1Buttons			= (BYTE *)0x0CB201;
BYTE *p2Buttons			= (BYTE *)0x0CB200;
BYTE *cabinetButtons	= (BYTE *)0x0CB213;

#define	P1_DPAD_MASK_Y		0x03
#define	P1_DPAD_MASK_X		0x0c
#define	P2_POV_MASK			0xf0

#define BUTTON_1to5_MASK	0x1f
#define BUTTON_6to7_MASK	0xc0

// Dpad value table
unsigned long	jammaDpad[9] = 
{
	328,	//0x00	Dpad Neutral
	0,		//0x01	1P	Up
	656,	//0x02	1P	Down
	1,		//0x03
	0,		//0x04	1P	Left
	1,		//0x05
	1,		//0x06
	1,		//0x07
	656		//0x08	1P	Right
};

//POV value table
long	jammaPOV[11] = 
{
	-1,		//0x0	POV Neutral
	0000,	//0x1	2P	Up
	18000,	//0x2	2P	Down
	-1,		//0x3
	27000,	//0x4	2P	Left
	31500,	//1+4	2P	Up	Left
	22500,	//2+4	2P	Down Left
	-1,		//0x7
	9000,	//0x8	2P	Right
	4500,	//1+8	2P	Up Right
	13500	//8+2	2P	Down Right
};
