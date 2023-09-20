
unit Controller.ERP.pre_venda;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPprevenda = class(TControllerBase, IController) 
  private 
    FDal : TViewERPprevenda;
    FModelList: TModelBaseList<TModelERPprevenda>; 
    FModel: TModelERPprevenda;
    procedure SetModel(const Value: TModelERPprevenda); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPprevenda>);

  public 
    property Model : TModelERPprevenda read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPprevenda> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPprevenda.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPprevenda>.Create;  
  Self.FModelList.Add(TModelERPprevenda.Create); 
  Self.FModel           := TModelERPprevenda.Create; 
  Self.FDal             := TDalERPprevenda.Create( Param, True ); 
end; 

procedure TControllerERPprevenda.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPprevenda.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPprevenda.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPprevenda.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPprevenda.SetModel(  
  const Value: TModelERPprevenda); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPprevenda.SetModelList(  
  const Value: TModelBaseList<TModelERPprevenda>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPprevenda.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPprevenda.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

