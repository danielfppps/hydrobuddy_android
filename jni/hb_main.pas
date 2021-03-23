{hint: Pascal files location: ...\HydroBuddy\jni }
unit HB_main;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, Laz_And_Controls, And_jni, windowmanager,
  actionbartab, customdialog, modaldialog, comboedittext, radiogroup, gridview,
  intentmanager, menu, densesolver, math;
  
type

  { TAndroidModule1 }

  TAndroidModule1 = class(jForm)
    jButton13: jButton;
    jButton14: jButton;
    jButton15: jButton;
    jDialogYN2: jDialogYN;
    jEditText41: jEditText;
    jEditText42: jEditText;
    jDoFDialog: jCustomDialog;
    jWQDialog: jCustomDialog;
    WQIds: jListView;
    jActionBarTab1: jActionBarTab;
    jButton1: jButton;
    jButton10: jButton;
    jButton11: jButton;
    jButton12: jButton;
    jButton2: jButton;
    jButton3: jButton;
    jButton4: jButton;
    jButton5: jButton;
    jButton6: jButton;
    jButton7: jButton;
    jButton8: jButton;
    jButton9: jButton;
    jCheckBox1: jCheckBox;
    jCustomDialog1: jCustomDialog;
    jEditText40: jEditText;
    jFormulationNameDialog: jCustomDialog;
    jEditText1: jEditText;
    jEditText10: jEditText;
    jEditText11: jEditText;
    jEditText12: jEditText;
    jEditText13: jEditText;
    jEditText14: jEditText;
    jEditText15: jEditText;
    jEditText16: jEditText;
    jEditText2: jEditText;
    jEditText3: jEditText;
    jEditText36: jEditText;
    jEditText37: jEditText;
    jEditText39: jEditText;
    jEditText4: jEditText;
    jEditText5: jEditText;
    jEditText6: jEditText;
    jEditText7: jEditText;
    jEditText8: jEditText;
    jEditText9: jEditText;
    jWQView: jListView;
    jPanel10: jPanel;
    jIntentManager1: jIntentManager;
    jPanel11: jPanel;
    jPanel5: jPanel;
    jPanel6: jPanel;
    jPanel7: jPanel;
    jPanel8: jPanel;
    jDBListView1: jDBListView;
    jDialogYN1: jDialogYN;
    jEditText17: jEditText;
    jEditText18: jEditText;
    jEditText19: jEditText;
    jEditText20: jEditText;
    jEditText21: jEditText;
    jEditText22: jEditText;
    jEditText23: jEditText;
    jEditText24: jEditText;
    jEditText25: jEditText;
    jEditText26: jEditText;
    jEditText27: jEditText;
    jEditText28: jEditText;
    jEditText29: jEditText;
    jEditText30: jEditText;
    jEditText31: jEditText;
    jEditText32: jEditText;
    jEditText33: jEditText;
    jEditText34: jEditText;
    jEditText35: jEditText;
    jEditText38: jEditText;
    FormulationsView: jListView;
    jPanel4: jPanel;
    jPanel9: jPanel;
    jRadioGroup1: jRadioGroup;
    jRadioGroup2: jRadioGroup;
    jResultsEditDialog: jCustomDialog;
    jResultsGrid: jGridView;
    jResultsGrid2: jGridView;
    jScrollView1: jScrollView;
    jTextView1: jTextView;
    jTextView10: jTextView;
    jTextView11: jTextView;
    jTextView12: jTextView;
    jTextView13: jTextView;
    jTextView14: jTextView;
    jTextView15: jTextView;
    jTextView16: jTextView;
    jTextView17: jTextView;
    jTextView18: jTextView;
    jTextView19: jTextView;
    jTextView2: jTextView;
    jTextView20: jTextView;
    jTextView21: jTextView;
    jTextView22: jTextView;
    jTextView23: jTextView;
    jTextView24: jTextView;
    jTextView25: jTextView;
    jTextView26: jTextView;
    jTextView27: jTextView;
    jTextView28: jTextView;
    jTextView29: jTextView;
    jTextView3: jTextView;
    jTextView30: jTextView;
    jTextView31: jTextView;
    jTextView32: jTextView;
    jTextView33: jTextView;
    jTextView34: jTextView;
    jTextView35: jTextView;
    jTextView36: jTextView;
    jTextView37: jTextView;
    jTextView38: jTextView;
    jTextView39: jTextView;
    FormulationsIds: jListView;
    jTextView4: jTextView;
    jTextView40: jTextView;
    jTextView41: jTextView;
    jTextView5: jTextView;
    jTextView6: jTextView;
    jTextView7: jTextView;
    jTextView8: jTextView;
    jTextView9: jTextView;
    jWQGrid: jGridView;
    SubstancesView: jListView;
    jPanel1: jPanel;
    jPanel2: jPanel;
    jPanel3: jPanel;
    sqlCursor: jSqliteCursor;
    jSqliteDataAccess1: jSqliteDataAccess;
    SubstancesIds: jListView;
    procedure FormulationsViewClickItem(Sender: TObject; itemIndex: integer;
      itemCaption: string);
    procedure FormulationsViewLongClickItem(Sender: TObject;
      itemIndex: integer; itemCaption: string);
    procedure jActionBarTab1TabSelected(Sender: TObject; view: jObject;
      title: string);
    procedure jButton10Click(Sender: TObject);
    procedure jButton11Click(Sender: TObject);
    procedure jButton12Click(Sender: TObject);
    procedure jButton13Click(Sender: TObject);
    procedure jButton14Click(Sender: TObject);
    procedure jButton15Click(Sender: TObject);
    procedure jButton1Click(Sender: TObject);
    procedure AndroidModule1JNIPrompt(Sender: TObject);
    procedure jButton2Click(Sender: TObject);
    procedure jButton3Click(Sender: TObject);
    procedure jButton4Click(Sender: TObject);
    procedure jButton5Click(Sender: TObject);
    procedure jButton6Click(Sender: TObject);
    procedure jButton7Click(Sender: TObject);
    procedure jButton8Click(Sender: TObject);
    procedure jButton9Click(Sender: TObject);
    procedure jDialogYN1ClickYN(Sender: TObject; YN: TClickYN);
    procedure jDialogYN2ClickYN(Sender: TObject; YN: TClickYN);
    procedure jPanel1FlingGesture(Sender: TObject; flingGesture: TFlingGesture);
    procedure jPanel2FlingGesture(Sender: TObject; flingGesture: TFlingGesture);
    procedure jPanel3FlingGesture(Sender: TObject; flingGesture: TFlingGesture);
    procedure jPanel4FlingGesture(Sender: TObject; flingGesture: TFlingGesture);
    procedure jResultsGridClickItem(Sender: TObject; ItemIndex: integer;
      itemCaption: string);
    procedure jTextView20Click(Sender: TObject);
    procedure jTextView19Click(Sender: TObject);
    procedure jListView1ClickItem(Sender: TObject; itemIndex: integer;
      itemCaption: string);
    procedure jTextView32Click(Sender: TObject);
    procedure jTextView38Click(Sender: TObject);
    procedure jWQGridClickItem(Sender: TObject; ItemIndex: integer;
      itemCaption: string);
    procedure jWQViewClickItem(Sender: TObject; itemIndex: integer;
      itemCaption: string);
    procedure jWQViewLongClickItem(Sender: TObject; itemIndex: integer;
      itemCaption: string);
    procedure SubstancesViewClickItem(Sender: TObject; itemIndex: integer;
      itemCaption: string);
    procedure SubstancesViewLongClickItem(Sender: TObject; itemIndex: integer;
      itemCaption: string);
  private
    {private declarations}
  public
    {public declarations}
    var
    selected_substance_id, selected_formulation_id : integer;
    degree_of_freedom: String;
    selected_col, selected_row: integer;
    selected_water_quality_id: integer;
    wq_dialog_mode: integer;
    const
    elements : array[0..15] of string =
    (
      'N_NO3',
      'N_NH4',
      'P',
      'K',
      'Ca',
      'Mg',
      'S',
      'Fe',
      'Mn',
      'B',
      'Zn',
      'Cu',
      'Mo',
      'Na',
      'Cl',
      'Si') ;

  substance_db_fields : array[0..19] of string =
    (
      'Name',
      'isLiquid',
      'Density',
      'Purity',
      'N_NO3',
      'N_NH4',
      'P',
      'K',
      'Ca',
      'Mg',
      'S',
      'Fe',
      'Mn',
      'B',
      'Zn',
      'Cu',
      'Mo',
      'Na',
      'Cl',
      'Si') ;

  procedure UpdateSubstances();
  procedure UpdateFormulations();
  procedure UpdateResults();
  procedure UpdateWaterQuality(load_default:Boolean);
  function round2(const Number: extended; const Places: longint): extended;

  end;

