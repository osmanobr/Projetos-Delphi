
unit Controller.ERP.paf_d;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPpafd = class(TControllerBase, IController) 
  private 
    FDal : TViewERPpafd;
    FModelList: TModelBaseList<TModelERPpafd>; 
    FModel: TModelERPpafd;
    procedure SetModel(const Value: TModelERPpafd); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPpafd>);

  public 
    property Model : TModelERPpafd read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPpafd> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPpafd.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPpafd>.Create;  
  Self.FModelList.Add(TModelERPpafd.Create); 
  Self.FModel           := TModelERPpafd.Create; 
  Self.FDal             := TDalERPpafd.Create( Param, True ); 
end; 

procedure TControllerERPpafd.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPpafd.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPpafd.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPpafd.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPpafd.SetModel(  
  const Value: TModelERPpafd); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPpafd.SetModelList(  
  const Value: TModelBaseList<TModelERPpafd>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPpafd.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPpafd.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

