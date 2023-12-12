
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projeto/domain/tutoriais.dart';

class FavoritosCubit extends Cubit<List<Tutoriais>> {
  final List<Tutoriais> _tutoriais;

  FavoritosCubit()
      : _tutoriais = [],
        super([]);

  addFavorite(Tutoriais tutoriais) {
    if (!_tutoriais.contains(tutoriais)) {
      _tutoriais.add(tutoriais);
      emit(_tutoriais);
    }
  }

  removeFavorite(Tutoriais tutoriais) {
    _tutoriais.remove(tutoriais);
    emit(_tutoriais);
  }

  clearFavorites() {
    _tutoriais.clear();
    emit(_tutoriais);
  }

  isFavorite(Tutoriais tutoriais){
    return _tutoriais.contains(tutoriais);
  }
}