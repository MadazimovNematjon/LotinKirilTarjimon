 String lotinKiril(String txt) {
   String lotin = "sabdefghijklmnopqrtuvxyz '1234567890SABDEFGHIJKLMNOPQRTUVX"
       "YZ()[]{}-_!@#%&*+/=?|,><.~\n`\\";
  String kiril =  "сабдефгҳижклмнопқртувхйз "
      "ъ1234567890САБДЕФГҲИЖКЛМНОПҚРТУВХЙЗ()[]{}-_!@#%&*+/=?|,><.~\n`\\";

  String ansText = "";
  for (int i = 0; i < txt.length; i++) {
    for (int j = 0; j < lotin.length; j++) {
      if (i < txt.length - 1) {
        if (txt[i] == 'g' && txt[i + 1] == "'") {
          ansText = "$ansTextғ";
          i++;
          break;
        } else if (txt[i] == 's' && txt[i + 1] == 'h') {
          ansText = "$ansTextш";
          i++;
          break;
        } else if (txt[i] == 'c' && txt[i + 1] == 'h') {
          ansText = "$ansTextч";
          i++;
          break;
        } else if (txt[i] == 'y' && txt[i + 1] == 'u') {
          ansText = "$ansTextю";
          i++;
          break;
        } else if (txt[i] == 'y' && txt[i + 1] == 'a') {
          ansText = "$ansTextя";
          i++;
          break;
        } else if (txt[i] == 'o' && txt[i + 1] == "'") {
          ansText = "$ansTextў";
          i++;
          break;
        } else if (txt[i] == 'y' && txt[i + 1] == "o" && txt[i + 1] == "'") {
          ansText = "$ansTextё";
          i++;
          break;
        }  else if (txt[i] == 't' && txt[i + 1] == "s") {
          ansText = "$ansTextц";
          i++;
          break;
        }else if(txt[i] == "" && txt[i + 1] == "'"){
          ansText = "$ansTextъ";

          //kata hariflar

        }else if (txt[i] == 'G' && txt[i + 1] == "'") {
          ansText = "$ansTextҒ";
          i++;
          break;
        } else if (txt[i] == 'S' && txt[i + 1] == 'h') {
          ansText = "$ansTextШ";
          i++;
          break;
        } else if (txt[i] == 'C' && txt[i + 1] == 'h') {
          ansText = "$ansTextЧ";
          i++;
          break;
        } else if (txt[i] == 'Y' && txt[i + 1] == 'u') {
          ansText = "$ansTextЮ";
          i++;
          break;
        } else if (txt[i] == 'Y' && txt[i + 1] == 'a') {
          ansText = "$ansTextЯ";
          i++;
          break;
        } else if (txt[i] == 'O' && txt[i + 1] == "'") {
          ansText = "$ansTextЎ";
          i++;
          break;
        } else if (txt[i] == 'Y' && txt[i + 1] == "o" && txt[i + 1] == "'") {
          ansText = "$ansTextЁ";
          i++;
          break;
        } else if (txt[i] == 'T' && txt[i + 1] == "s") {
          ansText = "$ansTextЦ";
          i++;
          break;
        } else if(txt[i] == lotin[j]){
          ansText = ansText + kiril[j];
        }
      } else if(txt[i] == lotin[j]){
        ansText = ansText + kiril[j];
      }
    }
  }

  return ansText;
  }