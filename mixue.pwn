#include <YSI_Coding\y_hooks>

//dialog
DIALOG_MIXUE1,
DIALOG_MIXUE2,
DIALOG_MIXUE3,

new PlayerText: MixueAufa[MAX_PLAYERS][31];

//stock untuk show td
stock ShowMixeAufa(playerid) {
    for(new i = 0; i < 31; i++)
    {
        PlayerTextDrawShow(playerid, MixueAufa[playerid][i]);
    }
}
//stock hide td
stock HideMixueAufa(playerid) {
    for(new i = 0; i < 31; i++)
    {
        PlayerTextHideShow(playerid, MixueAufa[playerid][i]);
        CancelSelectTextDraw(playerid);
    }
}

CMD:mixueaufa(playerid, params[]) {
    SelectTextDraw(playerid, COLOR_GREY);
    ShowMixeAufa(playerid);
}

hook OnClickDynamicPlayerTextDraw(playerid, Text:textid) {
    //fresh ice cream
    if (textid == MixueAufa[playerid][14]) {
        ShowPlayerDialog ( playerid, DIALOG_MIXUE1, DIALOG_STYLE_INPUT, "Fresh Ice Cream" , "Masukkan Jumlah Fresh Ice Cream yang ingin kamu beli:" , "Beli" , "Kembali" );
    }
    //Real Fruit Tea
    if (textid == MixueAufa[playerid][16]) {
        ShowPlayerDialog ( playerid, DIALOG_MIXUE2, DIALOG_STYLE_INPUT, "Real Fruit Tea" , "Masukkan Jumlah Real Fruit Tea yang ingin kamu beli:" , "Beli" , "Kembali" );
    }
    //milk tea
    if (textid == MixueAufa[playerid][18]) {
        ShowPlayerDialog ( playerid, DIALOG_MIXUE2, DIALOG_STYLE_INPUT, "Milk Tea" , "Masukkan Jumlah Milk Tea yang ingin kamu beli:" , "Beli" , "Kembali" );
    }
    //kembali
    if (textid == MixueAufa[playerid][20]) {
        HideMixueAufa(playerid);
    }
}
hook OnGameModeInit() {
    MixueAufa[playerid][0] = CreatePlayerTextDraw(playerid, 236.000, 108.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][0], 179.000, 273.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][0], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][0], -16776961);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][0], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][0], 1);

    MixueAufa[playerid][1] = CreatePlayerTextDraw(playerid, 258.000, 160.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][1], 104.000, 34.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][1], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][1], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][1], 1);

    MixueAufa[playerid][2] = CreatePlayerTextDraw(playerid, 333.000, 159.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][2], 67.000, 77.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][2], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][2], 255);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][2], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][2], 1);

    MixueAufa[playerid][3] = CreatePlayerTextDraw(playerid, 245.000, 192.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][3], 165.000, 167.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][3], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][3], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][3], 1);

    MixueAufa[playerid][4] = CreatePlayerTextDraw(playerid, 260.000, 156.000, "WE");
    PlayerTextDrawLetterSize(playerid, MixueAufa[playerid][4], 0.819, 4.099);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][4], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][4], -16776961);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][4], 1);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][4], 1);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][4], -1);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][4], 1);

    MixueAufa[playerid][5] = CreatePlayerTextDraw(playerid, 333.000, 161.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][5], 67.000, 77.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][5], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][5], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][5], 1);

    MixueAufa[playerid][6] = CreatePlayerTextDraw(playerid, 335.000, 129.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][6], 64.000, 65.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][6], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][6], 255);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][6], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][6], 1);

    MixueAufa[playerid][7] = CreatePlayerTextDraw(playerid, 250.000, 190.000, "RECOMMEND");
    PlayerTextDrawLetterSize(playerid, MixueAufa[playerid][7], 0.749, 3.299);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][7], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][7], -16776961);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][7], 1);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][7], 1);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][7], -1);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][7], 1);

    MixueAufa[playerid][8] = CreatePlayerTextDraw(playerid, 249.000, 132.000, "Mixue Menu");
    PlayerTextDrawLetterSize(playerid, MixueAufa[playerid][8], 0.359, 1.899);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][8], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][8], 1);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][8], 1);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][8], -16776961);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][8], 3);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][8], 1);

    MixueAufa[playerid][9] = CreatePlayerTextDraw(playerid, 337.000, 131.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][9], 60.000, 61.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][9], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][9], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][9], 1);

    MixueAufa[playerid][10] = CreatePlayerTextDraw(playerid, 347.000, 148.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][10], 15.000, 16.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][10], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][10], 255);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][10], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][10], 1);

    MixueAufa[playerid][11] = CreatePlayerTextDraw(playerid, 359.000, 148.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][11], 15.000, 16.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][11], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][11], 255);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][11], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][11], 1);

    MixueAufa[playerid][12] = CreatePlayerTextDraw(playerid, 351.000, 157.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][12], 18.000, 20.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][12], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][12], -16776961);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][12], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][12], 1);

    MixueAufa[playerid][13] = CreatePlayerTextDraw(playerid, 279.000, 231.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][13], 96.000, 19.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][13], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][13], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][13], 1);

    MixueAufa[playerid][14] = CreatePlayerTextDraw(playerid, 279.000, 229.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][14], 96.000, 19.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][14], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][14], -16776961);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][14], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][14], 1);
    PlayerTextDrawSetSelectable(playerid, MixueAufa[playerid][14], 1);

    MixueAufa[playerid][15] = CreatePlayerTextDraw(playerid, 279.000, 264.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][15], 96.000, 19.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][15], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][15], 255);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][15], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][15], 1);

    MixueAufa[playerid][16] = CreatePlayerTextDraw(playerid, 279.000, 262.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][16], 96.000, 19.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][16], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][16], -16776961);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][16], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][16], 1);
    PlayerTextDrawSetSelectable(playerid, MixueAufa[playerid][16], 1);

    MixueAufa[playerid][17] = CreatePlayerTextDraw(playerid, 279.000, 295.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][17], 96.000, 19.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][17], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][17], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][17], 1);

    MixueAufa[playerid][18] = CreatePlayerTextDraw(playerid, 279.000, 293.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][18], 96.000, 19.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][18], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][18], -16776961);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][18], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][18], 1);
    PlayerTextDrawSetSelectable(playerid, MixueAufa[playerid][18], 1);

    MixueAufa[playerid][19] = CreatePlayerTextDraw(playerid, 306.000, 326.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][19], 39.000, 15.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][19], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][19], 255);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][19], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][19], 1);

    MixueAufa[playerid][20] = CreatePlayerTextDraw(playerid, 306.000, 325.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][20], 39.000, 15.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][20], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][20], -16776961);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][20], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][20], 1);
    PlayerTextDrawSetSelectable(playerid, MixueAufa[playerid][20], 1);

    MixueAufa[playerid][21] = CreatePlayerTextDraw(playerid, 293.000, 232.000, "Fresh Ice Cream");
    PlayerTextDrawLetterSize(playerid, MixueAufa[playerid][21], 0.240, 1.299);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][21], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][21], -1);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][21], 1);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][21], 1);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][21], -16776961);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][21], 1);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][21], 1);

    MixueAufa[playerid][22] = CreatePlayerTextDraw(playerid, 297.000, 264.000, "Real Fruit Tea");
    PlayerTextDrawLetterSize(playerid, MixueAufa[playerid][22], 0.240, 1.299);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][22], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][22], 1);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][22], 1);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][22], -16776961);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][22], 1);

    MixueAufa[playerid][23] = CreatePlayerTextDraw(playerid, 308.000, 297.000, "Milk Tea");
    PlayerTextDrawLetterSize(playerid, MixueAufa[playerid][23], 0.240, 1.299);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][23], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][23], 1);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][23], 1);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][23], -16776961);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][23], 1);

    MixueAufa[playerid][24] = CreatePlayerTextDraw(playerid, 310.000, 326.000, "Kembali");
    PlayerTextDrawLetterSize(playerid, MixueAufa[playerid][24], 0.240, 1.299);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][24], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][24], -1);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][24], 1);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][24], 1);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][24], -16776961);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][24], 1);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][24], 1);

    MixueAufa[playerid][25] = CreatePlayerTextDraw(playerid, 229.000, 105.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][25], 14.000, 16.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][25], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][25], -16776961);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][25], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][25], 1);

    MixueAufa[playerid][26] = CreatePlayerTextDraw(playerid, 232.000, 113.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][26], 7.000, 266.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][26], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][26], -16776961);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][26], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][26], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][26], 1);

    MixueAufa[playerid][27] = CreatePlayerTextDraw(playerid, 229.000, 368.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][27], 14.000, 16.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][27], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][27], -16776961);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][27], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][27], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][27], 1);

    MixueAufa[playerid][28] = CreatePlayerTextDraw(playerid, 406.000, 368.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][28], 14.000, 16.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][28], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][28], -16776961);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][28], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][28], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][28], 1);

    MixueAufa[playerid][29] = CreatePlayerTextDraw(playerid, 411.000, 113.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][29], 7.000, 266.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][29], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][29], -16776961);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][29], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][29], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][29], 1);

    MixueAufa[playerid][30] = CreatePlayerTextDraw(playerid, 406.000, 106.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, MixueAufa[playerid][30], 14.000, 16.000);
    PlayerTextDrawAlignment(playerid, MixueAufa[playerid][30], 1);
    PlayerTextDrawColor(playerid, MixueAufa[playerid][30], -16776961);
    PlayerTextDrawSetShadow(playerid, MixueAufa[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, MixueAufa[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, MixueAufa[playerid][30], 255);
    PlayerTextDrawFont(playerid, MixueAufa[playerid][30], 4);
    PlayerTextDrawSetProportional(playerid, MixueAufa[playerid][30], 1);
}