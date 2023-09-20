
unit Controller.ERP.efd_;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPefd = class(TControllerBase, IController) 
  private 
    FDal : TViewERPefd;
    FModelList: TModelBaseList<TModelERPefd>; 
    FModel: TModelERPefd;
    procedure SetModel(const Value: TModelERPefd); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPefd>);

  public 
    property Model : TModelERPefd read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPefd> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPefd.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPefd>.Create;  
  Self.FModelList.Add(TModelERPefd.Create); 
  Self.FModel           := TModelERPefd.Create; 
  Self.FDal             := TDalERPefd.Create( Param, True ); 
end; 

procedure TControllerERPefd.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPefd.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPefd.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPefd.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPefd.SetModel(  
  const Value: TModelERPefd); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPefd.SetModelList(  
  const Value: TModelBaseList<TModelERPefd>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPefd.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPefd.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