var
  AndroidModule1: TAndroidModule1;

implementation
  
{$R *.lfm}
  

{ TAndroidModule1 }

function TAndroidModule1.round2(const Number: extended; const Places: longint): extended;
var
  t: extended;
begin
  t      := power(10, places);
  round2 := round(Number * t) / t;
end;

procedure TAndroidModule1.AndroidModule1JNIPrompt(Sender: TObject);
begin
    Self.SetIconActionBar('ic_bullets');
    jActionBarTab1.Add('Intro', jPanel7.View{sheet view}, 'ic_bullet_green');
    jActionBarTab1.Add('Inputs', jPanel1.View{sheet view}, 'ic_bullet_green');
    jActionBarTab1.Add('Substances', jPanel2.View {sheet view}, 'ic_bullet_yellow');
    jActionBarTab1.Add('Formulations', jPanel3.View {sheet view}, 'ic_bullet_yellow');
    jActionBarTab1.Add('Water Quality', jPanel9.View {sheet view}, 'ic_bullet_yellow');
    jActionBarTab1.Add('Results inputs', jPanel4.View{sheet view},'ic_bullet_red');
    jActionBarTab1.Add('Results elements', jPanel8.View{sheet view},'ic_bullet_red');
    Self.SetTabNavigationModeActionBar;  //this is needed!!!

    UpdateWaterQuality(True);
    jRadioGroup1.CheckedIndex := 0;
    jRadioGroup2.CheckedIndex := 0;
    degree_of_freedom := 'S';

end;

procedure TAndroidModule1.jButton2Click(Sender: TObject);
begin
  jButton3.Text := 'Add';
  jButton4.Enabled := False;
  jTextView33.Visible := True ;
  jEditText33.Visible := True;
  jCheckBox1.Visible := True;

  jEditText17.Text := '0';
  jEditText18.Text := '0';
  jEditText19.Text := '0';
  jEditText20.Text := '0';
  jEditText21.Text := '0';
  jEditText22.Text := '0';
  jEditText23.Text := '0';
  jEditText24.Text := '0';
  jEditText25.Text := '0';
  jEditText26.Text := '0';
  jEditText27.Text := '0';
  jEditText28.Text := '0';
  jEditText29.Text := '0';
  jEditText30.Text := '0';
  jEditText31.Text := '0';
  jEditText32.Text := '0';
  jEditText33.Text := '0';
  jEditText34.Text := '100';
  jEditText35.Text := '';
  jEditText39.Text := '';
  jCheckBox1.Checked := False;

  jCustomDialog1.Show();
end;

procedure TAndroidModule1.jButton3Click(Sender: TObject);
var
  is_liquid: String;
