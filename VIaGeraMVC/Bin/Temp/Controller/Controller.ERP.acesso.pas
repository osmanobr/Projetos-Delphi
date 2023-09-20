
unit Controller.ERP.acerto_item;

interface 
uses      
  SysUtils, Classes, Controller.Types, Controller.InterfaceObj,  
  Controller.Base, ModelBase, ModelBaseList,                     
  Dal.ERP.Ncm.Regra.Substituicao, Parameters, MsgTypes, ViaERP.Funcoes; 

type 
  TControllerERPacertoitem = class(TControllerBase, IController) 
  private 
    FDal : TViewERPacertoitem;
    FModelList: TModelBaseList<TModelERPacertoitem>; 
    FModel: TModelERPacertoitem;
    procedure SetModel(const Value: TModelERPacertoitem); 
    procedure SetModelList(const Value: TModelBaseList<TModelERPacertoitem>);

  public 
    property Model : TModelERPacertoitem read FModel write SetModel;  
    property ModelList : TModelBaseList<TModelERPacertoitem> read FModelList write SetModelList;  

    procedure Get; override;    
    procedure Post; override;   
    procedure Update; override; 
    procedure Delete; override; 

    procedure ToModel( Index : Integer = 0 ); 

    constructor Create( Param : TParameters ); 
    destructor Destroy; override; 
  end; 
implementation  

constructor TControllerERPacertoitem.Create(Param: TParameters); 
begin  
  Self.FModelList       := TModelBaseList<TModelERPacertoitem>.Create;  
  Self.FModelList.Add(TModelERPacertoitem.Create); 
  Self.FModel           := TModelERPacertoitem.Create; 
  Self.FDal             := TDalERPacertoitem.Create( Param, True ); 
end; 

procedure TControllerERPacertoitem.Delete;  
begin 
  inherited; 
end; 

destructor TControllerERPacertoitem.Destroy;    
begin 
  FreeAndNil( Self.FModel ); 
  FreeAndNil( Self.FModelList );
  FreeAndNil( Self.FDal );
end; 

procedure TControllerERPacertoitem.Get;  
begin 
   if not Self.FDal.Select( Model, TModelBaseList<TModelBase>( Self.FModelList ) ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ); 
end;

procedure TControllerERPacertoitem.Post; 
begin  
  if not Self.FDal.Insert( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError ) ;     
end;  

procedure TControllerERPacertoitem.SetModel(  
  const Value: TModelERPacertoitem); 
begin  
  FModel := Value;    
end; 

procedure TControllerERPacertoitem.SetModelList(  
  const Value: TModelBaseList<TModelERPacertoitem>);
begin    
  FModelList := Value; 
end; 

procedure TControllerERPacertoitem.ToModel(Index: Integer);  
begin 
end;

procedure TControllerERPacertoitem.Update;  
begin  
  if not Self.FDal.Update( Self.FModel ) then   
    raise EListMsgError.CreateError( Self.FDal.ListError )     
end; 

end.

