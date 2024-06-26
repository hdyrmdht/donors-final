// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../share/componant/help_componant.dart';
import '../../../style/colors.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({super.key});

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  bool ispressed = false;
  bool ispress = false;
  bool isChecked = false;
  bool ischeck = false;
  bool ispree = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       Image.asset( 
        "assets/images/background.png",
          fit: BoxFit.fill,
          width: double.infinity,height: double.infinity,
        ),
    
        Scaffold(backgroundColor: Colors.transparent,
          
          appBar: AppBar(backgroundColor: AppColors.primary,
              title: Text(
                'FAQ',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: SingleChildScrollView(scrollDirection: Axis.vertical,
                child: Column(children: [
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Gesturebuton(
                      txt: 'General',
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Gesturebuton(
                      txt: 'Login',
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Gesturebuton(
                      txt: 'Account',
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Gesturebuton(
                      txt: 'Doctor',
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Gesturebuton(txt: 'Tips'),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ExpandablePanelbutn(
                  txt1: "	من يمكنه التبرع بالدم؟ ",
                  txt2:
                      "يمكن للأشخاص البالغين والأصحاء الذين يستوفون بعض المعايير التبرع بالدم. ومن المعايير الشائعة للتبرع بالدم",
                  widget: Text(
                      "	الوزن: يجب أن يكون وزن المتبرع بالدم في نطاق محدد. يتفاوت هذا النطاق من بلد لآخر ويعتمد على المتطلبات المحلية والتوجيهات الطبية\n	الصحة الجسدية: يجب أن يكون المتبرع بصحة جيدة وخالٍ من الأمراض المعدية، مثل فيروس نقص المناعة البشرية  والالتهاب الكبدي والملاريا والسيلان والسل والتهاب الكبد الوبائي والتهاب الكبد الوبائي \n	الرضاعة الطبيعية والحمل: قد تكون هناك قيود على التبرع بالدم للنساء الحوامل أو اللواتي يرضعن أطفالًا رضاعة طبيعية. يعتمد ذلك على التوجيهات المحلية والسياسات الطبية.\n	النمط الحياتي: يمكن أن يؤثر النمط الحياتي، مثل استخدام المخدرات المحقونة أو السفر إلى مناطق معينة، على الأهلية للتبرع بالدم. قد توجد قيود إضافية فيما يتعلق بالسفر في ضوء الجائحة العالمية  \nالعمر: يتطلب التبرع بالدم أن يكون الشخص في سن 17 عامًا على الأقل في العديد من البلدان. وفي بعض البلدان، يجب أن يكون الشخص في سن 18 عامًا على \nالأقل")),
 
              SizedBox(
                height: 11,
              ),
              ExpandablePanelbutn(
              txt1:"كم مرة يمكنني التبرع بالدم؟" ,
              txt2:" " ,
              widget:Text("عادةً، يمكن للأشخاص التبرع بالدم بشكل منتظم بعد فترة استراحة معينة. هذه الفترة تختلف من بلد إلى آخر وتعتمد على التوجيهات المحلية والمؤسسات التي تدير عمليات التبرع بالدم. على العموم، يمكن أن تكون الفترة بين كل تبرع تتراوح بين 8 إلى 12 أسبوعًا\n") ,
              ),
               SizedBox(
                height: 11,
              ),
         ExpandablePanelbutn(txt1: "هل التبرع بالدم آمن؟",
         txt2: "نعم، التبرع بالدم يعتبر آمنًا في الغالب عند اتباع المعايير الطبية والإجراءات السليمة. تعتمد سلامة عملية التبرع بالدم على اتخاذ إجراءات احترازية لضمان سلامة المتبرع والمستلم",
         widget: Text("في عملية التبرع بالدم، يتم استخدام إبرة نظيفة وغير مستعملة لجمع الدم. وتتم معالجة المعدات بشكل صحيح وفقًا للإرشادات الطبية. كما يتم فحص المتبرعين بالدم للتأكد من خلوهم من أي أمراض معدية تنتقل عبر الدم، مثل فيروس نقص المناعة البشرية (HIV) والالتهاب الكبدي والملاريا وغيرها.\nعلاوة على ذلك، يتم فحص ضغط الدم ونبضات القلب ومستويات الهيموجلوبين قبل التبرع للتأكد من أن المتبرع في حالة صحية جيدة ويستوفي المتطلبات الطبية.مع ذلك، قد تحدث بعض الآثار الجانبية البسيطة والمؤقتة بعد التبرع بالدم مثل الدوار أو الإرهاق الطفيف. وتختلف هذه الآثار الجانبية من شخص لآخر وقد تختفي بسرعة\nيجب على المراكز والمؤسسات التي تدير عمليات التبرع بالدم اتباع إرشادات صارمة لضمان سلامة المتبرعين والمستلمين، وتحافظ على النظافة والجودة والسلامة في جميع \nالأوقات."),
         ),    SizedBox(
                height: 11,
              ),

               ExpandablePanelbutn(txt1: "ما هي المخاطر أو الآثار الجانبية المحتملة للتبرع بالدم؟",
                txt2: "ومًا، التبرع بالدم يعتبر آمنًا، ولكن قد تحدث بعض الآثار الجانبية المؤقتة والمحتملة. ومن بين هذه الآثار الجانبية\n",
                 widget: Text("	دوار وإعياء: قد يشعر بعض المتبرعين بالدوار أو الإعياء بعد التبرع بالدم. ينصح بالجلوس والاسترخاء لبعض الوقت وشرب سوائل لتجنب الجفاف. غالبًا ما تزول هذه الأعراض بسرعة\nآلام في مكان الحقن: قد يشعر بعض المتبرعين بآلام طفيفة في مكان حقن الإبرة بعد التبرع. يمكن استخدام ضغط خفيف أو تطبيق الثلج لتخفيف الألم. وعادةً ما تختفي هذه الآلام في غضون وقت قصير.\nتورم أو احمرار مؤقت: قد يحدث تورم أو احمرار طفيف في موقع الحقن، وعادةً ما يكون ذلك مؤقتًا ويختفي بسرعة.	تغيرات في ضغط الدم: قد يحدث تغير طفيف في ضغط الدم بعد التبرع بالدم. عادةً ما تكون هذه التغيرات طفيفة ولا تشكل تهديدًا\n")), 
                SizedBox(
                height: 11,
              ),
              ExpandablePanelbutn(txt1:"كم يستغرق التبرع بالدم؟" ,
              txt2: "عمومًا، يستغرق عملية التبرع بالدم ما بين 10 إلى 15 دقيقة فقط. ومع ذلك، قد يستغرق الوقت الإجمالي في المركز أكثر من ذلك بسبب الإجراءات الإضافية مثل الفحص الطبي وملء الاستمارات وإجراء المقابلة الطبية\n",
            widget: Text(("في زيارتك الأولى للتبرع بالدم، قد يكون هناك بعض الوقت المستغرق في تسجيل المعلومات الشخصية وإجراء الفحص الطبي الأولي. يتضمن الفحص الطبي قياس ضغط الدم ونبضات القلب وفحص مستويات الهيموجلوبين في الدم.\nبعد تمرير الفحص الطبي وتأكيد ملاءمتك للتبرع، يتم توجيهك إلى منطقة التبرع حيث يتم سحب الدم. هذه العملية عادةً ما تستغرق بضع دقائق فقط.\nبعد التبرع، ستُعطى بعض الراحة والوقت لتتعافى وتشعر براحة تامة قبل مغادرة المركز. عادةً ما يتم توفير المشروبات والوجبة الخفيفة للمساعدة في تجديد السوائل والطاقة بعد التبرع.\nلذا، بشكل عام، يمكنك توقع أن تستغرق عملية التبرع بالدم من 30 إلى 60 دقيقة تقريبًا، وهذا يشمل الوقت المستغرق في الفحص الطبي والتجهيز وعملية التبرع نفسها والراحة بعدها\n")),
              ),
               SizedBox(
                height: 11,
              ),
              ExpandablePanelbutn(txt1: "ماذا يجب علي القيام به للتحضير للتبرع بالدم؟",
              txt2: "للتحضير للتبرع بالدم، يمكن اتباع هذه الإرشادات العامة\n",
              widget: Text("	النوم والراحة: حاول أن تحصل على قسط كافٍ من النوم في الليلة السابقة للتبرع بالدم. واحرص على أن تكون في حالة راحة واسترخاء قبل التبرع.\n	الإفطار: تناول وجبة خفيفة ومغذية قبل التبرع بالدم. تأكد من تناول وجبة تحتوي على نسبة جيدة من البروتينات والكربوهيدرات. تجنب تناول وجبة ثقيلة ودهنية قبل التبرع.\nشرب السوائل: تأكد من شرب كمية كافية من السوائل قبل التبرع بالدم. يُفضل تناول العديد من السوائل الغير كحولية، مثل الماء والعصائر الطبيعية، للمساعدة في تجنب الجفاف.\n	الأدوية: إذا كنت تتناول أي أدوية، استشر الطبيب أو الفني الطبي المسؤول عن عملية التبرع بالدم لمعرفة ما إذا كانت الأدوية التي تتناولها تؤثر على القدرة على التبرع بالدم.\nالملابس: ارتدِ ملابس مريحة ومناسبة. يُفضل ارتداء قميص ذو أكمام قصيرة أو قميص يمكن طيه لأعلى الذراع لسهولة الوصول إلى الوريد.\n	الهوية الشخصية: احضر معك هوية شخصية صالحة مع صورة للتعرف عليك.الاستراحة: يُفضل أن تأخذ بعض الوقت للاستراحة بعد التبرع بالدم. تناول وجبة خفيفة واشرب سوائل قبل المغادرة.\n"),
              ),  SizedBox(
                height: 11,
              ),
              ExpandablePanelbutn(txt1: 'هل تريد معرفه توافق نقل الدم؟',
              txt2: 'هذه فصائل الدم اتعرف عليه',
              widget: Container(width: double.infinity,height: 200,
                child: Image.asset("assets/images/blood_group.jpg")),),
               SizedBox(
                height: 11,
              ),
                ExpandablePanelbutn(
                  txt1: "هل يمكنني التبرع بالدم إذا كنت أتناول أدوية؟",
                  txt2: "إمكانية التبرع بالدم أثناء تناول الأدوية تعتمد على نوع الدواء والحالة الصحية العامة للمتبرع. هناك بعض الأدوية التي قد تؤثر على القدرة على التبرع بالدم أو تؤثر على سلامة المستلمين المحتملين للدم. ",
                  widget: Text("في حالة تناول الأدوية، يُفضل أن تستشير الطبيب أو الفني الطبي في مركز التبرع بالدم المحلي قبل التبرع. قد يكون من المفيد إحضار قائمة بالأدوية التي تتناولها لتقييمها من قبل الفريق الطبي في المركز.\nبعض الأدوية التي قد تؤثر على القدرة على التبرع بالدم تشمل مضادات التخثر (مثل الأسبرين أو الوارفارين)، وبعض الأدوية المضادة للالتهاب غير الستيرويدية بعض الأدوية المثبطة للمناعة. قد يتم تعليق التبرع لفترة مؤقتة بعد تناول هذه الأدوية.\nمن الأهمية بمكان أن تتحدث مع الفريق الطبي في مركز التبرع بالدم للحصول على توجيهات محددة ومعرفة ما إذا كانت الأدوية التي تتناولها تؤثر على إمكانية تبرعك بالدم وما إذا كان يتعين تعليق تناولها قبل التبرع\nإذا كانت الأدوية التي تتناولها تؤثر على إمكانية التبرع بالدم، يرجى أيضًا إعلام الفريق الطبي في المركز المحلي بأي تغييرات في الأدوية أو الجرعات التي تحدث لاحقًا بعد\n التبرع بالدم"
             ),
                ),
                SizedBox(
                height: 11,
              ),
              ExpandablePanelbutn(
                txt1:"كيف يتم فحص الدم للأمراض؟" ,
                txt2: "نظرة عامة على بعض الاختبارات الشائعة التي يمكن إجراؤها على الدم:",
                widget: Text("تحليل CBC (Complete Blood Count): يقيس تركيز خلايا الدم المختلفة مثل الكريات الحمراء، والكريات البيضاء، والصفائح الدموية. يساعد في تشخيص الأمراض مثل فقر الدم والالتهابات وأمراض الدم الأخرى.\nفحص الصفائح الدموية: يقيس عدد وحجم الصفائح الدموية ويساعد في تشخيص اضطرابات النزف والتخثر.\nفحص السكر في الدم: يقيس مستوى السكر (الجلوكوز) في الدم ويستخدم لتشخيص ومتابعة مرض السكري.\nفحص الدهون في الدم: يشمل قياس مستويات الكولسترول الكلي والدهون الثلاثية والكولسترول الجيد (HDL) والكولسترول السيء (LDL). يُستخدم لتقييم خطر الإصابة بأمراض القلب والأوعية الدموية.\nفحص وظائف الكبد والكلى: يقيس مستويات الإنزيمات والبروتينات في الدم لتقييم صحة الكبد والكلى.\nفحص الالتهاب: يشمل اختبارات مثل معدل الترسيب الكرياتيني (ESR) والبروتين C-النشط (CRP) لتقييم وجود الالتهاب في الجسم.\nفحص فصيلة الدم وعامل ريسوس: يتم استخدامه لتحديد فصيلة الدم وعامل ريسوس الإيجابي أو السلبي\n"),
                ),
                 SizedBox(
                height: 11,
              ),
              ExpandablePanelbutn(
                txt1: "ماذا يحدث للدم بعد التبرع؟",
                txt2: "بعد التبرع بالدم، يخضع الدم المتبرع لعدة خطوات لضمان سلامة واستخدام فعال للوحدات المتبرع بها. إليك نظرة عامة على عملية معالجة الدم بعد التبرع:",
                widget:Text("1.	التسجيل والتحقق: يتم تسجيل المتبرع وجمع المعلومات الشخصية وتاريخ التبرع. يتم أيضًا إجراء فحص سريع لتحديد فصيلة الدم وعامل ريسوس.\nفصل الدم: يتم فصل الدم المتبرع إلى مكوناته الرئيسية، وهي الكريات الحمراء، والبلازما، والصفائح الدموية، باستخدام جهاز تركيز الدم المركز أو عملية الترسيب السريعة.\nالتحقق من المعلومات الصحية: يتم التحقق من تاريخ المرض والأدوية المتناولة والمعلومات الصحية الأخرى المتعلقة بالمتبرع لضمان سلامة الدم.\nفحص الدم: يتم إجراء فحص مخبري شامل للدم المتبرع، بما في ذلك فحوصات للكشف عن الأمراض المنقولة بالدم مثل فيروس نقص المناعة البشرية (HIV) والتهاب الكبد الفيروسي والسيلان والزهري وغيرها. يجب أن يكون الدم خاليًا من هذه الأمراض لضمان سلامة المتلقين.\nتجميع وتخزين الوحدات: تُعبأ الوحدات المنفصلة من الدم في أكياس خاصة وتوضع في ظروف تخزين محكمة الإغلاق وتبرد للحفاظ على جودتها وسلامتها.\nتوزيع الدم: يتم توزيع الدم المعالج والمختبري للمستشفيات والمراكز الطبية حيث يستخدم في عمليات النقل والجراحة وعلاج الأمراض\n") ,),
             SizedBox(
                height: 11,
              ),

              ExpandablePanelbutn(
                txt1: "	كيف يتم استخدام الدم لإنقاذ الأرواح؟",
                txt2:"تلعب عمليات نقل الدم دورًا مهمًا في إنقاذ الأرواح. فيما يلي بعض الطرق الرئيسية التي يستخدم بها الدم لإنقاذ الحياة" ,
                widget:Text("-	عمليات نقل الدم للمرضى الذين يعانون من فقدان دم حاد بسبب الإصابات أو العمليات الجراحية. نقل كميات كافية من الدم يمكن أن يساعد على استعادة ضغط الدم وإمدادات الأكسجين الحيوية.\nنقل خلايا الدم الحمراء لمرضى الأنيميا مثل فقر الدم المنجلي. يوفر نقل خلايا الدم الحمراء الأكسجين الحيوي إلى الأنسجة.\n	نقل الصفائح الدموية للمرضى الذين يعانون من نزف أو خلل في التخثر. تساعد الصفائح على تجلط الدم ووقف النزيف.\nنقل بلازما الدم للمرضى الذين يعانون من نقص بروتينات الدم أو عوامل التخثر. توفر بلازما الدم هذه العناصر الحيوية.\nزراعة نخاع العظم للمرضى الذين يعانون من أمراض مثل السرطان. يمكن لنخاع العظم المتبرع به إعادة بناء نظام مريض المناعة\n") ,),
            SizedBox(
                height: 11,
              ),
              ExpandablePanelbutn(txt1: "هل يمكنني التبرع بالدم إذا كان لدي حالة مرضيه؟",
              txt2: "نعم، يمكنك التبرع بالدم ولكن قد تكون هناك بعض القيود أو الاعتبارات الطبية تبعاً لحالتك. بعض النصائح\n",
               widget: Text("تأكد من إخبار مركز جمع الدم عن أي حالات طبية لديك مثل السكري أو ارتفاع ضغط الدم. \nفي بعض الحالات مثل بعض الأمراض المعدية، قد يمنعونك مؤقتاً من التبرع.\nلبعض الأدوية مثل مضادات الالتهابات قد تكون هناك فترة انتظار قبل التبرع.\nاستشر الطبيب المعالج لك قبل الذهاب للتبرع.\nأخبرهم عن أي حالة طبية أو أدوية مخفية لتقييم مدى ملاءمتك\n"),
             
              ),
               SizedBox(
                height: 11,
              ),
          ExpandablePanelbutn(txt1:"ماذا يجب علي القيام به إذا شعرت بعدم الارتياح بعد التبرع بالدم",
          txt2:"هنا بعض التوصيات لو شعرت بعدم ارتياح بعد التبرع بالدم:\n" ,
          widget: Text("استريح لبضع دقائق وأكل أو شرب شيئاً خفيفاً مثل بسكويت أو عصير. هذا سيساعد في استعادة السوائل والمعادن التي فقدتها.\n	إذا استمرت الأعراض مثل الدوار أو الإغماء، أبلغ الممرض أو المشرف على التبرع فوراً. \nإذا كانت الأعراض خفيفة مثل الشعور بالضيق أو التعب، فاسترح لمدة 30 دقيقة قبل مغادرة المكان.\nتجنب حمل أشياء ثقيلة أو الوقوف فوراً بعد التبرع. \n	تناول وجبة خفيفة وشراب كافٍ بعد العودة للمنزل.\n	إذا استمرت الأعراض لأكثر من يوم، استشر الطبيب.\nلا تتردد في إخبار الموظفين إذا لم تشعر بالراحة. صحتك هي الأولوية.\n"),
          ),
          SizedBox(
                height: 11,
              ),
              ExpandablePanelbutn(txt1: " هل يمكنني التبرع بالدم إذا سافرت مؤخرًا إلى بلد آخر؟",
              txt2:"نعم، يمكنك التبرع بالدم بعد السفر إلى بلد آخر، لكن قد تكون هناك بعض القواعد والفترات الزمنية للانتظار:\n" ,
              widget:Text("-	إذا سافرت إلى بلد من البلدان ذات مخاطر مرتفعة من أمراض معدية مثل الملاريا، قد يمنعونك من التبرع لفترة زمنية. \nبعض البلدان يجب انتظار 3-6 أشهر قبل التبرع بعد العودة منها.\n	إذا زرت بلداً خارج أوروبا وأمريكا الشمالية، فربما يتطلبون فترة انتظار أطول\n	أخبر مركز جمع الدم عن وجهتك ومدتها لتقييم مدى جواز تبرعك.\nتجنب التبرع إذا شعرت بأعراض مرضية أثناء السفر أو بعدها.\n") ,)
          
            ]))),
      ],
    );
  }
}