Program Lanchonete_do_Padeiro;
Var
Lanche,Suco,Pedi,i,k,Pagamento,T,FPC:integer;
TotalL,TotalS,Total,Quant:Array[1..30] of integer;
ContL,ContS,IM:integer;
Nome:Array[1..30] of string;
Pnome,Troco:String;
RespL,RespS:Char;


Begin//1
  
  TextColor(black);
  Textbackground(red);
  
  ContL:= 0;
  ContS:= 0;
  
  Gotoxy(50,01);Writeln('O programa só sera efetuado, depois que você apertar o ENTER!');
  
  Readkey;
  Clrscr;
  
  Gotoxy(50,01);Writeln('Qual a quantidade de pedidos a ser feitos?');
  Gotoxy(50,02);Readln(Pedi);
  
  For i:= 1 to Pedi do
  Begin
    Gotoxy(50,03);Writeln('Digite seu nome e seu sobrenome');
    Gotoxy(50,04);Read(Nome[i]);
    
    Gotoxy(50,05);Writeln('Bem-Vindo a Lanchonete_do_Padeiro, senhor(a) ' ,Nome[i],'');
    Gotoxy(50,06);Writeln('Deseja algum lanche?');
    Gotoxy(50,07);Readln(RespL);
    
    Clrscr;
    
    TextColor(White);
    While (RespL = 's') Or (Respl = 'S') do
    Begin
      Gotoxy(30,01);Writeln(' ________________________________________________________________________________________________________ ');
      Gotoxy(30,02);Writeln('|                                                                                                        |');
      Gotoxy(30,03);Writeln('|=========================================CARDAPIO DE LANCHES============================================|');
      Gotoxy(30,04);Writeln('|________________________________________________________________________________________________________|');
      Gotoxy(30,05);Writeln('|(1)-X TUDO......................R$15,00                                                                 |');
      Gotoxy(30,06);Writeln('|Milho,Tomate,Alface,Queijo,Carne,Batata palha,Ovo,Salsinha,Frango,Salame,Calabresa,Bacon,Maionese.      |');
      Gotoxy(30,07);writeln('|________________________________________________________________________________________________________|');
      Gotoxy(30,08);Writeln('|(2)-X Bacon.....................R$30,00                                                                 |');
      Gotoxy(30,09);Writeln('|Milho,Tomate,Alface,Queijo,Carne,Bacon,Maionese.                                                        |');
      Gotoxy(30,10);writeln('|________________________________________________________________________________________________________|');
      Gotoxy(30,11);Writeln('|(3)-Dog mayson..................R$60,00                                                                 |');
      Gotoxy(30,12);Writeln('|Salsichas,requeijão cremoso,Queijo a gosto,2 pães.                                                      |');
      Gotoxy(30,13);Writeln('|________________________________________________________________________________________________________|');
      Gotoxy(30,14);Writeln('|(4)-Xurrassic park.............R$150,00                                                                 |');
      Gotoxy(30,15);Writeln('|Carne de T-rex,Molho BarbieKiil,Salada de Alface,Tomate,Chedar,Maionese,Bacon de Porco Pre-Historico.   |');
      Gotoxy(30,16);Writeln('|________________________________________________________________________________________________________|');
      Gotoxy(30,17);Writeln('|(5)-Quateirao...................R$74,00                                                                 |');
      Gotoxy(30,18);Writeln('|Milho,Tomate,Alface,Queijo,35 carnes,batata palha,Bacon de Porco Pre-Historico,20 pães,Molho BarbieKiil.|');
      Gotoxy(30,19);Writeln('|________________________________________________________________________________________________________|');
      Gotoxy(30,20);Writeln('|(6)-X ratao.....................R$100,00                                                                |');
      Gotoxy(30,21);Writeln('|Só Pão,Maionese Vencida,Tomate,Alface,tudo e mais um pouco e MOLHO ESPECIAL.                            |');
      Gotoxy(30,22);Writeln('|________________________________________________________________________________________________________|');
      Gotoxy(30,23);Writeln('');
      Gotoxy(30,24);Writeln('Digite o cod do lanche:');
      Gotoxy(30,25);Read(Lanche);
      ContL:= ContL + 1;
      
      Case Lanche of
        
        1:
        Begin
          TotalL[i]:=TotalL[i]+15;
          Gotoxy(30,26);Writeln('Senhor(a) ',Nome[i], ' deseja quantos X-TUDO você deseja?');
          Gotoxy(30,27);Readln(Quant[i]);
          TotalL[i]:=TotalL[i]*Quant[i];
          
        End;
        
        2:
        Begin
          TotalL[i]:=TotalL[i]+30;
          Gotoxy(30,26);Writeln('Senhor(a) ',Nome[i], ' deseja quantos X-Bacon você deseja?');
          Gotoxy(30,27);Readln(Quant[i]);
          TotalL[i]:=TotalL[i]*Quant[i];
          
        End;
        
        3:
        Begin
          TotalL[i]:=TotalL[i]+60;
          Gotoxy(30,26);Writeln('Senhor(a) ',Nome[i], ' deseja quantos Dog-Mayson você deseja?');
          Gotoxy(30,27); Readln(Quant[i]);
          TotalL[i]:=TotalL[i]*Quant[i];
          
        End;
        
        4:
        Begin
          TotalL[i]:=TotalL[i]+150;
          Gotoxy(30,26);Writeln('Senhor(a) ',Nome[i], ' deseja quantos Xurrassic-Park você deseja?');
          Gotoxy(30,27);Readln(Quant[i]);
          TotalL[i]:=TotalL[i]*Quant[i];
          
        End;
        
        5:
        Begin
          TotalL[i]:=TotalL[i]+75;
          Gotoxy(30,26);Writeln('Senhor(a) ',Nome[i], ' deseja quantos Quarteirão você deseja?');
          Gotoxy(30,27);Readln(Quant[i]);
          TotalL[i]:=TotalL[i]*Quant[i];
          
        End;
        
        6:
        Begin
          TotalL[i]:=TotalL[i]+100;
          Gotoxy(30,26);Writeln('Senhor(a) ',Nome[i], ' deseja quantos X-RATÃO você deseja?');
          Gotoxy(30,27);Readln(Quant[i]);
          TotalL[i]:=TotalL[i]*Quant[i];
          
        end;
      end;
      
      TextColor(black);
      total[i]:=TotalL[i];
      Gotoxy(30,28);writeln('Senho(a) ',Nome[i], ' Quer continuar pedindo, Lanches? Digite ("s")OU("n")');
      Gotoxy(30,29);readln(RespL);
      clrscr;
    end;
  end;
  
  Gotoxy(50,01);Writeln('Senhor ' ,Nome[i], ' Quer pedir algo para beber?');
  Gotoxy(50,02);Readln(RespS);
  
  Clrscr;
  
  TextColor(White);
  While (RespS = 's') Or (RespS = 'S') do
  Begin
    
    Gotoxy(50,01);Writeln(' ___________________________________________________________________ ');
    Gotoxy(50,02);Writeln('|                                                                   |');
    Gotoxy(50,03);Writeln('|==========================CARDAPIO DE BEBIDAS======================|');
    Gotoxy(50,04);Writeln('|___________________________________________________________________|');
    Gotoxy(50,05);Writeln('|(1)-Guarana Antartida.......................................R$8,00.|');
    Gotoxy(50,06);Writeln('|___________________________________________________________________|');
    Gotoxy(50,07);Writeln('|(2)-Suco de Abacaxi 1L.....................................R$10,00.|');
    Gotoxy(50,08);Writeln('|___________________________________________________________________|');
    Gotoxy(50,09);Writeln('|(3)-Suco de Manga com leite com leite condensado 1L........R$20,00.|');
    Gotoxy(50,10);Writeln('|___________________________________________________________________|');
    Gotoxy(50,11);Writeln('|(4)-Suco de Uva 250ML.......................................R$5,00.|');
    Gotoxy(50,12);Writeln('|___________________________________________________________________|');
    Gotoxy(50,13);Writeln('|(5)-Coca cola 500ML........................................R$10,00.|');
    Gotoxy(50,14);Writeln('|___________________________________________________________________|');
    Gotoxy(50,15);Writeln('|(6)-Suco de Laranja com sal 500ML..........................R$15,00.|');
    Gotoxy(50,16);Writeln('|___________________________________________________________________|');
    Gotoxy(50,17);Writeln('');  
    Gotoxy(50,18);Writeln('Digite o cod da bebida:');
    Gotoxy(50,19);Read(Suco);
    ContS:= ContS + 1;
    
    
    Case Suco of
      
      1:
      Begin 
        TotalS[i]:=TotalS[i]+8;
        Gotoxy(50,20);Writeln('Senhor(a) ',Nome[i], ' quantos Guarana Antartida você deseja?');
        Gotoxy(50,21);Readln(Quant[i]);
        TotalS[i]:=TotalS[i]*Quant[i];
        
      End;
      
      2:
      Begin  
        TotalS[i]:=TotalS[i]+10;
        Gotoxy(50,20);Writeln('Senhor(a) ',Nome[i], ' quantos Suco de Abacaxi 1L você deseja?');
        Gotoxy(50,21);Readln(Quant[i]);
        TotalS[i]:=TotalS[i]*Quant[i];
        
      End;
      
      3:
      Begin 
        TotalS[i]:=TotalS[i]+20;
        Gotoxy(50,20);Writeln('Senhor(a) ',Nome[i], ' quantos Suco de Manga com leite com leite condensado 1L você deseja?');
        Gotoxy(50,21);Readln(Quant[i]);
        TotalS[i]:=TotalS[i]*Quant[i];
        
      End;
      
      4:
      Begin 
        TotalS[i]:=TotalS[i]+5;
        Gotoxy(50,20);Writeln('Senhor(a) ',Nome[i], ' quantos Suco de Uva 250ML você deseja?');
        Gotoxy(50,21);Readln(Quant[i]);
        TotalS[i]:=TotalS[i]*Quant[i];
        
      End;
      
      5:
      Begin
        TotalS[i]:=TotalS[i]+10;
        Gotoxy(50,20);Writeln('Senhor(a) ',Nome[i], ' quantos Coca cola 500ML você deseja?');
        Gotoxy(50,21);Readln(Quant[i]);
        TotalS[i]:=TotalS[i]*Quant[i];
        
      End;
      
      6:
      Begin
        TotalS[i]:=TotalS[i]+15;
        Gotoxy(50,20);Writeln('Senhor(a) ',Nome[i], ' quantos Suco de Laranja com sal 500ML você deseja?');
        Gotoxy(50,21);Readln(Quant[i]);
        TotalS[i]:=TotalS[i]*Quant[i];
        
      End;
    End;
    
    TextColor(black);
    total[i]:=TotalL[i]+TotalS[i];
    Gotoxy(50,22);writeln('Senhor(a)' ,Nome[i], ' Quer continuar pedindo, Bebidas? Digite ("s")OU("n")');
    Gotoxy(50,23);readln(RespS);
    clrscr;
  End;
  
  
  If (RespS = 'n') or (RespS = 'N') then
  Begin
    Gotoxy(50,01);Writeln('Entre com o seu nome e sobrenome!');
    Gotoxy(50,02);Readln(Pnome);
    
    Gotoxy(50,03);Writeln('');
    
    Gotoxy(50,04);Readkey;
    clrscr;
    
    for k:=1 to Pedi do
    begin
      
      If (pnome) = (nome[k]) then
      Gotoxy(50,01);Writeln('O total da compra foi de: R$' ,Total[k],',00');
      Gotoxy(50,02);Writeln('');
      Gotoxy(50,03);Writeln('O pagamento será em dinheiro ou em cartão senhor(a) ',Nome[k]);
      Gotoxy(50,04);Writeln('Digite ("1") para dinheiro ou ("2") para cartão.');
      Gotoxy(50,05);Read(Pagamento);
      
      Clrscr;
      
      If Pagamento = 1 then
      begin
        Gotoxy(50,01);Writeln('Vou precisar devover algum troco? Digite ("s")OU("n")');
        Gotoxy(50,01);Readln(Troco);
        
        Clrscr;
        
        If Troco = 's' Then
        Begin
          Gotoxy(50,01);Writeln('Troco para quanto?');
          Gotoxy(50,02);Read(T);
          Gotoxy(50,03);T:= T - Total[k];
          Gotoxy(50,04);Writeln('O seu troco é de: R$ ',T, ',00');
          Gotoxy(50,05);Writeln('Nós da Lanchonete_do_Padeiro, agradecemos a sua visita');
          Gotoxy(50,06);Writeln('VOLTE SEMPRE!!!');
          
        end
        
        else
        If Troco = 'n' Then
        begin
          T:= Total[k] - Total[k];
          Gotoxy(50,01);Writeln('Nós da Lanchonete_do_Padeiro, agradecemos a sua visita');
          Gotoxy(50,02);Writeln('VOLTE SEMPRE!!!');
        end;
        
      end;
      
      If Pagamento = 2 then
      Begin
        Gotoxy(50,01);Writeln('Aceitamos Credito     ("1")');
        Gotoxy(50,02);Writeln('');
        Gotoxy(50,03);Writeln('Aceitamos Debito      ("2")');
        Gotoxy(50,04);Writeln('');
        Gotoxy(50,05);Writeln('Aceitamos Alimentação ("3")');
        Gotoxy(50,06);Writeln('');
        Gotoxy(50,07);Writeln('Com qual você irá pagar?');
        Gotoxy(50,08);Readln(FPC);
        
        Readkey;
        clrscr;
        
        If FPC = 1 Then
        Begin
          
          for IM:=1 to 100 do
          begin
            
            Gotoxy(10,10);writeln ('IMPRIMINDO SUA VIA ' , IM, '%.');
            Delay(15);
            Delay (10);
            
          end;
          
          Gotoxy(50,02);Writeln('========================Pedidos=======================');
          Gotoxy(50,03);Writeln('' ,contL*Quant[k],  'Lanches.                         ');
          Gotoxy(50,04);Writeln('                                                      ');Delay(1100);
          Gotoxy(50,05);Writeln('' ,contS*Quant[k],  'Bebidas.                         ');
          Gotoxy(50,06);Writeln('                                                      ');Delay(1100);
          Gotoxy(50,07);Writeln('=======================Pagamento======================');
          Gotoxy(50,08);Writeln('Você efetuou o pagamento com o cartão de Credito.     ');
          Gotoxy(50,09);Writeln('                                                      ');Delay(1100);
          Gotoxy(50,10);Writeln('O total da compra foi de: R$' ,Total[k],',00          ');
          Gotoxy(50,11);Writeln('                                                      ');Delay(1100);
          Gotoxy(50,12);Writeln('______________________________________________________');
          Gotoxy(50,13);Writeln('Nós da Lanchonete_do_Padeiro, agradecemos a sua visita');
          Gotoxy(50,14);Writeln('VOLTE SEMPRE!!!                                       ');
          Gotoxy(50,15);Writeln('______________________________________________________');Delay(1000);
          Gotoxy(50,16);Writeln('Senhor(a) ' ,Nome[k], '                                ');
          Gotoxy(50,17);Writeln('______________________________________________________');
          
          
          Gotoxy(104,03);Writeln('|');
          Gotoxy(49,03);Writeln('|');
          Gotoxy(104,04);Writeln('|');
          Gotoxy(49,04);Writeln('|');
          Gotoxy(104,05);Writeln('|');
          Gotoxy(49,05);Writeln('|');
          Gotoxy(104,06);Writeln('|');
          Gotoxy(49,06);Writeln('|');
          Gotoxy(104,07);Writeln('|');
          Gotoxy(49,07);Writeln('|');
          Gotoxy(104,08);Writeln('|');
          Gotoxy(49,08);Writeln('|');
          Gotoxy(104,09);Writeln('|');
          Gotoxy(49,09);Writeln('|');
          Gotoxy(104,10);Writeln('|');
          Gotoxy(49,10);Writeln('|');
          Gotoxy(104,11);Writeln('|');
          Gotoxy(49,11);Writeln('|');
          Gotoxy(104,12);Writeln('|');
          Gotoxy(49,12);Writeln('|');
          Gotoxy(104,13);Writeln('|');
          Gotoxy(49,13);Writeln('|');
          Gotoxy(104,14);Writeln('|');
          Gotoxy(49,14);Writeln('|');
          Gotoxy(104,15);Writeln('|');
          Gotoxy(49,15);Writeln('|');
          Gotoxy(104,16);Writeln('|');
          Gotoxy(49,16);Writeln('|');
          Gotoxy(104,17);Writeln('|');
          Gotoxy(49,17);Writeln('|');
        end;
      end;
      
      
      If FPC = 2 Then
      Begin
        
        for IM:=1 to 100 do
        begin
          
          Gotoxy (10,10);writeln ('IMPRIMINDO SUA VIA ' , IM, '%.');
          Delay(15);
          delay (10);
          
        end;
        
        Gotoxy(50,02);Writeln('========================Pedidos=======================');
        Gotoxy(50,03);Writeln('' ,contL*Quant[k], 'Lanches.                          ');
        Gotoxy(50,04);Writeln('                                                      ');Delay(1100);
        Gotoxy(50,05);Writeln('' ,contS*Quant[k],  'Bebidas.                         ');
        Gotoxy(50,06);Writeln('                                                      ');Delay(1100);
        Gotoxy(50,07);Writeln('=======================Pagamento======================');
        Gotoxy(50,08);Writeln('Você efetuou o pagamento com o cartão de Debito.      ');
        Gotoxy(50,09);Writeln('                                                      ');Delay(1100);
        Gotoxy(50,10);Writeln('O total da compra foi de: R$' ,Total[k],',00          ');
        Gotoxy(50,11);Writeln('                                                      ');Delay(1100);
        Gotoxy(50,12);Writeln('______________________________________________________');
        Gotoxy(50,13);Writeln('Nós da Lanchonete_do_Padeiro, agradecemos a sua visita');
        Gotoxy(50,14);Writeln('VOLTE SEMPRE!!!                                       ');
        Gotoxy(50,15);Writeln('______________________________________________________');Delay(1000);
        Gotoxy(50,16);Writeln('Senhor(a)' ,Nome[k], '                                ');
        Gotoxy(50,17);Writeln('______________________________________________________');
        
        
        Gotoxy(104,03);Writeln('|');
        Gotoxy(49,03);Writeln('|');
        Gotoxy(104,04);Writeln('|');
        Gotoxy(49,04);Writeln('|');
        Gotoxy(104,05);Writeln('|');
        Gotoxy(49,05);Writeln('|');
        Gotoxy(104,06);Writeln('|');
        Gotoxy(49,06);Writeln('|');
        Gotoxy(104,07);Writeln('|');
        Gotoxy(49,07);Writeln('|');
        Gotoxy(104,08);Writeln('|');
        Gotoxy(49,08);Writeln('|');
        Gotoxy(104,09);Writeln('|');
        Gotoxy(49,09);Writeln('|');
        Gotoxy(104,10);Writeln('|');
        Gotoxy(49,10);Writeln('|');
        Gotoxy(104,11);Writeln('|');
        Gotoxy(49,11);Writeln('|');
        Gotoxy(104,12);Writeln('|');
        Gotoxy(49,12);Writeln('|');
        Gotoxy(104,13);Writeln('|');
        Gotoxy(49,13);Writeln('|');
        Gotoxy(104,14);Writeln('|');
        Gotoxy(49,14);Writeln('|');
        Gotoxy(104,15);Writeln('|');
        Gotoxy(49,15);Writeln('|');
        Gotoxy(104,16);Writeln('|');
        Gotoxy(49,16);Writeln('|');
        Gotoxy(104,17);Writeln('|');
        Gotoxy(49,17);Writeln('|');
      end;
    end;
    
    If FPC = 3 Then
    Begin
      
      for IM:=1 to 100 do
      begin
        
        Gotoxy (10,10);writeln ('IMPRIMINDO SUA VIA ' , IM, '%.');
        Delay(15);
        delay (10);
        
      end;
      Gotoxy(50,02);Writeln('========================Pedidos=======================');
      Gotoxy(50,03);Writeln('' ,contL*Quant[k], 'Lanches.                          ');
      Gotoxy(50,04);Writeln('                                                      ');Delay(1100);
      Gotoxy(50,05);Writeln('' ,contS*Quant[k],  'Bebidas.                         ');
      Gotoxy(50,06);Writeln('                                                      ');Delay(1100);
      Gotoxy(50,07);Writeln('=======================Pagamento======================');
      Gotoxy(50,08);Writeln('Você efetuou o pagamento com o cartão de Alimentação. ');
      Gotoxy(50,09);Writeln('                                                      ');Delay(1100);
      Gotoxy(50,10);Writeln('O total da compra foi de: R$' ,Total[k],',00          ');
      Gotoxy(50,11);Writeln('                                                      ');Delay(1100);
      Gotoxy(50,12);Writeln('______________________________________________________');
      Gotoxy(50,13);Writeln('Nós da Lanchonete_do_Padeiro, agradecemos a sua visita');
      Gotoxy(50,14);Writeln('VOLTE SEMPRE!!!                                       ');
      Gotoxy(50,15);Writeln('______________________________________________________');Delay(1000);
      Gotoxy(50,16);Writeln('Senhor(a)' ,Nome[k], '                                ');
      Gotoxy(50,17);Writeln('______________________________________________________');
      
      
      Gotoxy(104,03);Writeln('|');
      Gotoxy(49,03);Writeln('|');
      Gotoxy(104,04);Writeln('|');
      Gotoxy(49,04);Writeln('|');
      Gotoxy(104,05);Writeln('|');
      Gotoxy(49,05);Writeln('|');
      Gotoxy(104,06);Writeln('|');
      Gotoxy(49,06);Writeln('|');
      Gotoxy(104,07);Writeln('|');
      Gotoxy(49,07);Writeln('|');
      Gotoxy(104,08);Writeln('|');
      Gotoxy(49,08);Writeln('|');
      Gotoxy(104,09);Writeln('|');
      Gotoxy(49,09);Writeln('|');
      Gotoxy(104,10);Writeln('|');
      Gotoxy(49,10);Writeln('|');
      Gotoxy(104,11);Writeln('|');
      Gotoxy(49,11);Writeln('|');
      Gotoxy(104,12);Writeln('|');
      Gotoxy(49,12);Writeln('|');
      Gotoxy(104,13);Writeln('|');
      Gotoxy(49,13);Writeln('|');
      Gotoxy(104,14);Writeln('|');
      Gotoxy(49,14);Writeln('|');
      Gotoxy(104,15);Writeln('|');
      Gotoxy(49,15);Writeln('|');
      Gotoxy(104,16);Writeln('|');
      Gotoxy(49,16);Writeln('|');
      Gotoxy(104,17);Writeln('|');
      Gotoxy(49,17);Writeln('|');
    end;
    
  end;
  
  
  
  
  
  
  readkey;
  
  
  
  
End.//1
