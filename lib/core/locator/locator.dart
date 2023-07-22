


import 'package:get_it/get_it.dart';

import '../../features/comment_ screen/controller/todo_cubit.dart';
import '../../features/comment_ screen/data/remote_data_scource.dart';


GetIt sl= GetIt.instance;

void init(){




  sl.registerLazySingleton(() => TodoCubit( apiServer: sl()));


  sl.registerLazySingleton(() => ApiServer());
}


