
unit Controller.ERP.terminal_public;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPterminalpublic = class(TControllerBase, IController) 
  private 
    FDal : TViewERPterminalpublic;
    FModelList: TModelBaseList<TModelERPterminalpublic>; 
    FModel: TModelERPterminalpublic;
    procedure SetModel(const Value: TModelERPterminalpublic); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPterminalpublic>);

  public 
    property Model : TModelERPterminalpublic read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPterminalpublic> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPterminalpublic.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPterminalpublic>.Create;  
  Self.FModelList.Add(TModelERPterminalpublic.Create); 
  Self.FModel           := TModelERPterminalpublic.Create; 
  Self.FDal             := TDalERPterminalpublic.Create( Param, True ); 
end; 

procedure TControllerERPterminalpublic.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPterminalpublic.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPterminalpublic.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPterminalpublic.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPterminalpublic.SetModel(  
  const Value: TModelERPterminalpublic); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPterminalpublic.SetModelList(  
  const Value: TModelBaseList<TModelERPterminalpublic>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPterminalpublic.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPterminalpublic.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