begin

   is_liquid := '0';
   if jCheckBox1.Checked then is_liquid := '1';

   if jTextView19.Text = 'P2O5' then jEditText19.Text := FloatToStr(StrToFloat(jEditText19.Text)*2.2915);
   if jTextView20.Text = 'K2O' then jEditText20.Text  := FloatToStr(StrToFloat(jEditText20.Text)*(1/1.2047));
   if jTextView32.Text = 'SiO2' then jEditText32.Text := FloatToStr(StrToFloat(jEditText32.Text)*(1/2.1394));

   // this is for updating an existin item
   if jButton3.Text = 'Update' then
   begin

      jSqliteDataAccess1.UpdateTable('UPDATE substances SET Name="' + jEditText35.Text + '",'+
                                     'ConcType="' + jEditText39.Text + '",' +
                                     'Purity=' + jEditText34.Text + ',' +
                                     'Density=' + jEditText33.Text + ',' +
                                     'isLiquid=' + is_liquid + ',' +
                                     'N_NO3=' + jEditText17.Text + ',' +
                                     'N_NH4=' + jEditText18.Text + ',' +
                                     'P=' + jEditText19.Text + ',' +
                                     'K=' + jEditText20.Text + ',' +
                                     'Ca=' + jEditText21.Text + ',' +
                                     'Mg=' + jEditText22.Text + ',' +
                                     'S=' + jEditText23.Text + ',' +
                                     'Fe=' + jEditText24.Text + ',' +
                                     'Mn=' + jEditText25.Text + ',' +
                                     'B=' + jEditText26.Text + ',' +
                                     'Zn=' + jEditText27.Text + ',' +
                                     'Cu=' + jEditText28.Text + ',' +
                                     'Mo=' + jEditText29.Text + ',' +
                                     'Na=' + jEditText30.Text + ',' +
                                     'Cl=' + jEditText31.Text + ',' +
                                     'Si=' + jEditText32.Text +
                                     ' WHERE substance_id=' + IntToStr(selected_substance_id));
   end;

   // this is for adding a new item
   if jButton3.Text = 'Add' then
   begin

      jSqliteDataAccess1.InsertIntoTable('INSERT INTO substances (Name, ConcType, Purity, Density, isLiquid, N_NO3, N_NH4, P, K, Ca, Mg, S, Fe, Mn, B, Zn, Cu, Mo, Na, Cl, Si) VALUES ' +
                                     '("' + jEditText35.Text + '",'+
                                     '("' + jEditText39.Text + '",'+
                                     jEditText34.Text + ',' +
                                     jEditText33.Text + ',' +
                                     is_liquid + ',' +
                                     jEditText17.Text + ',' +
                                     jEditText18.Text + ',' +
                                     jEditText19.Text + ',' +
                                     jEditText20.Text + ',' +
                                     jEditText21.Text + ',' +
                                     jEditText22.Text + ',' +
                                     jEditText23.Text + ',' +
                                     jEditText24.Text + ',' +
                                     jEditText25.Text + ',' +
                                     jEditText26.Text + ',' +
                                     jEditText27.Text + ',' +
                                     jEditText28.Text + ',' +
                                     jEditText29.Text + ',' +
                                     jEditText30.Text + ',' +
                                     jEditText31.Text + ',' +
                                     jEditText32.Text + ')');
   end;

   UpdateSubstances;
   jCustomDialog1.Close();

end;

procedure TAndroidModule1.jButton4Click(Sender: TObject);
begin
   jSqliteDataAccess1.DeleteFromTable('DELETE FROM substances WHERE substance_id=' + IntToStr(selected_substance_id));
   UpdateSubstances;
   jCustomDialog1.Close();
end;

procedure TAndroidModule1.jButton5Click(Sender: TObject);
begin
  jResultsGrid.Cells[selected_col, selected_row] := jEditText38.Text;
  UpdateResults();
  JResultsEditDialog.Close();
end;

procedure TAndroidModule1.jButton6Click(Sender: TObject);
begin
  if jIntentManager1.IsPackageInstalled('com.android.chrome') then
   begin
     jIntentManager1.SetAction(iaView);  //or 'android.intent.action.VIEW'
     jIntentManager1.SetPackage('com.android.chrome');
     jIntentManager1.SetDataUriAsString('https://scienceinhydroponics.com');
     jIntentManager1.StartActivity();
   end
end;

procedure TAndroidModule1.jButton7Click(Sender: TObject);
begin
  if jIntentManager1.IsPackageInstalled('com.android.chrome') then
   begin
     jIntentManager1.SetAction(iaView);  //or 'android.intent.action.VIEW'
     jIntentManager1.SetPackage('com.android.chrome');
     jIntentManager1.SetDataUriAsString('https://www.youtube.com/channel/UCBUozkhpFEjwPTmx4_RSMwA');
     jIntentManager1.StartActivity();
   end
end;

procedure TAndroidModule1.jButton8Click(Sender: TObject);
begin
   if jIntentManager1.IsPackageInstalled('com.android.chrome') then
   begin
     jIntentManager1.SetAction(iaView);  //or 'android.intent.action.VIEW'
     jIntentManager1.SetPackage('com.android.chrome');
     jIntentManager1.SetDataUriAsString('https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=6YR6X5AAEGBGJ');
     jIntentManager1.StartActivity();
   end
end;

procedure TAndroidModule1.jButton9Click(Sender: TObject);
begin
     jFormulationNameDialog.Show();
end;

procedure TAndroidModule1.jDialogYN1ClickYN(Sender: TObject; YN: TClickYN);
begin
  if YN = clickYes then
  begin
     jSqliteDataAccess1.DeleteFromTable('DELETE FROM formulations WHERE formulation_id=' + IntToStr(selected_formulation_id));
     UpdateFormulations;
  end;
end;

procedure TAndroidModule1.jDialogYN2ClickYN(Sender: TObject; YN: TClickYN);
begin
   if YN = clickYes then
  begin
     jSqliteDataAccess1.DeleteFromTable('DELETE FROM water_quality WHERE water_quality_id=' + IntToStr(selected_water_quality_id));
     UpdateWaterQuality(False);
  end;
end;

procedure TAndroidModule1.jPanel1FlingGesture(Sender: TObject;
  flingGesture: TFlingGesture);
begin
  //case flingGesture of
  //   fliLeftToRight: jActionBarTab1.SelectTabByIndex(1);
  //end;
end;

procedure TAndroidModule1.jPanel2FlingGesture(Sender: TObject;
  flingGesture: TFlingGesture);
begin
  //case flingGesture of
  //   fliLeftToRight: jActionBarTab1.SelectTabByIndex(2);
  //   fliRightToLeft: jActionBarTab1.SelectTabByIndex(0);
  //end;
end;

procedure TAndroidModule1.jPanel3FlingGesture(Sender: TObject;
  flingGesture: TFlingGesture);
begin
  //case flingGesture of
  //   fliLeftToRight: jActionBarTab1.SelectTabByIndex(3);
  //   fliRightToLeft: jActionBarTab1.SelectTabByIndex(1);
  //end;
end;

procedure TAndroidModule1.jPanel4FlingGesture(Sender: TObject;
  flingGesture: TFlingGesture);
begin
  //case flingGesture of
  //   fliLeftToRight: jActionBarTab1.SelectTabByIndex(2);
  //end;
end;

procedure TAndroidModule1.jResultsGridClickItem(Sender: TObject;
  ItemIndex: integer; itemCaption: string);
begin
  jResultsGrid.IndexToCoord(ItemIndex, selected_col, selected_row);
  jEditText38.Text := itemCaption;
  jResultsEditDialog.Show();
end;

