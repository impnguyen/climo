@AbapCatalog.sqlViewName: 'z_climo_error'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'interface view for client monitoring errors'

@ObjectModel: {
modelCategory: #BUSINESS_OBJECT,
compositionRoot: true,
transactionalProcessingEnabled: true,
representativeKey: 'node_key',
writeActivePersistence: 'ZCLIMO_ERROR',
createEnabled: true,
updateEnabled: false,
deleteEnabled: false
}

define view z_i_climo_error
  as select from zclimo_error
  association [1] to z_i_climp_type as _Type on zclimo_error.type = _Type.type
{
      //zclimo_error
  key mandt,
  key guid,
      type,
      message,
      host_name,
      port,
      path_name,
      search,
      timestamp,
      source,
      line_no,
      col_no,
      client_user,
      @ObjectModel.association.type: #TO_COMPOSITION_CHILD
      _Type
} 
 