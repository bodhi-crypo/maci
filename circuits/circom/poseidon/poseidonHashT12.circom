include "./common.circom";


template PoseidonHashT12() {

    var nRoundsF = 8;
    var nRoundsP = 51;
    var t = 12;
    var nInputs = 11;

    var C = [14397397413755236225575615486459253198602422701513067526754101844196324375522,
 10405129301473404666785234951972711717481302463898292859783056520670200613128,
 5179144822360023508491245509308555580251733042407187134628755730783052214509,
 9132640374240188374542843306219594180154739721841249568925550236430986592615,
 20360807315276763881209958738450444293273549928693737723235350358403012458514,
 17933600965499023212689924809448543050840131883187652471064418452962948061619,
 3636213416533737411392076250708419981662897009810345015164671602334517041153,
 2008540005368330234524962342006691994500273283000229509835662097352946198608,
 16018407964853379535338740313053768402596521780991140819786560130595652651567,
 20653139667070586705378398435856186172195806027708437373983929336015162186471,
 17887713874711369695406927657694993484804203950786446055999405564652412116765,
 4852706232225925756777361208698488277369799648067343227630786518486608711772,
 8969172011633935669771678412400911310465619639756845342775631896478908389850,
 20570199545627577691240476121888846460936245025392381957866134167601058684375,
 16442329894745639881165035015179028112772410105963688121820543219662832524136,
 20060625627350485876280451423010593928172611031611836167979515653463693899374,
 16637282689940520290130302519163090147511023430395200895953984829546679599107,
 15599196921909732993082127725908821049411366914683565306060493533569088698214,
 16894591341213863947423904025624185991098788054337051624251730868231322135455,
 1197934381747032348421303489683932612752526046745577259575778515005162320212,
 6172482022646932735745595886795230725225293469762393889050804649558459236626,
 21004037394166516054140386756510609698837211370585899203851827276330669555417,
 15262034989144652068456967541137853724140836132717012646544737680069032573006,
 15017690682054366744270630371095785995296470601172793770224691982518041139766,
 15159744167842240513848638419303545693472533086570469712794583342699782519832,
 11178069035565459212220861899558526502477231302924961773582350246646450941231,
 21154888769130549957415912997229564077486639529994598560737238811887296922114,
 20162517328110570500010831422938033120419484532231241180224283481905744633719,
 2777362604871784250419758188173029886707024739806641263170345377816177052018,
 15732290486829619144634131656503993123618032247178179298922551820261215487562,
 6024433414579583476444635447152826813568595303270846875177844482142230009826,
 17677827682004946431939402157761289497221048154630238117709539216286149983245,
 10716307389353583413755237303156291454109852751296156900963208377067748518748,
 14925386988604173087143546225719076187055229908444910452781922028996524347508,
 8940878636401797005293482068100797531020505636124892198091491586778667442523,
 18911747154199663060505302806894425160044925686870165583944475880789706164410,
 8821532432394939099312235292271438180996556457308429936910969094255825456935,
 20632576502437623790366878538516326728436616723089049415538037018093616927643,
 71447649211767888770311304010816315780740050029903404046389165015534756512,
 2781996465394730190470582631099299305677291329609718650018200531245670229393,
 12441376330954323535872906380510501637773629931719508864016287320488688345525,
 2558302139544901035700544058046419714227464650146159803703499681139469546006,
 10087036781939179132584550273563255199577525914374285705149349445480649057058,
 4267692623754666261749551533667592242661271409704769363166965280715887854739,
 4945579503584457514844595640661884835097077318604083061152997449742124905548,
 17742335354489274412669987990603079185096280484072783973732137326144230832311,
 6266270088302506215402996795500854910256503071464802875821837403486057988208,
 2716062168542520412498610856550519519760063668165561277991771577403400784706,
 19118392018538203167410421493487769944462015419023083813301166096764262134232,
 9386595745626044000666050847309903206827901310677406022353307960932745699524,
 9121640807890366356465620448383131419933298563527245687958865317869840082266,
 3078975275808111706229899605611544294904276390490742680006005661017864583210,
 7157404299437167354719786626667769956233708887934477609633504801472827442743,
 14056248655941725362944552761799461694550787028230120190862133165195793034373,
 14124396743304355958915937804966111851843703158171757752158388556919187839849,
 11851254356749068692552943732920045260402277343008629727465773766468466181076,
 9799099446406796696742256539758943483211846559715874347178722060519817626047,
 10156146186214948683880719664738535455146137901666656566575307300522957959544,
 19908645952733301583346063785055921934459499091029406575311417879963332475861];

    var M = [[8949952361235797771659501126471156178804092479420606597426318793013844305422,
  13586657904816433080148729258697725609063090799921401830545410130405357110367,
  9234644095326950665182299534206533404013403644192586933457524891645396292987,
  21716239453658409906539773463855601090749352024072354407676420846971925763352,
  4217850196621719492070441371114581340961962601115446718610695075341064782843,
  14091314373946770079087815723744110798105826012788667211882320191290756637054,
  1836151420849876287257251498242729836824311746824392923242828663131666580828,
  6835788420848335173243495671810987843103243246225527562249885075005140362623,
  1980065348636533793938224420722478561090879463814453742159951744016644584724,
  15713403866108081374909941292970437652990369272785906691248434303775169969543,
  14959743792706716021142885528088392553078212698661562097167510503161229999990,
  15006586652538422799588174804684510919512328790284816768463531865354612746131],
 [8642889650254799419576843603477253661899356105675006557919250564400804756641,
  14300697791556510113764686242794463641010174685800128469053974698256194076125,
  5585884681068831368957819127799934550116264845072199016558603424861777753252,
  3478164595623309231528081170973492360030471123077314602599603198947503453402,
  7199924820941799838017782197767573398800843214159492464366697425752021794207,
  1154943146689858448412819104632261733949486281652220573359100064807135186211,
  2014307020840030171599981482679561995491247943968618411317941095661736771072,
  3570239959937051869699597646596776576100477379279696986371716806585418148999,
  6444436284087049954311426326470253493866988349227325357692234777181945302138,
  4084181522452846717426267118401257065171304838427595913046458801675418547946,
  13989632073452219820350995430504114247219866494172950970739079321835291324671,
  13418719828600374542384556966295703666596070930672811607179449002639059599541],
 [15474947305445649466370538888925567099067120578851553103424183520405650587995,
  1016119095639665978105768933448186152078842964810837543326777554729232767846,
  1094643194372100629123149177218988304969310518086967353237224710253647912217,
  19683112286289404632257045032408336402139497606956310649520051095163041093043,
  15078463390585580460701632423762128113753337560111211686732764674670454433375,
  1801502535278136950711454362447206750370371584220726360504187134310004854946,
  8621790518781836243437824920511539973165116610755426647487428365048155246615,
  12942512140539042341676889757219435053433203623152024989066217867030059451362,
  20440428457116895728643297727585714505972968360880851439871840763004876047842,
  501563077712479629714853317258969081525260934521262312772885253926721582762,
  753123978024633956735577324441899899633658365336405510640245528428125257350,
  15438139118673148272474914574603568698207304684426092003641682993272711781065],
 [1420772902128122367335354247676760257656541121773854204774788519230732373317,
  14172871439045259377975734198064051992755748777535789572469924335100006948373,
  701171404446517799603547590964435136387194297039347722754381539762095803416,
  9803177017074123807147870516958969882415683917143053879462479514476003798692,
  10882504770686057070666901469152010168883484553788707224519875015429176286468,
  16116223334794707241932949543829423645032061244136000915663484670112660674335,
  1050574705143710849158660280515783436048703475592206287328683483437386496342,
  3193766187369768098819373128520920194995009659905354541728591134729338630146,
  5442308134552484158006176363860250847803335445074346356521667371941439320753,
  11191223378227773223878730222746316529427664100909744690819477729631161942363,
  11726035845675343757836923739489072381179982752991909557580776186859596967156,
  16901810476261424999482203611679314176669106099527895459084749754823603991308],
 [19189494548480259335554606182055502469831573298885662881571444557262020106898,
  19032687447778391106390582750185144485341165205399984747451318330476859342654,
  12323575831655155253804858088151729263068755350164008078826612164541519408135,
  13364062595561633544353642535185185386831615196434150714209983763273382358030,
  9274699025052388999143876606332457090594226076618918017186910082987520766620,
  21666017696927606866900803180167159825580415253627077790152277311026667245774,
  19428861633624669932732235043823844526934683635426508396069006262580783292098,
  349092129900167299852086304168956780686281800973047308710033408193673557137,
  9891605682735775701372497220084495703059875491976279694547892411730413275106,
  9572033480346284888842892814742041052680607489312867118792896402407551781000,
  9419692140501576607876338606093398306760750606675978490359415622226726545243,
  8624211117939275106682081656519108589416393964885797669702352155223639676615],
 [14514189384576734449268559374569145463190040567900950075547616936149781403109,
  19038036134886073991945204537416211699632292792787812530208911676638479944765,
  686782683208273499702675091923241011258708712578932107294509288335035332309,
  19460483659494742538635058842962321840203437040436001627070209503346220914620,
  2717363541929281429425363151363573812700929689092742076307025102432122849113,
  592856464239577084277812148344474334229160123467784799518401396518621499307,
  19605232505714887411140533539156676078023064817112556974818688529720554103027,
  17281837796802566248553868696561647661575293017929540397986609448489469656408,
  5179101331705486631216523439406626504427859861086380006880198353271403634284,
  21494373900212553862269598166466369411014604306433901007975656990265100086773,
  12479091560441248082862707244714931628551465467233671548318239199145856448347,
  12491607425761055729662442019363508424269807364745212435444190648207572076545],
 [20697789991623248954020701081488146717484139720322034504511115160686216223641,
  6200020095464686209289974437830528853749866001482481427982839122465470640886,
  15003643064481014784403977252896879471469342634022488726217418739723899468318,
  12647612870405528475535038805212974373775200663189541014169237057917818933775,
  4495592920221816845183500919899258791575337853955422662005352518056111526526,
  17016589944599426232470877677784553412045023522564439128359954090088542925927,
  7427163762123037666168877552179990976257321514817431071386277873217974716214,
  6954714365751319627532260089365398510597789423888128188300193742623440858991,
  20741354368082668749519294669330263800034959643576788680679721465758396340655,
  8690392737093296508596420240113481624211167630103821946341025063336615861750,
  128326679649384002269047621993838921105558466114089093801619612520960648926,
  12703817225095950516595285538310896530137847080299329755804157103829069832883],
 [13991166219115538669786979327638629497368851557264728153209258584901344742173,
  10708464376044593093210642907737038037693199311429347815304064429229497756513,
  6487544089495620557439978277791925879985014522759859697996101158123830288903,
  2913307273815072522855995578822138088278918070152314785631428419886490815017,
  14285037819197997716648396320167175389429136413217640368836681114764148118185,
  3333794576395592518925638954760517866119123399586466538142440796174614359894,
  3845776014605207395343871969433626371796105685015639546701817312715048078273,
  9263887251631740182673249586528554091206122902651331921320275863021853816005,
  14516758205336303628030971413987867488663371869161580208931064798637853946497,
  15357311091575984266241753426851379448502423574157741469776854720990327180318,
  15592199505650910310179975282703642781152274938814852803050516371497805905618,
  11696071630533658433430012425611085012006305934825565097498631527205190114355],
 [21124868883310895249704508909746850568648918888363322451096318445789496113765,
  3729190893061666874168977650023409592233396533084615654829157344975623505524,
  10648014247890130944143499130156012552468488977293052246766339673997837070992,
  9568023470137472494284353113734549348684200769702589788112091125656147667116,
  3536927330244885178374691992819629480677300039684470529320471913652629606838,
  11398590172899810645820530606484864595574598270604175688862890426075002823331,
  13867154112143118575451613166385157242483631693788556304796979714601785936825,
  15587970419040244702732665316366587844861765432258110249032770438196575054494,
  1760728291310754125712539670786268511398339681699173022567759629151538940271,
  10983112402223375904816148852700278466880680448249842946746264282026432805356,
  15317492529014085340160234749721835831474162547771507349755909013051779433016,
  16522315899813393602217644554675335137456173932685599501256120168385052319551],
 [15565208172936548126814901061215221899993229204075026231475743356766667186275,
  14273341415389175002732931022197371408910107356935395501556639778517250463216,
  5902907000654141499635699176721929039612928718177921573754626287345808685856,
  203666313136774023325316072654501128468371734762708925063627487502421439094,
  9450682786498823752891980662275296997029499323840362934742782429277244701264,
  5845919573782750816116964311797087944211904659910565804455233427824994872877,
  2620768939180089200997122995060391898943652408298747707765440591474859977536,
  6097212856823059610806594870167172449630826014160149958358449182659226854683,
  21035421258088434187064210132510536027666832877207574626482275926069854695763,
  13051875927006043184532456259732675608112064860752811133476026158472953275617,
  9863361682300502736731454118729857964509172642453643136605329752639270646259,
  6864936489606613569949200125517908551657368982395164693026803780881403832845],
 [7324527588398529369832404971572555764840381229220960043028736393060929031165,
  16180780920520829787590397461786386727911681900904540409095357904584006980425,
  11923552431018057977761262750896735278348525198229774660021082286179569562761,
  16103000669516568314626924758129945191156182821310825343179071305812017533451,
  6703384075365774580846496809352382349237535411108756946275887008878257647636,
  8320969168029750438001524325485404349446296049650925704636382736628876200413,
  7711442374668991871896332031308406364421360151841877944011644435604249756323,
  4858024683814982254309886653697281467687205888514801303577930237690860071670,
  21452852726519764756830618853858002743210980897675031341247154775030934599037,
  13833240608470544540225953613275063421934297305979294165453842748748438594425,
  8100247873651925632034289001098959227000685657042182048193147401160223524912,
  10121389091958157720142199475024283036593233305586359212041679488821565236710],
 [4504593921994952598155657828894656279482867500985575499664289188003946121851,
  14511147299412740304746841320688216321036602714960166007170353213473524352104,
  16528025842375043435837119470493256268433673445086331728490793208867786241828,
  9900154154386663479537586819894718944687713302473452381603628292243002702279,
  17445064292175618291837332432796219832109705978726091185424692935685474443383,
  9477523956585809224358176702160144713654392239223858397591554583998674321011,
  5579747340111624719474392885678928647910939579910780777119735981799709775053,
  5540078687649959444165462224899672030870257411479656684734160045273088947455,
  5080667717011927915807989683903164006615302718909764087091456973642565978968,
  8405426129356335885106454141349949656435052005686122818690562623647725612759,
  14153792492527926309111680484388508008319725250964284816755179056859092161333,
  9095727891321434705384160430973826842535919861682195638384112440257688759288]];


    signal input inputs[nInputs];
    signal output out;

    component ark[nRoundsF + nRoundsP];
    component sigmaF[nRoundsF][t];
    component sigmaP[nRoundsP];
    component mix[nRoundsF + nRoundsP];

    var k;

    for (var i=0; i<(nRoundsF + nRoundsP); i++) {
        ark[i] = Ark(t, C[i]);
        mix[i] = Mix(t, M);

        for (var j=0; j<t; j++) {
            if (i==0) {
                if (j<nInputs) {
                    ark[i].in[j] <== inputs[j];
                } else {
                    ark[i].in[j] <== 0;
                }
            } else {
                ark[i].in[j] <== mix[i-1].out[j];
            }
        }

        if ((i<(nRoundsF/2)) || (i>= (nRoundsP + nRoundsF/2))) {
            k= i<nRoundsF/2 ? i : (i-nRoundsP);
            for (var j=0; j<t; j++) {
                sigmaF[k][j] = Sigma();
                sigmaF[k][j].in <== ark[i].out[j];
                mix[i].in[j] <== sigmaF[k][j].out;
            }
        } else {
            k= i-nRoundsF/2;
            sigmaP[k] = Sigma();
            sigmaP[k].in <== ark[i].out[0];
            mix[i].in[0] <== sigmaP[k].out;
            for (var j=1; j<t; j++) {
                mix[i].in[j] <== ark[i].out[j];
            }
        }
    }

    out <== mix[nRoundsF + nRoundsP -1].out[0];
}
