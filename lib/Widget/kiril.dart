String KirilLotin(String txt) {
  String kiril =  "сабдефгҳижклмнопқртувхйзэ "
      "ъ1234567890САБДЕФГҲИЖКЛМНОПҚРТУВХЙЗ()[]{}-_!@#%&*+/=?|,><.~\n`\\";
  String lotin = "sabdefghijklmnopqrtuvxyze '1234567890SABDEFGHIJKLMNOPQRTUVX"
      "YZ()[]{}-_!@#%&*+/=?|,><.~\n`\\";
  // print(kiril.length);
  // print(lotin.length);
  // яюёчшўғ
  // ЯЮЁЧШЎҒ
  String ansText = "";
  for (int i = 0; i < txt.length; i++) {
    for (int j = 0; j < kiril.length; j++) {
        if (txt[i] == 'я') {
          ansText = "${ansText}ya";
          break;
        } else if (txt[i] == 'ю') {
          ansText = "${ansText}yu";
          break;
        } else if (txt[i] == 'ё') {
          ansText = "${ansText}yo";
          break;
        } else if (txt[i] == 'ч') {
          ansText = "${ansText}ch";
          break;
        } else if (txt[i] == 'ш') {
          ansText = "${ansText}sh";
          break;
        } else if (txt[i] == 'ў') {
          ansText = "${ansText}o'";
          break;
        } else if(txt[i] == "ғ"){
          ansText = "${ansText}g'";
          break;
        } else if(txt[i] == "ц") {
          ansText = "${ansText}ts";
          break;
        }else if(txt[i] == 'й'){
          ansText = "${ansText}y";
          break;

          //Katta harif

        } else if (txt[i] == 'Я') {
          ansText = "${ansText}Ya";
          break;
        } else if (txt[i] == 'Й') {
          ansText = "${ansText}Y";
          break;
        } else if (txt[i] == 'Ё') {
          ansText = "${ansText}Yo";
          break;
        } else if (txt[i] == 'Ч') {
          ansText = "${ansText}Ch";
          break;
        } else if (txt[i] == 'Ш') {
          ansText = "${ansText}Sh";
          break;
        } else if (txt[i] == 'Ў') {
          ansText = "${ansText}O'";
          break;
        } else if(txt[i] == "Ғ"){
          ansText = "${ansText}G'";
          break;
        } else if(txt[i] == "Ц"){
          ansText = "${ansText}Ts";
          break;
        } else if(txt[i] == kiril[j]){
          ansText = ansText + lotin[j];
        }

      }
    }
  return ansText;
  }


