import 'package:image_picker/image_picker.dart';
import 'package:restaurant/core/services/remote/firebase_storage_service.dart';
import 'package:restaurant/features/profile/domain/usecases/update_user_usecase.dart';
import 'package:restaurant/shared/additions/export.dart';

GetIt injection = GetIt.instance;

Future<void> init() async {
  await LocalService.initStorage();
  injection.registerSingleton(LocalService());
  injection.registerSingleton(ImagePicker());
  injection.registerFactory<IAuthRepository>(() => AuthRepository());
  injection.registerFactory<IAuthRemoteDataSource>(() => AuthRemoteDataSource());
  injection.registerFactory<LoginWithEmailUsecase>(() => LoginWithEmailUsecase());
  injection.registerFactory<RegisterWithEmailUsecase>(() => RegisterWithEmailUsecase());
  injection.registerFactory<IProfileRepository>(() => ProfileRepository());
  injection.registerFactory<ICampaignRepository>(() => CampaignRepository());
  injection.registerFactory<IMenuRpository>(() => MenuRepository());
  injection.registerFactory<IContactRepository>(() => ContactRepository());
  injection.registerFactory<IProfileDataSource>(() => ProfileDataSource());
  injection.registerFactory<IContactDataSource>(() => ContactDataSource());
  injection.registerFactory<ICampaignDataSource>(() => CampaignDataSource());
  injection.registerFactory<IMenuDataSource>(() => MenuDataSource());
  injection.registerFactory<AddUserUseCase>(() => AddUserUseCase());
  injection.registerFactory<SendOfferUseCase>(() => SendOfferUseCase());
  injection.registerFactory<GetCampaignsUseCase>(() => GetCampaignsUseCase());
  injection.registerFactory<GetMenuUseCase>(() => GetMenuUseCase());
  injection.registerFactory<LogOutUsecase>(() => LogOutUsecase());
  injection.registerFactory<GetUserUsecase>(() => GetUserUsecase());
  injection.registerFactory<UpdateUserUseCase>(() => UpdateUserUseCase());
  injection.registerSingleton(FirebaseAuthService());
  injection.registerSingleton(FirebaseDBService());
  injection.registerSingleton(FirebaseStorageService());
}
