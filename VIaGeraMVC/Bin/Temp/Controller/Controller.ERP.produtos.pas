
unit Controller.ERP.print_file;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPprintfile = class(TControllerBase, IController) 
  private 
    FDal : TViewERPprintfile;
    FModelList: TModelBaseList<TModelERPprintfile>; 
    FModel: TModelERPprintfile;
    procedure SetModel(const Value: TModelERPprintfile); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPprintfile>);

  public 
    property Model : TModelERPprintfile read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPprintfile> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPprintfile.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPprintfile>.Create;  
  Self.FModelList.Add(TModelERPprintfile.Create); 
  Self.FModel           := TModelERPprintfile.Create; 
  Self.FDal             := TDalERPprintfile.Create( Param, True ); 
end; 

procedure TControllerERPprintfile.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPprintfile.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPprintfile.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPprintfile.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPprintfile.SetModel(  
  const Value: TModelERPprintfile); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPprintfile.SetModelList(  
  const Value: TModelBaseList<TModelERPprintfile>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPprintfile.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPprintfile.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