procedure TAndroidModule1.jTextView20Click(Sender: TObject);
begin
  if jTextView20.Text = 'K' then
    begin
         jTextView20.Text := 'K2O';
         jEditText20.Text := FloatToStr(StrToFloat(jEditText20.Text)*1.2047);
         exit;
    end;

    if jTextView20.Text = 'K2O'then
    begin
         jTextView20.Text := 'K';
         jEditText20.Text := FloatToStr(StrToFloat(jEditText20.Text)*(1/1.2047));
         exit;
    end;
end;

procedure TAndroidModule1.jTextView19Click(Sender: TObject);
begin
    if jTextView19.Text = 'P'then
    begin
         jTextView19.Text := 'P2O5';
         jEditText19.Text := FloatToStr(StrToFloat(jEditText19.Text)*2.2915);
         exit;
    end;

    if jTextView19.Text = 'P2O5' then
    begin
         jTextView19.Text := 'P';
         jEditText19.Text := FloatToStr(StrToFloat(jEditText19.Text)*(1/2.2915));
         exit;
    end;
end;

procedure TAndroidModule1.jListView1ClickItem(Sender: TObject;
  itemIndex: integer; itemCaption: string);
begin
end;

procedure TAndroidModule1.jTextView32Click(Sender: TObject);
begin
      if jTextView32.Text = 'Si'then
    begin
         jTextView32.Text := 'SiO2';
         jEditText32.Text := FloatToStr(StrToFloat(jEditText32.Text)*2.1394);
         exit;
    end;

    if jTextView32.Text = 'SiO2' then
    begin
         jTextView32.Text := 'Si';
         jEditText32.Text := FloatToStr(StrToFloat(jEditText32.Text)*(1/2.1394));
         exit;
    end;
end;

procedure TAndroidModule1.jTextView38Click(Sender: TObject);
begin

  if jIntentManager1.IsPackageInstalled('com.android.chrome') then
   begin
     jIntentManager1.SetAction(iaView);  //or 'android.intent.action.VIEW'
     jIntentManager1.SetPackage('com.android.chrome');
     jIntentManager1.SetDataUriAsString('https://scienceinhydroponics.com');
     jIntentManager1.StartActivity();
   end

end;

procedure TAndroidModule1.jWQGridClickItem(Sender: TObject; ItemIndex: integer;
  itemCaption: string);
var
  col, row: integer;
begin
  jWQGrid.IndexToCoord(ItemIndex, col, row);
  if (col = 1) and (row > 0) then
  begin
       wq_dialog_mode := row;
       jEditText41.Text := jWQGrid.Cells[col, row];
       jWQDialog.Show();
  end;

end;

procedure TAndroidModule1.jWQViewClickItem(Sender: TObject; itemIndex: integer;
  itemCaption: string);
var
  i: integer;
begin
  selected_water_quality_id := StrtoInt(WQIds.Items[itemIndex]);
  jSqliteDataAccess1.Select('SELECT * FROM water_quality WHERE water_quality_id=' + WQIds.Items[itemIndex], false);
  sqlCursor.MoveToFirst;
  for i := 0 to 15 do jWQGrid.Cells[1,i+1] := sqlCursor.GetValueToString(elements[i]);
end;

procedure TAndroidModule1.jWQViewLongClickItem(Sender: TObject;
  itemIndex: integer; itemCaption: string);
begin
      selected_water_quality_id := StrToInt(WQIds.Items[itemIndex]);
      jDialogYN2.Msg := 'Delete water quality parameters "' + jWQView.Items[itemIndex] + '" ?';
      jDialogYN2.Show();
end;


procedure TAndroidModule1.SubstancesViewClickItem(Sender: TObject;
  itemIndex: integer; itemCaption: string);
var
  substance_id : String;
  is_used: integer;
begin

     substance_id := SubstancesIds.Items[itemIndex];
     jSqliteDataAccess1.Select('SELECT is_used FROM substances WHERE substance_id=' + substance_id, false);

      sqlCursor.MoveToFirst;
      is_used := sqlCursor.GetValueAsInteger('is_used');

      if is_used = 0 then
      begin
      jSqliteDataAccess1.UpdateTable('UPDATE substances SET is_used=1 WHERE substance_id=' + substance_id);
      SubstancesView.SetFontColorByIndex(colbrLightGreen, itemIndex);
      end;

      if is_used = 1 then
      begin
      jSqliteDataAccess1.UpdateTable('UPDATE substances SET is_used=0 WHERE substance_id=' + substance_id);
      SubstancesView.SetFontColorByIndex(colbrWhite, itemIndex);
      end;

end;

procedure TAndroidModule1.SubstancesViewLongClickItem(Sender: TObject;
  itemIndex: integer; itemCaption: string);
var
  substance_id : String;
  j: Integer;
  is_used: integer;
begin

  substance_id := SubstancesIds.Items[itemIndex];
  selected_substance_id := StrToInt(substance_id);
  jSqliteDataAccess1.Select('SELECT * FROM substances WHERE substance_id=' + substance_id, false);
  sqlCursor.MoveToFirst;

  jEditText17.Text := sqlCursor.GetValueAsString('N_NO3');
  jEditText18.Text := sqlCursor.GetValueAsString('N_NH4');
  jEditText19.Text := sqlCursor.GetValueAsString('P');
  jEditText20.Text := sqlCursor.GetValueAsString('K');
  jEditText21.Text := sqlCursor.GetValueAsString('Ca');
  jEditText22.Text := sqlCursor.GetValueAsString('Mg');
  jEditText23.Text := sqlCursor.GetValueAsString('S');
  jEditText24.Text := sqlCursor.GetValueAsString('Fe');
  jEditText25.Text := sqlCursor.GetValueAsString('Mn');
  jEditText26.Text := sqlCursor.GetValueAsString('B');
  jEditText27.Text := sqlCursor.GetValueAsString('Zn');
  jEditText28.Text := sqlCursor.GetValueAsString('Cu');
  jEditText29.Text := sqlCursor.GetValueAsString('Mo');
  jEditText30.Text := sqlCursor.GetValueAsString('Na');
  jEditText31.Text := sqlCursor.GetValueAsString('Cl');
  jEditText32.Text := sqlCursor.GetValueAsString('Si');

  if sqlCursor.GetValueAsInteger('isLiquid') = 1 then
  begin
     jTextView33.Visible := True ;
     jEditText33.Text := sqlCursor.GetValueAsString('Density');
     jCheckBox1.Checked := True;
     jEditText33.Visible := True;
     jCheckBox1.Visible := True;
  end;

  if sqlCursor.GetValueAsInteger('isLiquid') = 0 then
  begin
     jTextView33.Visible := False;
     jEditText33.Visible := False;
     jCheckBox1.Visible := False;
     jEditText33.Text := '0';
     jCheckBox1.Checked := False;
  end;

  jEditText34.Text := sqlCursor.GetValueAsString('Purity');
  jEditText35.Text := sqlCursor.GetValueAsString('Name');
  jEditText39.Text := sqlCursor.GetValueAsString('ConcType');


  jTextView19.Text := 'P';
  jTextView20.Text := 'K';
  jButton3.Text := 'Update';
  jButton4.Enabled := True;

  jSqliteDataAccess1.Select('SELECT is_used FROM substances WHERE substance_id=' + substance_id, false);

  sqlCursor.MoveToFirst;
  is_used := sqlCursor.GetValueAsInteger('is_used');

  if is_used = 0 then
  begin
      jSqliteDataAccess1.UpdateTable('UPDATE substances SET is_used=1 WHERE substance_id=' + substance_id);
      SubstancesView.SetFontColorByIndex(colbrLightGreen, itemIndex);
  end;

  if is_used = 1 then
  begin
      jSqliteDataAccess1.UpdateTable('UPDATE substances SET is_used=0 WHERE substance_id=' + substance_id);
      SubstancesView.SetFontColorByIndex(colbrWhite, itemIndex);
  end;

  jCustomDialog1.Show();

