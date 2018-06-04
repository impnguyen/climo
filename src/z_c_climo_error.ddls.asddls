@AbapCatalog.sqlViewName: 'zddlcclimo_error'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'comsumption view for client monitoring error'

@OData.publish: true

@ObjectModel: {
transactionalProcessingDelegated: true,
representativeKey: 'node_key',
createEnabled: true,
updateEnabled: false,
deleteEnabled: false
}

define view z_c_climo_error
  as select from z_i_climo_error
  association [1] to z_c_climo_type as _Type on z_i_climo_error.type = _Type.type

{
      //z_i_climo_error
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
      /* Associations */
      //z_i_climo_error
      @ObjectModel.association.type: #TO_COMPOSITION_CHILD
      _Type

} 
 