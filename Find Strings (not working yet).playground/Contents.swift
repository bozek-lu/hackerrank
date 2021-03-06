//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

func powerset(_ array: [String]) -> [[String]] {
    guard array.count > 0 else {
        return [[]]
    }

    let tail = Array(array[1..<array.endIndex])
    let head = array[0]
    
    let withoutHead = powerset(tail)

    let withHead = withoutHead.map { $0 + [head] }

    return withHead + withoutHead
}

func findStrings(w: [String], queries: [Int]) -> [String] {
    let arraysOfSubstrings: [[String]] = w.map { powerset($0.map { String($0) }) }
    let substrings = arraysOfSubstrings.flatMap { $0 }
    let sortedArray = Array(Set(substrings)).sorted()
    var answers: [String] = []
    for i in Array(Set(queries)) {
        if i <= sortedArray.count {
            answers.append(sortedArray[i - 1])
        } else {
            answers.append("INVALID")
        }
    }
    print(sortedArray)
    print(answers)
    return answers.sorted { $0.compare($1, options: .caseInsensitive) == .orderedAscending }
}

let sss: [String] = ["wwylgbplrqsaurkdrznqudinktphqmqcihjvgenampyjrivcudlyceobsoaqzxbzqcjfkrrapgvvvzurcssmnflbnwuyfejlstqbrrytwcaqfouutoqefjrelnswaszlwjnajdolsxxxrerxocspfvhekawnuaaorowslfirqbyhljtexrkxpgdxltaoqgvwnobezjitdfllhkbldghrfrhmvknoycjostzpsxczrgvgccdnpzncmayqzmkhxraafyidkmqlwvuczybufvduhtkibzwmfithwlaxjlprsjuctpwobyebwjbsvjlhpwpjsalblnzhsigproikectugqldhfjzsfzdbbhfuxxzmpopeanwvgqmkxljbxckasbmdmbqkvurlplbbayudbppbkjkdgumvivyxikdvebmvfqxbgyywjxjuysrlvruyxnmcxxlnbwovrfrcktqzpnnqcpnipyihcqjclkwjjzcbe",
"yglnaawhbwzewrfnbbqhzexnjjetgprxnihdayyeegbknueszwtsqhxovicgzriogancljkmfzxavwxdglgeiuqnwhkvpesmtgdlggtvacxvmwjbklzqejhmkduxrttvhakxvwwbedybqqmodhsfpinztxbitznrfthezvfggzrvzyrllmkvoeaxuohdgyhelhfvkynlxaiozjgcazyelemgjmcotqazkdymjhiwmndiycceyywmbshtkxgdcxvlkxvknzqulxmpbkmgyckwovwiwmkbaaljlgamnmfnyhhsjsoijfbaqxxhpbghcxkvgpwnwokpaxtxosxpbrsydoqdzmfyiwswiojmdbfzdsmoecbsqjkoonvgpxlqpeksnvhubrhaoklakjbzkremkiwicbbmxcgmzbie",
"hupzcdzuxkqfkhembdpayujrhneyvenkbohjojrowxaejkuzgqddpnqkhreetwjbmjlewdrlwvvhvmrwtbgddzdlakcjwumfcsqkrpjjpdvfleqqyxevoufnfdqjmxkmtsbqugebihxrsovggmisbdikviapcfiphmjjudpztvgvouprfrvmtvjcglilgihupfcovavzqyypjiuaktmeetnnlipxsmafyabpobssrpnjgogfhrdvqydczakrpcmrwbyxghojttyajjatcelnavqxidyewnrhxpquewjlntudilxxifdyzgdwctoinjqjmejlsirjyrrofprerificdi",
"gdnltjqkmkfikunodybcvppmxigyeoultyjyvooqkmshwqqqjvwpvcfuqqklovubtwuzfomuzzukksrgpwvlpjcksbuqopmzaxwkaoicbzhoddxpgnncibqnymubflvbyyluwvborzlbntlgkdwsyxcjhvxjkayhscvuxyotilzlesbzrsngfzyhipfimnemgvokhgnuxtgjdjeigskewguhqneqbaxxxiooahhofrqxmmgqzncnxdoetooqmwgyqaaleqwxvcaefhakhddjzhqwnsdlamkgypqsjsfpduqyyrizszepxezvevynjjtnmoeftcjjfranqtnrwulcujchaybfowsvusmyjondlfgoxw",
"cnyqnxolhmwtirppugboskcpjasnglrwzvtflzgddlawpeeyrbrfyhqgguhzfboymtunykutcptzhelqljqaejcomsxkgakguvgqvvfndawlihsawqjpezumwvygzvfeplxeinperrbiewkhfpjysvlybagygdjraetzdpzrmqllvyfjetpismcfhapodbdivxcdyqskecadwakteqkklbxiyiqjippbrxbmeugpvyrhfkjwnazkaxlcyrzkqogbxdbjxpyqysprcusfcbdiczebualkorwlmplwnrbihbovgwwenyamwqjhbxhofenpwqavqggkzeoazftfscpuurhitkyfetiynlzwqmtzqzbhsvasabwzegepfzedrkjnyziuakkxercrdrokrtjcyekgfhwmtjjmmkpvewewqysjbplypkfztzgisdbkvlptrfcfylzwaeqbxhqixfagapuhuqqmzjcbipzpiffwoybuq",
"vfkffmzueolmkbqrhvjdxjvhhfpkduepmdcsjaaecihehkofkyelzotcmgcjaxppxkjjzwyeohxuahdmtvchdpdseuxxsrnbvobmqxdzqxqwvfmitokldbjgfcmxkizyldzobdfwtqxemezhvtysbuhyajhnblbljkcczmzeqioziucolhcmokkmvrkumtbrzzrxilpmcknamuaewitncmoukzzyojkhjnbpscotyjurseinjewngvltctuwvelgarknbuidc",
"eupaiuagbcumdcnowludlhewkhrqlwktuppmrsqjgzjhgtwtlpzbdrjfyhchlfsxplbhkulxjxuovonnxiwznzcfhihymjjatlrdqotsnxpytkudinbksiikcmkesawuheyncuuayostpmrrxvdtfbkxvpvwpbkgazllefohimmagccaajgwjzjnoqhatnpglruxhvmfvxbsbfzgiacaehjcwlhmevqeixxhnavfzrigmssxcjvrxqdhpgrjcwoarhbqiemzfeeicmyjufybkfqsranqfczngtzijhnfojnffrigyurkxurggzrcfhiqjqncpwsbdrlmcethqmtjtmjcbgslrnhh",
"euhmbcmbkkdznxtkeaxfriukcehjadcrswcwekznpaeyfmqmmeyafhmpugbxfjmhxywffmphxnheonemtbwwufvbdpghuqrjzaqfzsleodywxslrlfnpdejjqirylpfeydufluxiezggyydhfoiknjorisiwaeaktzcngfczrufqahrtkgmjhfzoqzpnzblywiqblzskpynftqrjznglcbzwjhliqjuqerpcgyoqrecrwspujcotgpsiinhzj",
"chkmwaumrfgwlsxmhmnbmdasyedkzmediyycdhiflzzhnjdxvcrnxxowvtosgxtcsfytqxvxovvqzcvfuktoumwbqyfztgtgteltcnqtuszabsddmwreibgqxzdbscovlffzxnplvlyafozxxqueeyjifdvbnuitungksrstqmzplgqoniaahusicquanhghcjyiekqtoantrnhfxogkmrnxavlvmwqffkhlhstlztugdcjssrjybtalckavlhnesecwiuivupsbwblomznxndozxpqwmsyxchvvbydmetkxkgawafwwuobfhvqaobkhkucvkbjfxkxntxgwapoqsakcqqvmvwwtowsucirntdqrniqimsodtxpoakpydvelzliugwftdfxueke",
"vsrvnwhdbtmfmdmjptbdbmcdmnxiktwlxivzohpzunqzdnflrbulhicxwpnyftlnwfjyalpmdeitcnnfhebhegjpvvtjdwpscugyzwjbehiffskblsbcireiyersaqjpygkwvbcappbjreoggwznoikvcxybuqrkjtwggpkejsrogxcjkfwbmrtzacbcdsxorlbwzbrnpoeygqxxtcwulbnvexcjxulkycksufldpjnzvcjgfctnlxvchtgcpdraivkqazbqeedpaxzsmcfeuiykbcivpqflllanlfibyppisoevmaxevvpqhmoipxtniddibtnqajlkuludveoqnntupfnaokuyskntsfxwgejrxwkhsawlgzkkiirokegrxulcrauiqibgt",
"lafmllwsdrzcvqsfknxvnippnyrjigpwpgmymyvomkmxoulquqciwsezdbokzybbwkxkxhsegeuxunspblheztbussfkksiblcorhuovjhuafukwitzvxodqwuzbeambzfcjknooctfhagkqkeavvooorcppkbzgkyhmrutbclcrksphmdvkypvrumuzzkbtioankndpodsytgemehfdymbaytklkoowzoqltjxvctgtkqttargucrzyguyijrpmgwckhnngekadfdcmvrwnryqgmkktcoqvxovtfskstcmhgfffvppqwmcyyapaagbufiuwdhypdqmvuviinkwmypinqgxdzvzwvfkhcxkbdonycodnzcmpekxblvcuififqknyfltssuiymogezfmmjlonnxhrovpjmzsesfewsrhqmskdmclockxbkrvekbkaufflmzurnirybvjziilorvuftozgcyqfhhizacqthssvacl",
"qtbhluhllshmzioplmzfffmduzvkzwofrmzlwzrotgfsabkawqkvdlttzqqxkxgduepjxwrmopunpjnuuebqxqammbiydopfquvfqaopiwvbqujhwufqltjztrdbnsxzoimkjtbjydvbrevrcgkhvluvevrzglryjtqnhorrnroaleevoteclsknlzmapvbvzifhgyjrvblywhzyjtcgxsxmsdhdaugrunalkuhfpdgakcyjfdmxyaothobixbajwzmmqabizykleaitergstbxbmjyotxotthkgukmikfv",
"yifibrlwjbvbdvyavequctlharybpjajdvmfcubvspnesulcunktduxiovijgfriojefrllssbggerwceenvryvdndtimjtxddcprtzheuztmtqaiyjlfvwohsgzpprjwrfartbhporgwfeokxthcolrxyvenhpkylwademwvvejnsmbiadlqqmauocotpjfrcofzamagpqrfnfsybwcsxoeegtnevnmgktozaqyjcfpdfsaadifiqgojwwdljpbzltzcqwtnaocnchbcjmpeaaogdampmpbarwpuqxbcidmwiygaqmeptawycoascpayvewohtxlfwiqocbuytwyhdluyifpjgyiigutheuddboqkavnjadzyhqrdzgfqfjefshm",
"lqagwxqsukealzifrzhkzghlkjsxuoxdssqnrfqfwvppeokmvglcwleqbyvystqumegaabzykwsflnnvgljrzdnznwwpgcgybpxobaxvuskikiuhjqnympqlkdoxwqnxfmavdttlygojzgtoutjdapadjanyqfydbgcvwzyqqhaadohqkexyycekhyiyjegiyntnykplrjvsllmajlkgnfrzmtatdceiulhuucksmovhlmapkurvbjdnqyrzslhnlkvwnphshqdgrtwxxixaak",
"nmoguiqbqqqiyewbacvdcnynzvlcpjxacreqpgpuwptalnkvoyqyszgmqhltsehyexgvrhxrfbuevrvgrixieiuhduzijveivpuygiiydscshmcalgxyujbcqvddvxjsygrmppjstwvqjylzkdasbksftomyvggzfeettvtbpeykmvjyqjiqlsjenigaifrcdgjwuocfvejpooefzbpxhlyjrngypuzikgihxllhoyysuhkqrivcmitzuzkfkzauwqgdgxxuhpsvvqnhdgpuizbifandazttkvgketgegzjeiilzviixkpamuigqqhsdcqoozaujtnyfryumssearxgzbrlsszcsejoqkiumfxugystyjadzltetimzrvbneoytrbwywkocmyosvtektmgzlgxcwofieqqqjcihnzjwwir",
"pvkxgwfbaksttgsoknandjcbglzgdtvzumgczuekjotevdjfkxmtxotdgizrrsuyaosxvtxztebvzyasolqegpeztjeyhucwgeuzqfemhfjdxttjgczrtawcdsrxndrjxukhpjxoamlglaqifzsvgxtctgekqdvpptzpwqdogeetbxmylypogscxwzywvpvlwspneoqmryymwjzsxtbzyeisvlitldhgjzgmythasnxuobwwmmcwlzgojrbfvlhirhrwuhkjctnwoyfjbtruzirekvxvwcddktfqsmsetcxipfyxuvqyerjfxrumxsrufpmtjrmbxqyhnwhkyjuxkhuhyegljyfxpzlumyqfujkznmndxfrmzuymdpcvrqxasomriutlpokjkxpzn",
"btiorbvzeuwzaadiqkqgkgxcahzdzbmxskcgpkacmghsuvdqtqswdllqvozmdalygmdydgtglfnbkmtnwsveqjmrxefmxshrrsorvhgxzrapitnklswppnjmzcqkedoldfzogushkmqpybpucawgdwoukasjyrduiuwdugidlkivcygxuuogvlsfiworsoiwnjekkoizpkkyqzzbokjvhgpsswqhzcztijxaytimncffcpttbnjslegdmwdicrsssvtnurpztesckmtawixfqsetzzsvpejnaooctyhnunxrlpkvnrlguucxoisaloxgidkiixoghornmfegskhupzruqsohthghbrzikbswsipvlfjmzgovzlrqimgrmyaamdivkoviteclksblrcpmjbzonvxccmmaakofhmfyuddljhtfguwsrdhfjalfxmdyfbhzjweftwcydje",
"pfhnydjkdprqhnqmdghtlstkjgdpriwvxypdykhwcbuyutzndtzzdznpmgtxjaqtfxziihbsxoysvuscnsakqgswtkjnxrbvyvmjnaeqkbemqufvagaabmsgtthgqtepymrrtfpddikxrxvcbfztexdpmgckoiciyzzxelrvkifphlytnbgtsofidxvafyzpznzvbgwzgvghpywurgzvjkwwolsuimsjsjjktqikkqnlijozeewnzrokidecjbksxziussrmtczdhkjaprhpriovuqofybnefpmafqylrrwzlqrjwtbmovxqjkfrkknbxhjqsnkhyudqjravuhxmdywdglwfuoefxbbewyktnaombgb",
"xslnmjmqepijaeepgpbgvpaypynekikgosbttdhkfpvccgxlzwgyewcmvabqbfdemwxevcknxgdjwwnbpamgsjcyguohehkruhbcquhrkeonvcpsqwkbacchtesrupvygdhorodpvxmmivzfcfyvtpqgytxlkzuemshdwpsbiyyncnpotjpscectvxflnndkskauqsmhufxkxxpughrnftdcnnkfjhjqsaubtgdozhkelfzltvevlevxrdviolosucxhdukmyedctoxyfoallikbdqyobtkcmerfpoyvbklcceqg",
"xjhzgjdlzpqlkvouwuhsyjbghcrsyswmhqcmvlekpaxplwofoopbuazubapoptypouwdzifyhmhzdlebcbtqjjmmbuccsbsadeuswpuxioizkdmxliepghmtxktqtnkicfxjoomxjqrecjwhinbgqxdictufugeqtlfwzfoodpdhjpmjmtfwcakwtjxniwmvdnequgckrrojkwqaxqzuzbhslkatipycnquhlwiqiptgyvsifkwbuozpacwanshqhplepdkdllprfwfwdgeztfwwxwfqtroocwgokgcnxdsjvknaaexhiaadgjbinccnhjgniasgtkzwzifikxcwyryghosliqrvfjfxmxvlkxmqurehonsnpknauuhrjidvmweshexhyjkcnmibluewvfdnmjntagzkbxzlbtetqawumnjafeqmyhcvzkyumneqejyhuljtnsnajyckuh"]
let iii: [Int] = [8257,
21071,
8340,
13244,
25744,
19772,
751,
493,
1711,
15042,
10114,
10698,
28448,
14868,
23084,
31189,
22973,
10075,
29229,
21492,
3627,
13689,
8417,
20634,
29104]
findStrings(w: sss, queries: iii)
