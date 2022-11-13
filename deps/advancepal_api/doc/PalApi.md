# advancepal_api.api.PalApi

## Load the API package
```dart
import 'package:advancepal_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPal**](PalApi.md#createpal) | **POST** /Pal | 
[**getByName**](PalApi.md#getbyname) | **GET** /Pal/ByName | 
[**getPal**](PalApi.md#getpal) | **GET** /Pal/{id} | 
[**listPal**](PalApi.md#listpal) | **GET** /Pal | 


# **createPal**
> Pal createPal(pal)



### Example
```dart
import 'package:advancepal_api/api.dart';

final api_instance = PalApi();
final pal = Pal(); // Pal | 

try {
    final result = api_instance.createPal(pal);
    print(result);
} catch (e) {
    print('Exception when calling PalApi->createPal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pal** | [**Pal**](Pal.md)|  | [optional] 

### Return type

[**Pal**](Pal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByName**
> Pal getByName(name)



### Example
```dart
import 'package:advancepal_api/api.dart';

final api_instance = PalApi();
final name = name_example; // String | 

try {
    final result = api_instance.getByName(name);
    print(result);
} catch (e) {
    print('Exception when calling PalApi->getByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 

### Return type

[**Pal**](Pal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPal**
> Pal getPal(id)



### Example
```dart
import 'package:advancepal_api/api.dart';

final api_instance = PalApi();
final id = 56; // int | 

try {
    final result = api_instance.getPal(id);
    print(result);
} catch (e) {
    print('Exception when calling PalApi->getPal: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Pal**](Pal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPal**
> List<Pal> listPal()



### Example
```dart
import 'package:advancepal_api/api.dart';

final api_instance = PalApi();

try {
    final result = api_instance.listPal();
    print(result);
} catch (e) {
    print('Exception when calling PalApi->listPal: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Pal>**](Pal.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

