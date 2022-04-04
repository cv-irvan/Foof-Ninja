part of 'import_view.dart';

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  final QuotesControl _quotesControl = Get.put(QuotesControl());

  @override
  void initState() {
    _quotesControl.getQuotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log('object');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whijau2,
        title: const Text('Quotes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.one_k),
            onPressed: () {
              // _quotesControl.page - 1;
              _quotesControl.btnPage1();
              // setState(() {});
            },
          ),
          IconButton(
            icon: const Icon(Icons.two_k),
            onPressed: () {
              // _quotesControl.page + 1;
              _quotesControl.btnPage2();
              // setState(() {});
            },
          ),
        ],
      ),
      body: Obx(
        () => _quotesControl.page == 1.obs
            ? quotesPage()
            : Container(
                color: wmerah,
              ),
      ),
    );
  }

  Widget quotesPage() {
    return FutureBuilder<QuotesModel?>(
      future: _quotesControl.getQuotes(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.data == null) {
          return const Center(
            child: Text("TIDAK ADA DATA."),
          );
        }
        return ListView.separated(
          padding: const EdgeInsets.all(20),
          itemCount: snapshot.data!.results!.length,
          separatorBuilder: (BuildContext context, int i) {
            return const SizedBox(height: 20);
          },
          itemBuilder: (BuildContext context, int i) {
            return Container(
              padding: const EdgeInsets.all(20),
              height: Get.width,
              decoration: BoxDecoration(
                gradient: gHijau,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: snapshot.data!.results![i].tags!
                          .map((e) => Text(
                                e + " ",
                                style: GoogleFonts.poppins(
                                  color: wputih,
                                  fontSize: 16,
                                ),
                              ))
                          .toList(),
                    ),
                    Text(
                      snapshot.data!.results![i].content.toString(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: wputih,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      snapshot.data!.results![i].author.toString(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: wputih,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class QuotesControl extends GetxController {
  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  var page = 1.obs;

  Future<void> refres() async {
    getQuotes();
  }

  Future<QuotesModel?> getQuotes() async {
    Api _api = Api();
    QuotesModel? response = await _api.fatchQuotes();

    return response;
  }

  void btnPage1() {
    page + 1;
  }

  void btnPage2() {
    page - 1;
  }
}

class Api {
  Future<QuotesModel?> fatchQuotes() async {
    final response = await client.get(
      Uri.parse(
          'https://api.json-generator.com/templates/_QgVTMlDwbew/data?access_token=zddkfb42sda7vfotvhhynxhe5tmijduekt8loajm'),
    );
    log(response.body);
    log(response.statusCode.toString());

    return QuotesModel.fromJson(json.decode(response.body));
  }
}

class QuotesModel {
  int? page;
  int? count;
  List<Results>? results;
  int? totalCount;
  int? totalPages;
  int? lastItemIndex;
  String? rc;

  QuotesModel(
      {this.page,
      this.count,
      this.results,
      this.totalCount,
      this.totalPages,
      this.lastItemIndex,
      this.rc});

  QuotesModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    count = json['count'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
    totalCount = json['totalCount'];
    totalPages = json['totalPages'];
    lastItemIndex = json['lastItemIndex'];
    rc = json['rc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['page'] = page;
    data['count'] = count;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    data['totalCount'] = totalCount;
    data['totalPages'] = totalPages;
    data['lastItemIndex'] = lastItemIndex;
    data['rc'] = rc;
    return data;
  }
}

class Results {
  String? sId;
  List<String>? tags;
  String? author;
  int? length;
  String? content;
  String? dateAdded;
  String? authorSlug;
  String? dateModified;

  Results(
      {this.sId,
      this.tags,
      this.author,
      this.length,
      this.content,
      this.dateAdded,
      this.authorSlug,
      this.dateModified});

  Results.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    tags = json['tags'].cast<String>();
    author = json['author'];
    length = json['length'];
    content = json['content'];
    dateAdded = json['dateAdded'];
    authorSlug = json['authorSlug'];
    dateModified = json['dateModified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['tags'] = tags;
    data['author'] = author;
    data['length'] = length;
    data['content'] = content;
    data['dateAdded'] = dateAdded;
    data['authorSlug'] = authorSlug;
    data['dateModified'] = dateModified;
    return data;
  }
}
