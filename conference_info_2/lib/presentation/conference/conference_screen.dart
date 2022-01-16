import 'package:conference_info_2/presentation/conference/components/conferece_detail.dart';
import 'package:conference_info_2/presentation/conference/components/conference_list_widget.dart';
import 'package:conference_info_2/presentation/conference/conference_veiw_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConferenceScreen extends StatelessWidget {
  const ConferenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ConferenceViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conference Information'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: state.isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView(children: [
              ...state.conferenceInfo
                  .map((e) => ConferenceListWidget(
                        conferenceInfo: e,
                        onClick: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConferenceDetail(
                                      conferenceInfo: e,
                                    )),
                          );
                        },
                      ))
                  .toList(),
            ]),
    );
  }
}