end;

procedure TAndroidModule1.UpdateResults();
var
  i, j: integer;
  volume: double;
  Result: array of double;
  all_element_contributions : array of array of double ;
  total_ppm_contribution_for_element: double;
  all_element_targets: array of double;
  conc_factor: double;
  arraysize: integer;
  mass_of_salt: double;

  begin

      // variable initializations
      all_element_contributions := nil;
      arraysize := 0;
      volume := StrToFloat(jEditText36.Text);
      conc_factor := StrToFloat(jEditText37.Text);
      all_element_targets := nil;

      SetLength(all_element_targets, 16);

      for i := 0 to 15 do
      begin

           if elements[i] = 'N_NO3' then all_element_targets[i] := StrToFloat(jEditText1.Text);
           if elements[i] = 'N_NH4' then all_element_targets[i] := StrToFloat(jEditText2.Text);
           if elements[i] = 'P' then all_element_targets[i] := StrToFloat(jEditText3.Text);
           if elements[i] = 'K' then all_element_targets[i] := StrToFloat(jEditText4.Text);
           if elements[i] = 'Ca' then all_element_targets[i] := StrToFloat(jEditText5.Text);
           if elements[i] = 'Mg' then all_element_targets[i] := StrToFloat(jEditText6.Text);
           if elements[i] = 'S' then all_element_targets[i] := StrToFloat(jEditText7.Text);
           if elements[i] = 'Fe' then all_element_targets[i] := StrToFloat(jEditText8.Text);
           if elements[i] = 'Mn' then all_element_targets[i] := StrToFloat(jEditText9.Text);
           if elements[i] = 'B' then all_element_targets[i] := StrToFloat(jEditText10.Text);
           if elements[i] = 'Zn' then all_element_targets[i] := StrToFloat(jEditText11.Text);
           if elements[i] = 'Cu' then all_element_targets[i] := StrToFloat(jEditText12.Text);
           if elements[i] = 'Mo' then all_element_targets[i] := StrToFloat(jEditText13.Text);
           if elements[i] = 'Na' then all_element_targets[i] := StrToFloat(jEditText14.Text);
           if elements[i] = 'Cl' then all_element_targets[i] := StrToFloat(jEditText15.Text);
           if elements[i] = 'Si' then all_element_targets[i] := StrToFloat(jEditText16.Text);
      end;


      // This query is done to obtain the size of the selected substance list
      jSqliteDataAccess1.Select('SELECT * FROM substances WHERE is_used=1', false);
      sqlCursor.MoveToFirst;
      while not sqlCursor.EOF do
      begin
           arraysize := arraysize + 1;
           sqlCursor.MoveToNext;
      end;

      SetLength(all_element_contributions, 16, arraysize);
      SetLength(Result, 16);

      // initialize all element contributions
      for i := 0 to arraysize - 1 do
      begin
           for j := 0 to 15 do
           begin
                all_element_contributions[j][i] := 0;
           end;
      end;


      // This DB query is fill the problem matrix
      i := 0;
      jSqliteDataAccess1.Select('SELECT * FROM substances WHERE is_used=1', false);
      sqlCursor.MoveToFirst;
      while not sqlCursor.EOF do
      begin
           for j := 0 to 15 do
           begin
                all_element_contributions[j][i] := 0.01 * StrToFloat(sqlCursor.GetValueToString(elements[j])) * StrToFloat(sqlCursor.GetValueToString('Purity')) / volume;
           end;

           i := i+1;
           sqlCursor.MoveToNext;
      end;

    for i := 0 to 15 do
    begin

         total_ppm_contribution_for_element  := StrToFloat(jWQGrid.Cells[1,i+1]);;

         for j := 0 to arraysize - 1 do
         begin
              mass_of_salt := StrToFloat(jResultsGrid.Cells[1, j+1]);
              if ( mass_of_salt > 0) then
              begin
                   if jRadioGroup2.CheckedIndex = 0 then total_ppm_contribution_for_element  := mass_of_salt * all_element_contributions[i][j] + total_ppm_contribution_for_element;
                   if jRadioGroup2.CheckedIndex = 1 then total_ppm_contribution_for_element  := (mass_of_salt/conc_factor) * all_element_contributions[i][j] + total_ppm_contribution_for_element;
              end;
         end;
         Result[i] := total_ppm_contribution_for_element;
    end;

    jResultsGrid2.Cells[0,0] := 'Element';
    jResultsGrid2.Cells[1,0] := 'Conc (ppm)';
    jResultsGrid2.Cells[2,0] := 'Error (%)';

    for i := 0 to 15 do
    begin
      jResultsGrid2.Cells[0,i+1] := elements[i];
      jResultsGrid2.Cells[1,i+1] := (FloatToStr(round2(Result[i], 3)));

      if all_element_targets[i] <> 0 then
      jResultsGrid2.Cells[2,i+1] := (FloatToStr(round2(100*(Result[i]-all_element_targets[i])/all_element_targets[i], 3)))
      else
      jResultsGrid2.Cells[2,i+1] := '0';

    end;

    jActionBarTab1.SelectTabByIndex(6);

