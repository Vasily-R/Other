unit PhisicsControllerUnit;

interface

uses
  Test1Unit,
  TestsUnit,
  MenuUnit,
  MainUnit,
  ControllersUnit, System.Generics.Collections;

type
  PhisicsController = class(TInterfacedObject, Controllers)
  private
  Test: Tests;
    /// <link>aggregation</link>
    Menu1: Main;
  public
    procedure setTest(caption: string);
    function getMenu: TList<string>;
  end;

implementation

function PhisicsController.getMenu: TList<string>;
begin
  result := TList<string>.create;
  Menu1 := Menu.create;
  result := Menu1.getMenu;

  // result.Add('Test');
  // result.Add('Test2');
  // result.Add('Test3');
end;

procedure PhisicsController.setTest(caption: string);
begin
    Test := Test1.create;
    Test.setTest(caption);
end;

end.
