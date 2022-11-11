import 'package:logotime/network/network_request.dart';
import 'package:logotime/network/network_result.dart';
import 'package:logotime/network/network_service.dart';

import 'request_model/create_organisation_request_model.dart';

abstract class IOrganisationNetworkService {
  Future<INetworkResult<dynamic>> createOrganisation(
      CreateOrganisationRequestModel createOrganisationRequestModel);
}

class OrganisationNetworkService implements IOrganisationNetworkService {
  static const String route = '/organization';

  final DioService _dio;

  OrganisationNetworkService({required DioService dio}) : _dio = dio;

  @override
  Future<INetworkResult<dynamic>> createOrganisation(
      CreateOrganisationRequestModel createOrganisationRequestModel) async {
    return await _dio
        .makeRequest(NetworkRequest<CreateOrganisationRequestModel>(
      path: route,
      methodType: HttpMethod.postMethod,
      data: createOrganisationRequestModel,
    ));
  }
}