end;

procedure TAndroidModule1.jButton1Click(Sender: TObject);
var
  problem_matrix_left: array of array of double;
  problem_matrix_right: array of double;
  i, j: integer;
  varcount, arraysize: integer;
  varnames: array of string;
  vartargetvalue: array of double;
  volume: double;
  name_array: array of array of string;
  Result: array of double;
  conc_factor: double;
  all_element_contributions : array of array of double ;
  total_ppm_contribution_for_element: double;
  all_element_targets: array of double;


  // for alglib function call
  solutions: array of double;
  answer: integer;
  report: DenseSolverLSReport;

  begin

      // variable initializations
      varcount := 15; // the variable count represents the number of elements minus one degree of freedom
      problem_matrix_left := nil ;
      problem_matrix_right := nil ;
      all_element_contributions := nil;
      name_array := nil ;
      arraysize := 0;
      volume := StrToFloat(jEditText36.Text);
      conc_factor := StrToFloat(jEditText37.Text);
      all_element_targets := nil;

      SetLength(varnames, 15);
      SetLength(vartargetvalue, 15);
      SetLength(all_element_targets, 16);

      j := 0;

      for i := 0 to 15 do
      begin
           if elements[i] <> degree_of_freedom then
           begin
                varnames[j] := elements[i];
                if elements[i] = 'N_NO3' then vartargetvalue[j] := StrToFloat(jEditText1.Text);
                if elements[i] = 'N_NH4' then vartargetvalue[j] := StrToFloat(jEditText2.Text);
                if elements[i] = 'P' then vartargetvalue[j] := StrToFloat(jEditText3.Text);
                if elements[i] = 'K' then vartargetvalue[j] := StrToFloat(jEditText4.Text);
                if elements[i] = 'Ca' then vartargetvalue[j] := StrToFloat(jEditText5.Text);
                if elements[i] = 'Mg' then vartargetvalue[j] := StrToFloat(jEditText6.Text);
                if elements[i] = 'S' then vartargetvalue[j] := StrToFloat(jEditText7.Text);
                if elements[i] = 'Fe' then vartargetvalue[j] := StrToFloat(jEditText8.Text);
                if elements[i] = 'Mn' then vartargetvalue[j] := StrToFloat(jEditText9.Text);
                if elements[i] = 'B' then vartargetvalue[j] := StrToFloat(jEditText10.Text);
                if elements[i] = 'Zn' then vartargetvalue[j] := StrToFloat(jEditText11.Text);
                if elements[i] = 'Cu' then vartargetvalue[j] := StrToFloat(jEditText12.Text);
                if elements[i] = 'Mo' then vartargetvalue[j] := StrToFloat(jEditText13.Text);
                if elements[i] = 'Na' then vartargetvalue[j] := StrToFloat(jEditText14.Text);
                if elements[i] = 'Cl' then vartargetvalue[j] := StrToFloat(jEditText15.Text);
                if elements[i] = 'Si' then vartargetvalue[j] := StrToFloat(jEditText16.Text);

                // adjust for water quality
                if (vartargetvalue[j] - StrToFloat(jWQGrid.Cells[1,i+1]) < 0) then vartargetvalue[j] := 0 else vartargetvalue[j] := vartargetvalue[j]-StrToFloat(jWQGrid.Cells[1,i+1]);

                j := j+1;
           end;

           if elements[i] = 'N_NO3' then all_element_targets[i] := StrToFloat(jEditText1.Text);
           if elements[i] = 'N_NH4' then all_element_targets[i] := StrToFloat(jEditText2.Text);
           if elements[i] = 'P' then all_element_targets[i] := StrToFloat(jEditText3.Text);
           if elements[i] = 'K' then all_element_targets[i] := StrToFloat(jEditText4.Text);
           if elements[i] = 'Ca' then all_element_targets[i] := StrToFloat(jEditText5.Text);
           if elements[i] = 'Mg' then all_element_targets[i] := StrToFloat(jEditText6.Text);
           if elements[i] = 'S' then all_element_targets[i] := StrToFloat(jEditText7.Text);
           if elements[i] = 'Fe' then all_element_targets[i] := StrToFloat(jEditText8.Text);
           if elements[i] = 'Mn' then all_element_targets[i] := StrToFloat(jEditText9.Text);
           if elements[i] = 'B' then all_element_targets[i] := StrToFloat(jEditText10.Text);
           if elements[i] = 'Zn' then all_element_targets[i] := StrToFloat(jEditText11.Text);
           if elements[i] = 'Cu' then all_element_targets[i] := StrToFloat(jEditText12.Text);
           if elements[i] = 'Mo' then all_element_targets[i] := StrToFloat(jEditText13.Text);
           if elements[i] = 'Na' then all_element_targets[i] := StrToFloat(jEditText14.Text);
           if elements[i] = 'Cl' then all_element_targets[i] := StrToFloat(jEditText15.Text);
           if elements[i] = 'Si' then all_element_targets[i] := StrToFloat(jEditText16.Text);
      end;


      // This query is done to obtain the size of the selected substance list
      jSqliteDataAccess1.Select('SELECT * FROM substances WHERE is_used=1', false);
      sqlCursor.MoveToFirst;
      while not sqlCursor.EOF do
      begin
           arraysize := arraysize + 1;

           if jRadioGroup2.CheckedIndex = 1 then
           begin
               if sqlCursor.GetValueToString('ConcType') = 'N' then
               begin
                   ShowMessage(sqlCursor.GetValueToString('Name') + ' is incompatible with concentrated solutions. Aborting.');
                   exit;
               end;
           end;


           sqlCursor.MoveToNext;
      end;


      SetLength(name_array, arraysize, 2);
      SetLength(problem_matrix_left, varcount, arraysize);
      SetLength(problem_matrix_right, varcount);
      SetLength(all_element_contributions, 16, arraysize);
      SetLength(Result, 16);

      // initialize all jTextView40 contributions
      for i := 0 to arraysize - 1 do
      begin
           for j := 0 to 15 do
           begin
                all_element_contributions[j][i] := 0;
           end;
      end;

      // initialize problem_matrix_left
      for i := 0 to arraysize - 1 do
      begin
           for j := 0 to varcount - 1 do
           begin
                problem_matrix_left[j][i] := 0;
           end;
      end;

      // This DB query fills the problem matrix
      i := 0;
      jSqliteDataAccess1.Select('SELECT * FROM substances WHERE is_used=1', false);
      sqlCursor.MoveToFirst;
      while not sqlCursor.EOF do
      begin
           name_array[i][0] := sqlCursor.GetValueToString('Name');
           name_array[i][1] := sqlCursor.GetValueToString('ConcType');

           for j := 0 to varcount - 1 do
           begin
                problem_matrix_left[j][i] :=  0.01 * StrToFloat(sqlCursor.GetValueToString(varnames[j])) * StrToFloat(sqlCursor.GetValueToString('Purity')) / volume;
           end;

           for j := 0 to 15 do
           begin
                all_element_contributions[j][i] := 0.01 * StrToFloat(sqlCursor.GetValueToString(elements[j])) * StrToFloat(sqlCursor.GetValueToString('Purity')) / volume;
           end;

           i := i+1;
           sqlCursor.MoveToNext;
      end;

    for j := 0 to varcount - 1 do
    begin
         problem_matrix_right[j] := vartargetvalue[j];
    end;

    RMatrixSolveLS(problem_matrix_left, varcount, arraysize, problem_matrix_right,0.0, answer, report, solutions);

    //if jRadioGroup1.CheckedIndex = 1 then volumeunit := 'gallons';
    //if jRadioGroup1.CheckedIndex = 2 then volumeunit := 'cubic meters';
    //if jRadioGroup1.CheckedIndex = 0 then volumeunit := 'liters';

    // reset results grid

    jResultsGrid.ColCount := 2;
    jResultsGrid.RowCount := arraysize+1;
    jResultsGrid.SetVerticalSpacing(40);

    // set column names
    jResultsGrid.Cells[0,0]:= 'Name';
    jResultsGrid.Cells[1,0]:= 'Amount (g)';

    // Place results in grid
    for i := 0 to arraysize - 1 do
    begin
      if (solutions[i] > 0) then
      begin

        // list additions for "direct addition" calculation type

        if jRadioGroup2.CheckedIndex = 0 then
        begin
             jResultsGrid.Cells[0,i+1] := (name_array[i][0]);
             jResultsGrid.Cells[1,i+1] := (FloatToStr(round2(solutions[i], 3)) );
        end;

        if jRadioGroup2.CheckedIndex = 1 then
        begin
             jResultsGrid.Cells[0,i+1] := (name_array[i][1] + ' ' + name_array[i][0]);
             jResultsGrid.Cells[1,i+1] := (FloatToStr(round2(solutions[i] * conc_factor, 3)));
        end;

      end else begin

         jResultsGrid.Cells[0,i+1] := (name_array[i][0]);
         jResultsGrid.Cells[1,i+1] := '0';

      end;
    end;

    for i := 0 to 15 do
    begin

         total_ppm_contribution_for_element  := StrToFloat(jWQGrid.Cells[1,i+1]);

         for j := 0 to arraysize - 1 do
         begin

              if (solutions[j] > 0)  then
              total_ppm_contribution_for_element  := solutions[j] * all_element_contributions[i][j] + total_ppm_contribution_for_element;
         end;

         Result[i] := total_ppm_contribution_for_element;

    end;

    jResultsGrid2.Cells[0,0] := 'Element';
    jResultsGrid2.Cells[1,0] := 'Conc (ppm)';
    jResultsGrid2.Cells[2,0] := 'Error (%)';

    for i := 0 to 15 do
    begin
      jResultsGrid2.Cells[0,i+1] := elements[i];
      jResultsGrid2.Cells[1,i+1] := (FloatToStr(round2(Result[i], 3)));

      if all_element_targets[i] <> 0 then
      jResultsGrid2.Cells[2,i+1] := (FloatToStr(round2(100*(Result[i]-all_element_targets[i])/all_element_targets[i], 3)))
      else
      jResultsGrid2.Cells[2,i+1] := '0';

    end;

    jActionBarTab1.SelectTabByIndex(5);

