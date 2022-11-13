# advancepal_api.api.TransactionApi

## Load the API package
```dart
import 'package:advancepal_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTransaction**](TransactionApi.md#createtransaction) | **POST** /Transaction | 
[**deleteTransaction**](TransactionApi.md#deletetransaction) | **DELETE** /Transaction/{id} | 
[**getTransaction**](TransactionApi.md#gettransaction) | **GET** /Transaction/{id} | 
[**listTransaction**](TransactionApi.md#listtransaction) | **GET** /Transaction | 


# **createTransaction**
> Transaction createTransaction(transaction)



### Example
```dart
import 'package:advancepal_api/api.dart';

final api_instance = TransactionApi();
final transaction = Transaction(); // Transaction | 

try {
    final result = api_instance.createTransaction(transaction);
    print(result);
} catch (e) {
    print('Exception when calling TransactionApi->createTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction** | [**Transaction**](Transaction.md)|  | [optional] 

### Return type

[**Transaction**](Transaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTransaction**
> deleteTransaction(id)



### Example
```dart
import 'package:advancepal_api/api.dart';

final api_instance = TransactionApi();
final id = 56; // int | 

try {
    api_instance.deleteTransaction(id);
} catch (e) {
    print('Exception when calling TransactionApi->deleteTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransaction**
> Transaction getTransaction(id)



### Example
```dart
import 'package:advancepal_api/api.dart';

final api_instance = TransactionApi();
final id = 56; // int | 

try {
    final result = api_instance.getTransaction(id);
    print(result);
} catch (e) {
    print('Exception when calling TransactionApi->getTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Transaction**](Transaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTransaction**
> List<Transaction> listTransaction()



### Example
```dart
import 'package:advancepal_api/api.dart';

final api_instance = TransactionApi();

try {
    final result = api_instance.listTransaction();
    print(result);
} catch (e) {
    print('Exception when calling TransactionApi->listTransaction: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Transaction>**](Transaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

