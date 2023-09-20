
unit Controller.ERP.icmspf;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPicmspf = class(TControllerBase, IController) 
  private 
    FDal : TViewERPicmspf;
    FModelList: TModelBaseList<TModelERPicmspf>; 
    FModel: TModelERPicmspf;
    procedure SetModel(const Value: TModelERPicmspf); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPicmspf>);

  public 
    property Model : TModelERPicmspf read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPicmspf> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPicmspf.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPicmspf>.Create;  
  Self.FModelList.Add(TModelERPicmspf.Create); 
  Self.FModel           := TModelERPicmspf.Create; 
  Self.FDal             := TDalERPicmspf.Create( Param, True ); 
end; 

procedure TControllerERPicmspf.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPicmspf.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPicmspf.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPicmspf.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPicmspf.SetModel(  
  const Value: TModelERPicmspf); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPicmspf.SetModelList(  
  const Value: TModelBaseList<TModelERPicmspf>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPicmspf.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPicmspf.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

