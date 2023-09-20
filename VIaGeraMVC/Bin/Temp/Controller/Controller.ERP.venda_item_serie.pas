
unit Controller.ERP.venda_item_lote_controle;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPvendaitemlotecontrole = class(TControllerBase, IController) 
  private 
    FDal : TViewERPvendaitemlotecontrole;
    FModelList: TModelBaseList<TModelERPvendaitemlotecontrole>; 
    FModel: TModelERPvendaitemlotecontrole;
    procedure SetModel(const Value: TModelERPvendaitemlotecontrole); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPvendaitemlotecontrole>);

  public 
    property Model : TModelERPvendaitemlotecontrole read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPvendaitemlotecontrole> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPvendaitemlotecontrole.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPvendaitemlotecontrole>.Create;  
  Self.FModelList.Add(TModelERPvendaitemlotecontrole.Create); 
  Self.FModel           := TModelERPvendaitemlotecontrole.Create; 
  Self.FDal             := TDalERPvendaitemlotecontrole.Create( Param, True ); 
end; 

procedure TControllerERPvendaitemlotecontrole.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPvendaitemlotecontrole.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPvendaitemlotecontrole.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPvendaitemlotecontrole.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPvendaitemlotecontrole.SetModel(  
  const Value: TModelERPvendaitemlotecontrole); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPvendaitemlotecontrole.SetModelList(  
  const Value: TModelBaseList<TModelERPvendaitemlotecontrole>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPvendaitemlotecontrole.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPvendaitemlotecontrole.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