end;

procedure TAndroidModule1.UpdateWaterQuality(load_default:Boolean);
var
  is_wq_loaded, i: integer;
begin

    jWQGrid.Cells[0,0] := 'Element';
    jWQGrid.Cells[1,0] := 'Conc (ppm)';
    is_wq_loaded := 0;
    WQIds.Clear();
    jWQView.Clear();

    for i := 0 to 15 do jWQGrid.Cells[0,i+1] := elements[i];

    jSqliteDataAccess1.Select('SELECT * FROM water_quality', false);
    sqlCursor.MoveToFirst;

    while not sqlCursor.EOF do
    begin
         if  (sqlCursor.GetValueToString('is_used') = '1') and load_default then
         begin
              is_wq_loaded := 1;
              for i := 0 to 15 do jWQGrid.Cells[1,i+1] := sqlCursor.GetValueToString(elements[i]);
              selected_water_quality_id := sqlCursor.GetValueAsInteger('water_quality_id');
         end;

         jWQView.Add(sqlCursor.GetValueToString('Name'));
         WQIds.Add(sqlCursor.GetValueToString('water_quality_id'));
         sqlCursor.MoveToNext;
    end;

    if (is_wq_loaded = 0) and load_default then
    begin
       for i := 0 to 15 do jWQGrid.Cells[1,i+1] := '0';
    end;

end;

procedure TAndroidModule1.UpdateSubstances();
var
  is_used: integer;
begin
      SubstancesView.Clear;
      SubstancesIds.Clear;
      jSqliteDataAccess1.Select('SELECT * FROM substances ORDER by Name ASC', false);

      sqlCursor.MoveToFirst;

      while not sqlCursor.EOF do
      begin

        is_used := sqlCursor.GetValueAsInteger('is_used');
        SubstancesIds.Add(sqlCursor.GetValueToString('substance_id'));
        SubstancesView.Add(sqlCursor.GetValueToString('Name'));

        if is_used = 1 then
        begin
            SubstancesView.SetFontColorByIndex(colbrLightGreen, SubstancesView.Count-1);
        end;
        if is_used = 0 then
        begin
            SubstancesView.SetFontColorByIndex(colbrWhite, SubstancesView.Count-1);
        end;
           sqlCursor.MoveToNext;
      end;
end;

