
unit Controller.ERP.nota_devol;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPnotadevol = class(TControllerBase, IController) 
  private 
    FDal : TViewERPnotadevol;
    FModelList: TModelBaseList<TModelERPnotadevol>; 
    FModel: TModelERPnotadevol;
    procedure SetModel(const Value: TModelERPnotadevol); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPnotadevol>);

  public 
    property Model : TModelERPnotadevol read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPnotadevol> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPnotadevol.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPnotadevol>.Create;  
  Self.FModelList.Add(TModelERPnotadevol.Create); 
  Self.FModel           := TModelERPnotadevol.Create; 
  Self.FDal             := TDalERPnotadevol.Create( Param, True ); 
end; 

procedure TControllerERPnotadevol.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPnotadevol.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPnotadevol.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPnotadevol.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPnotadevol.SetModel(  
  const Value: TModelERPnotadevol); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPnotadevol.SetModelList(  
  const Value: TModelBaseList<TModelERPnotadevol>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPnotadevol.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPnotadevol.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

