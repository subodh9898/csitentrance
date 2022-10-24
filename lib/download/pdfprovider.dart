import 'package:flutter/material.dart';
import 'package:csitentrance/download/pdfmodel.dart';

class PdfProvider with ChangeNotifier {
  List<GroupModel> _groupname = [
    GroupModel(id: 0, name: "syllabus"),
    GroupModel(id: 1, name: "books"),
    GroupModel(id: 2, name: "notes"),
    GroupModel(id: 3, name: "past papers"),
  ];

  List<List> allbooks = [
    [
      GroupModel(id: 0, name: " UPSC PDF APP"),
      GroupModel(id: 1, name: " UPSC PDF APP"),
      GroupModel(id: 2, name: " UPSC PDF APP"),
      GroupModel(id: 3, name: " UPSC PDF APP"),
      GroupModel(id: 4, name: " UPSC PDF APP"),
      GroupModel(id: 5, name: " UPSC PDF APP")
    ]
  ];
  List<List> alldownloads = [
    [
      // https://drive.google.com/file/d/1V3HSXqBfrmRufs1_8RSyVu5JbN_kS4qk/view?usp=sharing

      GroupModel(
        name: 'Entrance Exam Syllabus',
        bookSaveName: 'Entrance Exam syllabus',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1V3HSXqBfrmRufs1_8RSyVu5JbN_kS4qk',
        size: 1,
      ),
    ],
    [
      GroupModel(
        name: 'Mock test paper 1',
        bookSaveName: 'Mock test paper 1',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1TOtjx5PfaQrWfzgiekKPEZLt-yyUbQVM',
        size: 1,
      ),
      GroupModel(
        name: 'Mock test paper 2',
        bookSaveName: 'Mock test paper 2',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1MbHgN9MN30qfVv1blOwg4KrHLzRzNVoS',
        size: 1,
      ),
      GroupModel(
        name: 'Mock test paper 3',
        bookSaveName: 'Mock test paper 3',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=14douEyxL_bM9KjyYConjfhUd7JNX_jwv',
        size: 1,
      ),
      GroupModel(
        name: 'Mock test paper 4',
        bookSaveName: 'Mock test paper 4',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1SABrM7vNTLNmrbbKd3KfZtLWRJ9QDNh2',
        size: 1,
      ),
      GroupModel(
        name: 'Mock test paper 5',
        bookSaveName: 'Mock test paper 5',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1nyyQFpp1vNfq4EiP3KZJYdjT4VDR-9cF',
        size: 1,
      ),
      GroupModel(
        name: 'Mock test paper 6',
        bookSaveName: 'Mock test paper 6',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=14FD0bonD67V-qrrKYrqHvm_cdDmBNNec',
        size: 1,
      ),
      GroupModel(
        name: 'Mock test paper 7',
        bookSaveName: 'Mock test paper 7',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1V3HSXqBfrmRufs1_8RSyVu5JbN_kS4qk',
        size: 1,
      ),
      GroupModel(
        name: 'Mock test paper 8',
        bookSaveName: 'Mock test paper 8',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1u-Ed4R2RGLzoDp5tzjWAaQELBgziRZ6Z',
        size: 1,
      ),
      GroupModel(
        name: 'Mock test paper 9',
        bookSaveName: 'Mock test paper 9',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=12Ykdk9el6TczVlQfYF1pU-lvAhSOyAem',
        size: 1,
      ),
      GroupModel(
        name: 'Mock test paper 10',
        bookSaveName: 'Mock test paper 10',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1o6NCuNqKLy7-DO8DeWvd2O0jWp-TU6uF',
        size: 1,
      ),
      GroupModel(
        name: 'Mock test paper 11',
        bookSaveName: 'Mock test paper 11',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1vevXY2swpHadxgJt-GLs-JzDMkTb7TDz',
        size: 1,
      ),
    ],
    [
      GroupModel(
        name: ' Answer Key Mock test paper 1 ',
        bookSaveName: 'Answer Key Mock test paper 1',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1jBUL7memf8Y19IByfNNOcLzT-BhnxEll',
        size: 1,
      ),
      GroupModel(
        name: 'Answer Key Mock test paper 2',
        bookSaveName: 'Answer Key Mock test paper 2',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=17hP3p8hLawvIeefiRvDEOqqfC4D101et',
        size: 1,
      ),
      GroupModel(
        name: 'Answer Key Mock test paper 3',
        bookSaveName: 'Answer Key Mock test paper 3',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1UbNWcoP5KCveMmjsd0GewhPgEOmWNH4d',
        size: 1,
      ),
      GroupModel(
        name: 'Answer Key Mock test paper 4',
        bookSaveName: 'Answer Key Mock test paper 4',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1yExAUwLiSiNKJck3DYOgA-ojfHfU7l3i',
        size: 1,
      ),
      GroupModel(
        name: 'Answer Key Mock test paper 5',
        bookSaveName: 'Answer Key Mock test paper 5',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1j-3wUCrsJ5-m42jiCGZhaFUy_J2zNG6F',
        size: 1,
      ),
      GroupModel(
        name: 'Answer Key Mock test paper 6',
        bookSaveName: 'Answer Key Mock test paper 6',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1dzRFuIfI9pPhE1npgXRdN87Qio2cIQWH',
        size: 1,
      ),
      GroupModel(
        name: 'Answer Key Mock test paper 7',
        bookSaveName: 'Answer Key Mock test paper 7',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1GcNFcV4dfrpxKrEuqVmwTPK9JqE6s3gR',
        size: 1,
      ),
      GroupModel(
        name: 'Answer Key Mock test paper 8',
        bookSaveName: 'Answer Key Mock test paper 8',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1q-VVwWEISnnWpb8ikE4-KIDX_PeEjKfH',
        size: 1,
      ),
      GroupModel(
        name: 'Answer Key Mock test paper 9',
        bookSaveName: 'Answer Key Mock test paper 9',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1q_4DCR58M6qL48Kn0A59NwtaZrD1uT7z',
        size: 1,
      ),
      GroupModel(
        name: 'Answer Key Mock test paper 10',
        bookSaveName: 'Answer Key Mock test paper 10',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=13iPOWZANQwwgvuL_EhWBN4h07AfaCIBH',
        size: 1,
      ),
      GroupModel(
        name: 'Answer Key Mock test paper 11',
        bookSaveName: 'Answer Key Mock test paper 11',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1FSSQ0rOQnaz8F7GcS2VqXR1OG3zlcSWa',
        size: 1,
      ),
    ],
    [
      GroupModel(
        name: 'Mock test paper 9 chemistry solution',
        bookSaveName: 'Mock test paper 9 chemistry solution',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1RA7EaTz-vuleqNeERcpmN5ownDwv528K',
        size: 1,
      ),
      GroupModel(
        name: 'Mock test paper 9 math solution',
        bookSaveName: 'Mock test paper 9 math solution',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1fPX48CWr2hZi2qkoGRwm26QDZuLtTOWU',
        size: 1,
      ),
      // https://drive.google.com/file/d/1d7mdE8v3S-XwXHFOhrP7AJrfAASOdntH/view?usp=sharing
      GroupModel(
        name: 'Mock test paper 9 physics solution',
        bookSaveName: 'Mock test paper 9 physics solution',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1d7mdE8v3S-XwXHFOhrP7AJrfAASOdntH',
        size: 1,
      ),

      // 1fPX48CWr2hZi2qkoGRwm26QDZuLtTOWU
// https://drive.google.com/file/d/1Dr8The2mM-ntyu0rWsPPiH_nVs0gG3GM/view?usp=sharing
      GroupModel(
        name: 'Mock test 10 chemistry solution',
        bookSaveName: 'Mock test paper chemistry 10 solution',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1Dr8The2mM-ntyu0rWsPPiH_nVs0gG3GM',
        size: 1,
      ),
      // https://drive.google.com/file/d/1V-jPZmiN_v5col3JSLNDbyDXIXtRugkN/view?usp=sharing
      GroupModel(
        name: 'Mock test  10 math solution',
        bookSaveName: 'Mock test paper 10 math solution',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1V-jPZmiN_v5col3JSLNDbyDXIXtRugkN',
        size: 1,
      ),
      // https://drive.google.com/file/d/0B1pofGnx-RFAaTNJcXpRRGNoX00tSnJyU1N3dGtMakF4Mk1V/view?usp=sharing
      // https://drive.google.com/file/d/0B1pofGnx-RFAaTNJcXpRRGNoX00tSnJyU1N3dGtMakF4Mk1V/view?usp=sharing
      // GroupModel(
      //   name: 'Mock test  10 physics solution',
      //   bookSaveName: 'Mock test paper 10 physics solution',
      //   downloadLink:
      //       'https://drive.google.com/uc?export=download&id=0B1pofGnx-RFAaTNJcXpRRGNoX00tSnJyU1N3dGtMakF4Mk1V',
      //   size: 1,
      // ),
      // https://drive.google.com/file/d/1sWahqSBCW8icoQT1VacN9wg76-nQEDV2/view?usp=sharing
      GroupModel(
        name: 'Mock test  11 chemistry solution',
        bookSaveName: 'Mock test paper chemistry 11 solution',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1sWahqSBCW8icoQT1VacN9wg76-nQEDV2',
        size: 1,
      ),
      // https://drive.google.com/file/d/1V-jPZmiN_v5col3JSLNDbyDXIXtRugkN/view?usp=sharing
      GroupModel(
        name: 'Mock test  11 math solution',
        // https://drive.google.com/file/d/12ze0oTMIOpNdEMNZ0LVZN95rldJBKEbK/view?usp=sharing
        bookSaveName: 'Mock test paper 11 math solution',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=12ze0oTMIOpNdEMNZ0LVZN95rldJBKEbK',
        size: 1,
      ),
      // https://drive.google.com/file/d/0B1pofGnx-RFAaTNJcXpRRGNoX00tSnJyU1N3dGtMakF4Mk1V/view?usp=sharing
      // https://drive.google.com/file/d/0B1pofGnx-RFAaTNJcXpRRGNoX00tSnJyU1N3dGtMakF4Mk1V/view?usp=sharing
      GroupModel(
        name: 'Mock test paper 11 physics solution',
        bookSaveName: 'Mock test paper 11 physics solution',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1ax8v6KXs9TRRNSUYlw-fsE2Jwg-yLgvT',
        size: 1,
        // https://drive.google.com/file/d/1ax8v6KXs9TRRNSUYlw-fsE2Jwg-yLgvT/view?usp=sharing
      ),
    ],
    [
      GroupModel(
        name: 'Model question set 1',
        bookSaveName: 'model question set 1',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1Sf_P8XvBeSzCMzKIpHIberwE_-9zFvxi',
        size: 6,
      ),

      GroupModel(
        name: 'model question set 2',
        bookSaveName: 'model question set 2',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1CVDcg_LecovjcHgXnEC3zFy6RGTsM6fq',
        size: 2,
      ),
      GroupModel(
        name: 'model question set 3',
        bookSaveName: 'model question set 3',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1PZ-728T5l5d5E0RN-9IEAMO_biIPNHHA',
        size: 3,
      ),
      GroupModel(
        name: 'model question set 4',
        bookSaveName: 'model question set 4',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1RYAj_8xnWFciRYwn0Rv9ASOmweHWFjNI',
        size: 4,
      ),
      // https://docs.google.com/document/d/1AwX5ruPyKCnGvrHfyoP2mkAlX8jOL1nE8P5RCp_Xpzs/edit?usp=sharing
      GroupModel(
        name: 'model question set 5',
        bookSaveName: 'model question set 5',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1En2OyWf7UIPPuLCGKvetCOvabc2l531i',
        size: 5,
      ),
      GroupModel(
        name: 'model question set 6',
        bookSaveName: 'model question set 6',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1rGAYZlkqDIZmYV4oqmsUTp8kZtm2fetI',
        size: 3,
      ),
      GroupModel(
        name: 'model question set 7',
        bookSaveName: 'model question set 7',
        downloadLink:
            'https://drive.google.com/uc?export=download&id=1BdqbH4yYMhupWXa7n6VWTvqWzodpCoKE',
        size: 5,
      ),
      //  Past question 2074    https://nationalinfotechcollege.edu.np/wp-content/uploads/2020/10/CSIT-Entrance-model-Question-1.pdf
    ]
  ];
  List<GroupModel> get groupName {
    return [..._groupname];
  }
}