procedure TAndroidModule1.UpdateFormulations();
begin
      FormulationsView.Clear;
      FormulationsIds.Clear;
      jSqliteDataAccess1.Select('SELECT * FROM formulations ORDER by Name ASC', false);

      sqlCursor.MoveToFirst;

      while not sqlCursor.EOF do
      begin

        FormulationsIds.Add(sqlCursor.GetValueToString('formulation_id'));
        FormulationsView.Add(sqlCursor.GetValueToString('Name'));
        sqlCursor.MoveToNext;
      end;
end;

procedure TAndroidModule1.jActionBarTab1TabSelected(Sender: TObject;
  view: jObject; title: string);
begin
  if title = 'Substances' then UpdateSubstances;
  if title = 'Formulations' then UpdateFormulations;
  if title = 'Water Quality' then UpdateWaterQuality(False);
end;

procedure TAndroidModule1.jButton10Click(Sender: TObject);
begin
  jSqliteDataAccess1.InsertIntoTable('INSERT INTO formulations (Name, N_NO3, N_NH4, P, K, Ca, Mg, S, Fe, Mn, B, Zn, Cu, Mo, Na, Cl, Si) VALUES ' +
                                     '("' + jEditText40.Text + '",'+
                                     jEditText1.Text + ',' +
                                     jEditText2.Text + ',' +
                                     jEditText3.Text + ',' +
                                     jEditText4.Text + ',' +
                                     jEditText5.Text + ',' +
                                     jEditText6.Text + ',' +
                                     jEditText7.Text + ',' +
                                     jEditText8.Text + ',' +
                                     jEditText9.Text + ',' +
                                     jEditText10.Text + ',' +
                                     jEditText11.Text + ',' +
                                     jEditText12.Text + ',' +
                                     jEditText13.Text + ',' +
                                     jEditText14.Text + ',' +
                                     jEditText15.Text + ',' +
                                     jEditText16.Text + ')');
  jFormulationNameDialog.Close();
end;

procedure TAndroidModule1.jButton11Click(Sender: TObject);
begin
  wq_dialog_mode := 0;
  jEditText41.Text := 'Enter name here';
  jWQDialog.Show();
end;

procedure TAndroidModule1.jButton12Click(Sender: TObject);
begin
    jSqliteDataAccess1.UpdateTable('UPDATE water_quality SET is_used=0 WHERE water_quality_id > 0');
    jSqliteDataAccess1.UpdateTable('UPDATE water_quality SET is_used=1 WHERE water_quality_id = ' + IntToStr(selected_water_quality_id));
    UpdateWaterQuality(False);
end;

procedure TAndroidModule1.jButton13Click(Sender: TObject);
begin

  // are we adding something new to the DB
  if wq_dialog_mode = 0 then
  begin
         jSqliteDataAccess1.InsertIntoTable('INSERT INTO water_quality (Name, is_used, N_NO3, N_NH4, P, K, Ca, Mg, S, Fe, Mn, B, Zn, Cu, Mo, Na, Cl, Si) VALUES ' +
                                     '("' + jEditText41.Text + '",'+
                                     '0,'+
                                     jWQGrid.Cells[1,1] + ',' +
                                     jWQGrid.Cells[1,2] + ',' +
                                     jWQGrid.Cells[1,3] + ',' +
                                     jWQGrid.Cells[1,4] + ',' +
                                     jWQGrid.Cells[1,5] + ',' +
                                     jWQGrid.Cells[1,6] + ',' +
                                     jWQGrid.Cells[1,7] + ',' +
                                     jWQGrid.Cells[1,8] + ',' +
                                     jWQGrid.Cells[1,9] + ',' +
                                     jWQGrid.Cells[1,10] + ',' +
                                     jWQGrid.Cells[1,11] + ',' +
                                     jWQGrid.Cells[1,12] + ',' +
                                     jWQGrid.Cells[1,13] + ',' +
                                     jWQGrid.Cells[1,14] + ',' +
                                     jWQGrid.Cells[1,15] + ',' +
                                     jWQGrid.Cells[1,16] + ')');
         UpdateWaterQuality(False);
  end;

  if wq_dialog_mode > 0 then jWQGrid.Cells[1,wq_dialog_mode] := jEditText41.Text;

  jWQDialog.Close();

end;

procedure TAndroidModule1.jButton14Click(Sender: TObject);
begin
  jEditText42.Text := degree_of_freedom;
  jDoFDialog.Show();
end;

procedure TAndroidModule1.jButton15Click(Sender: TObject);
begin
  degree_of_freedom := jEditText42.Text;
  jDoFDialog.Close();
end;

procedure TAndroidModule1.FormulationsViewClickItem(Sender: TObject;
  itemIndex: integer; itemCaption: string);
var
  formulation_id : String;
begin

  formulation_id := FormulationsIds.Items[itemIndex];
  selected_formulation_id := StrToInt(formulation_id);
  jSqliteDataAccess1.Select('SELECT * FROM formulations WHERE formulation_id=' + formulation_id, false);
  sqlCursor.MoveToFirst;

  jEditText1.Text := sqlCursor.GetValueAsString('N_NO3');
  jEditText2.Text := sqlCursor.GetValueAsString('N_NH4');
  jEditText3.Text := sqlCursor.GetValueAsString('P');
  jEditText4.Text := sqlCursor.GetValueAsString('K');
  jEditText5.Text := sqlCursor.GetValueAsString('Ca');
  jEditText6.Text := sqlCursor.GetValueAsString('Mg');
  jEditText7.Text := sqlCursor.GetValueAsString('S');
  jEditText8.Text := sqlCursor.GetValueAsString('Fe');
  jEditText9.Text := sqlCursor.GetValueAsString('Mn');
  jEditText10.Text := sqlCursor.GetValueAsString('B');
  jEditText11.Text := sqlCursor.GetValueAsString('Zn');
  jEditText12.Text := sqlCursor.GetValueAsString('Cu');
  jEditText13.Text := sqlCursor.GetValueAsString('Mo');
  jEditText14.Text := sqlCursor.GetValueAsString('Na');
  jEditText15.Text := sqlCursor.GetValueAsString('Cl');
  jEditText16.Text := sqlCursor.GetValueAsString('Si');

  jActionBarTab1.SelectTabByIndex(1);

end;

procedure TAndroidModule1.FormulationsViewLongClickItem(Sender: TObject;
  itemIndex: integer; itemCaption: string);
begin
      selected_formulation_id := StrToInt(FormulationsIds.Items[itemIndex]);
      jDialogYN1.Msg := 'Delete formulation "' + FormulationsView.Items[itemIndex] + '" ?';
      jDialogYN1.Show();
end;




end.
