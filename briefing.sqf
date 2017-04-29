if(isDedicated)exitWith{};

waitUntil {!isNil {player}};
waitUntil {player == player};

player createDiaryRecord ["Diary", ["Renseignements", "


"]];
player createDiaryRecord ["Diary", ["Mission", "


"]];
player createDiaryRecord ["Diary", ["Contexte", "


"]];

