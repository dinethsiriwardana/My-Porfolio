'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "9b818ca9511483c901bed1545384376c",
"index.html": "9cb81253865b893b08a8364a6bea7dd2",
"/": "9cb81253865b893b08a8364a6bea7dd2",
"main.dart.js": "54ff17528ca33f5aada2e575caa10c02",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
".github/workflows/copy_from_source_repo.yml": "c681c79ab1839ea85089627284c91f74",
"manifest.json": "e2b9103aaafaf8ed9f90576c9d9a1341",
".git/ORIG_HEAD": "7a40f7d64be4fbbd31854c36650a0383",
".git/config": "64a35f928cfb11cd9f75174da67f6e08",
".git/objects/95/d930b6d3c0049b36f3ff8e41cd16ea5b940acd": "5e3c957f56485e04c7d4f2f3912277b9",
".git/objects/92/60563127fd771ca06c1835c0de783ebbf9cf95": "8a37a281c2ffb7329e64f667fd56c760",
".git/objects/50/01322d175a7e064956b5ae9122821894e3f39d": "cb17b8af4dc16a4e6c892035830dc492",
".git/objects/68/f477a9309587c20fdba6f285e6a9da60b03eec": "ff0fa937f45d7ca22633c8b77b70d093",
".git/objects/57/77cb293a6553fb815f0ea4a209211519cf591c": "6cedc37233c8e39fdbf0169e48c7c90e",
".git/objects/57/aeacf2dc57fca760706e3ddb8e7e9ee1637ddc": "0b8908317fb8c2bfab55344b2e51419b",
".git/objects/3b/f72cd09337a9a12930a6a8afe865fa16baad0a": "7158d586013d75251ae08ae763d81a91",
".git/objects/03/c531a7a4eadfbb97e5434401927ee31890cf33": "fe6b24f60048b7f218835d95c2c650ae",
".git/objects/6a/59f4cf3a5f932bc21f4f0eca8f641b278b75f7": "1d46d7c0f0668fe7cb24a4cbcede4fc1",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/3c/79efba23131fdda7ca8ab0062a4cedb7868191": "3174e8d50a98f3d2eef52f24ede88311",
".git/objects/51/34e6402246228fb7f58ce8fe76727a61d99a62": "6b5e5b48febe40daec7062aecdc3b39f",
".git/objects/3d/d11af84ffe12a75e4fd5e7699c7478c0b6f38a": "22fcfd7379ca01e1eab3b14bb01b13d0",
".git/objects/3d/7ca28e0edd08a9e57301279cc3564f9d69c714": "8978cad79e29867414008c27580f0de1",
".git/objects/3d/0380a911e0b2ab5415689d4c89a69deddb0db2": "a680cdb1591d3856083c5478edd786c2",
".git/objects/3d/3efceda986c6cd7023788d1c89d3cc84285f3a": "c2cef88f178177908e7d97313a5bc401",
".git/objects/58/31a23dbce269a42c28047ab01df38f26bd7877": "92fdd6644dc1355765db5ffeb16ac940",
".git/objects/0b/85bcdb86bf9e9f9fda81b13cec9c9349d47d77": "77cbf4b6cc88e2471afd14a98ef2e0ed",
".git/objects/93/3eab642730284780ad0f331623ffdbc1f9405f": "05fd39111a37fafa220a36b01566fe78",
".git/objects/94/11c399ea8b04f1c1e0e8abdcc1dc89e885b460": "c49aad0508b6777ce0d801d5421a8a5d",
".git/objects/0e/aa52561bc08122741d3a87ad6b81af528b81c9": "66b87b983373cea5dce3ed9268cf6a4c",
".git/objects/60/082fedcc52935733c57c659da0451ac549b416": "c81027404f4483a214066cf684b39777",
".git/objects/5a/9cd71f447c36800c32545a0bc35b8b62d38726": "d5a7310e98d4757adea895d8a61cb3f6",
".git/objects/5a/93a4e01557d4c563fb4c37febe949e9c37bb4c": "81bcd432a6252accb6cfacf34ae1df6c",
".git/objects/b2/2fdb2d1fa6a3bced274617d58f6ab432bb0d8b": "1b405e4dfab487f51d41422d52600614",
".git/objects/b2/52dd1d89ee352a103d16f013c9ef0e82acf026": "1d7a8bab16888e59408c03c3cd628a58",
".git/objects/d9/a36bdeeac124fb98a09fb1503e57d5f4cd6c85": "913b28aa2e4cd3eb0d431c3ae93c3b05",
".git/objects/ac/4eb832febb75d7887d10f243a5c37e9f6bb6d8": "06686f070a801b159b31ede64560c00a",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/d7/974fe04fc3b43008fa6e9a8e00d1130634c11e": "aced70d0c274bc808291e33672c75e3f",
".git/objects/d0/52d7146aece7856e81f3299a0c56713878e8c6": "b5c4b24464ee9510e94f8b0edd632293",
".git/objects/d0/d1b6e95505e08cf7ef5e5dbf52c0e664ba0b1a": "a38480a0ba7b2ada814285d5a71c3af0",
".git/objects/df/852781b860a5231f64355e710bcfb4c07f8104": "bdbc5ca60bc3cf3ce5e05b2a74747273",
".git/objects/df/a254df308293bd478588b3373ced3af91fc238": "5e0df9885bfbf2b2401f9e6ce0be2616",
".git/objects/df/0a61fca481f0e80aaaec5b4c31d639b82eca91": "00991b9b71ae798414c9f961004cf8e7",
".git/objects/b4/2f44bbd453933fd1384ba13db614352ed0d5e2": "bb37a12488d705eb32366bbe6679974a",
".git/objects/a2/8a1be26aa8b8a09e47b71f6517eb8ad1498d4b": "d1a4aed1e8c9d65ca6becfc805e66c66",
".git/objects/bd/99186ac271a5b67f2fed9b40b3d7c53aa9382a": "4157e70a6323780ab5e9a19a88787b33",
".git/objects/d6/bbdb539e100ef76583353ce0e86204e901ff09": "da9bce9e68eac95a6261f0148570817e",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/ae/37803d1933c3979fd1b939ff61cc667b0b70dc": "f5c08c98e82ebd9034dbd78b64a292fa",
".git/objects/d8/63895c178f3f522a232bcec315f8cbbe317824": "00fd555f6655ef352733677be0b1d899",
".git/objects/ab/9a1eba2e650458111fb5fa695f7ac08501acae": "c98a3f88ed2af780522399ae75dbd1b5",
".git/objects/e5/7e2ebb89619e759722995dd9d506828ab86d86": "b1f2435d910f709169962e4d82f9374c",
".git/objects/f4/cc1e248908ea58a4f5be3744a8394c1de090b4": "4d8c882819eb583346f02c4aa7242b72",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/c0/326cfbf5917faa8e43967448eedc967057c424": "b5e9b5f18b120c5b6a4c6e6bfb55d9d7",
".git/objects/c9/10eb9f4c077ca2024eb893c29fa4b22fc732ff": "ad5327fd0b0b6111f7bed70e03a54f8d",
".git/objects/fd/df08750e201c69963e343c6f9d608391d9629f": "5bc7ca93931232812f6883a3c225016e",
".git/objects/fd/c27aa2bcef61c9902f23a58e8ba2890be0a2ef": "24a9d668ec85be47b671e2c1168cb736",
".git/objects/fd/49f6d67e8b7d866a9c55e2b86420033169ef81": "5ef29fcd8ddf4be9a98613390fe68c77",
".git/objects/fd/37651f4c9d341767f915ed885150b05876dd08": "d811ec30f4abeb6cb3fd2e9584f3e041",
".git/objects/f5/ab83de13db303b8c461f85c33c7cdeaa3d4260": "1c104e21c167bdcc70653ba9018e8f36",
".git/objects/cf/08eea0edc3ea659a023e2a0a0571dc21cf7faa": "7254fbca629dc72fcf81dce1df9c8f3f",
".git/objects/20/d87d117c31184ea7e3abbeb48bbc95a9f4424f": "c1dda5ef7e85559f8651cb33da3bce85",
".git/objects/20/7862401f1142a61944cb59a6b21a725be37033": "ebc7c8a06879e5bc6478adda8d40efe8",
".git/objects/27/76641bf3e0f153bd818fa4bf6d506aba51f59d": "a8d519bd2c8eb1a455c01fb04ac6566b",
".git/objects/4b/4ce42e30c45233dcdf04fe2e77c552710da6ea": "7cd8335b558b19b769ffdea1776a40dc",
".git/objects/pack/pack-1d93ad6044139ccf77d2e55b440e2e4f3b433076.idx": "46bc5aaa29b025aaa49a258a6d0b21e8",
".git/objects/pack/pack-1d93ad6044139ccf77d2e55b440e2e4f3b433076.pack": "9a89e5a7696e24053b3cfe0c925da4e7",
".git/objects/11/5b9f1289597d789db0499ce01defe312ff7c45": "998fad2ad60cd3a8c2476e374d6f77f3",
".git/objects/29/289533778cc698806a3c52c3a877a5a6f013d1": "d8c05ba4e4d86bdee6ba51ce5916e56f",
".git/objects/42/19d12e1c9218a8cc5f4c6960e1e3ca25beab7d": "3dfe1f5abe3d79f112d5b59a37d6fcce",
".git/objects/89/afb8f878071b6dd79347785ff8b7fdb5381e5e": "d82313be03cb0148c2646cf673e91244",
".git/objects/8a/72f499c8637359b46affe2936ce9fd512a1a34": "59e9e37a9ccf872b076d2240265affbe",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/19/6817c3c68a9336564d35a440ec24e543a4fbc6": "49d4b11883f9531cb0c8253f7e4f0ba1",
".git/objects/26/aeafc2762285ad08bb376563fdff76499de20e": "685b77a528f90d974f6771598a64fdc0",
".git/objects/4d/117e05403a4227a87b63c43adc893e1e00fa79": "1680f637185784decdfc653ec034cc74",
".git/objects/81/7fd03fec2e81f2ff9e4867154bc7598eb645da": "4faf628b2d99efd730d7c04cde8a66dc",
".git/objects/72/18c1150a7c7413fa20c1848ca599a92e25e984": "bbd8a65be89c58a0bdfa0867ad7137d5",
".git/objects/43/747e1b0e565ad62e83d719ae0f257550cd824b": "73df1a7a1fd87fce10527a18b787916b",
".git/objects/88/d0bbb96db2eaece90083fb6a5e88c9d8302a76": "a63cafe58b4223ebdc08237b492a8929",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/38/95daeea413be0d0f3e7cb40542f528889b7283": "198bbc1250aeda02a2cda6059d5a1010",
".git/objects/00/cad1ea85731d2cea571543f4e30a7e6abff720": "10964e75c03053b21b44a435b8f09436",
".git/objects/9a/a91c73e132594f85c0090572cd02acdebf2ad7": "d764e995cb10bf5b54dbd1e14dc75c35",
".git/objects/9a/7f22bf2117640f24f1c7efe5472fc51f0d9ab8": "883cfdcab0add66f8abded0ba8cba636",
".git/objects/5c/1d6509d4408e848cdf035ba1392287604088a0": "5d240771db280fde49a9f675d406e13e",
".git/objects/09/6ccf1de9295437631d77bb2fc598102d448214": "0ef640853c0cabb2096a5e8c270983ab",
".git/objects/5d/778ff268d0fefd306f187bb4bc83201dde95ca": "37b26d2982bd6faae029d066427969e6",
".git/objects/5d/6fcbd337b9ca82a789b7f496a4a9bb86f7c5fb": "db77e697fdbf43877a60e910aa023e5a",
".git/objects/31/fdda046d2c5442146190806269fead4ddb7fce": "095a2490106a1c6d45deccc88304912e",
".git/objects/62/a01d6826913d9efa140d2e9f4bc0f13918e607": "44ba2af6a4f05cb190463143170ae010",
".git/objects/62/b50dbe56489dafd75db123058cf5f5de4a034d": "de6d9a1c677459124440275ca1d55fbc",
".git/objects/3a/807126efa1b83c286d007bc3703d621cc91afe": "5c4ec9255a4ba0ae2262efb081458197",
".git/objects/37/7580cbf691d03aea79c63a3a251b1b48ac01f1": "c196d282a50e3c372b4445c6b8868297",
".git/objects/08/1f2f42c8c3a506e49895411de26e2ea38d04fe": "27ee3870327b9c723c972fc1cecdff1a",
".git/objects/08/b3c40a6a66168ae9eb3652bf034b66a684697b": "8db926fa8a83516bc3042f1912c5d3da",
".git/objects/6d/c07d41665c79e4ffaf2c192b260620b3784d0b": "978cad30cd65f76780d1e12bc7b0d5da",
".git/objects/01/b4eb0eeb48992ce48c05409e6d3eb7e226e606": "1e33a355f5c1da826876de4e5170d6cc",
".git/objects/39/cd9b77161114e297627237d5e28dd73669a9ed": "505437fa8433ee07a0d3b5b608bf2b32",
".git/objects/99/24f71b22574fd51646e43327fcd4802355ec9f": "04a6fadcc60820d02a525627d0ab9abf",
".git/objects/52/896f461139823daf687cc35421b4042e303fbc": "63a42eee682858c78a1735754a5479b4",
".git/objects/55/1ad22ebe4a2dc67a69726c31b7c13f67d23d9a": "8d4d98e5ff16ca64e285fe36a80aadce",
".git/objects/0f/5c096faa0a87a76c1a0d126552fbfb4c4e3ac8": "ca5de61aa60c8429545798a3dc9930c0",
".git/objects/bf/de87d91cd735e577ff9cdae2c09bb020109ae5": "abbc54b386dee8e022fa63f9083bfe67",
".git/objects/bf/a4f690cce5218a27d73a88396ee53ff8832714": "f12e818a5cef598bef71c0031479c3cb",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/a0/8f97628c171d3d3c1c5055df19caf9ca4f9943": "a3e77daacd33b7ee70d4591308a4840a",
".git/objects/a0/3c148073a1e3e1a6e524adcf3b2dca858e043e": "95d9d9f69104abe9a8b64bd0c9ddebc7",
".git/objects/a0/b0a6cdc4b1b653a033270e469cc36c9b89b645": "28c7bc4ac04280503b01a177b079af5c",
".git/objects/dd/0a25030b1e85b9055dbb1293e78e2df5fc6ea0": "a35f5b8b2f045f64b0e078480a4ca860",
".git/objects/b6/90075c8f83c85fa3a09daeb94d4c77d3dd1061": "3cd55ca47428c5654c9025709fd29937",
".git/objects/a9/11ceb8217c307edfabee531271419d110c8b93": "f03c7a1d7a7418b00f76c518584b0702",
".git/objects/d2/574b2266b0a43fd655819a6d3fa0e27688d105": "3de686b699c9600a7e3f55c69037d762",
".git/objects/d2/60aec8cda995787474dffd954fd38eebf7702e": "daaa23cd024f6699f4e7074ef7d5bd62",
".git/objects/aa/c414fcd5b3c34238b6d68b3105b7ba4d8a9865": "63070fbe4a44134dc73bafaa4077b49f",
".git/objects/af/edcd1f13be1fdd37c8280b958ec93b29d3bc29": "9d1f981c2740bc88aa98d86f1119a533",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b7/3427e40e04588c74e0742eedaf3832a6e5ca3f": "bc9ff1811e6c8e295fdb6f2f3efb13b2",
".git/objects/b0/973d460f199178a80f4e935495625b1abd3ad2": "42b64dfaddd34fc31ac7fd2091f29c11",
".git/objects/b0/8b8dc3930ba9c661648e49281204844f3b53fc": "7ea1c491e1771b69a807e711b729a09d",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/d5ae5959c785ab448f1947dba326ceba67c366": "09e0285a8cea7c9a135ebe752612a6fd",
".git/objects/b9/0efadfd3b29e71449fe720b0d503d3a71e78fc": "1e1acdc2ff3aebde051a6ce6c0c9315c",
".git/objects/a1/d5f63bf7af34172e9976cdbd52c0d824234efb": "2f0901ffd14fca6615e1ceb507278169",
".git/objects/ef/056f6e2fa11684f96055e745ef59037a23fc8f": "d96fa5388aa67d0e8c30a75a320c5c05",
".git/objects/c3/7492b3a3e3aada32c41307c514f542b2877cd8": "90299fcc4d620eb5e5cc1f2d4cb40c46",
".git/objects/cd/35d2f95e347abbcf40bebd20fb772f5618989a": "c0161804b34f6e2765250a219d7aa49e",
".git/objects/e6/9ec02317fb22265ace908111cb58e1f172645c": "c21f1561f3609c446eb721ca03e11049",
".git/objects/f9/5ab80554e989e7593489b2d191e5042ed4075a": "76e8a05c83b1a4ea7c807c2714c0a2be",
".git/objects/f0/755c445ecd4729bffeab7ca84250f6b8b9422f": "4607ba6effea84d7b2fcb200d2ec12c5",
".git/objects/e8/ad1198e724e003b8df2100eb5cd26732ffa32d": "3e7502e0684022652038585ce848eee3",
".git/objects/c5/d8a20ed2976817e5e9ace115b823228fb9deb1": "4399abdce4f3f62359974735abc29183",
".git/objects/c5/4d6f42d3492035641b3f65294165a03f701e26": "9123888e73207337760cd21ca261572c",
".git/objects/e9/c39dd690e50ef4751e75d791c6888c949f9e89": "67aced7c0520d97f3b357467ebd8acd9",
".git/objects/f1/cf972983ba3d6b73aaea21b440e4099ddb4add": "ff8fa8fc6fa2bd03ee4416288afdcfa8",
".git/objects/f1/5483dc7a3b134cf3aca948241687252fd36171": "2fb6f0d138a8c555f88d5e78b2123744",
".git/objects/cb/7f2618584cf618a5791f6812670047e30fec73": "72fc0536371ab897f8aa401cec76c6f9",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/46/670d5f9d86cbcb4194ffee5927f712b68db10f": "0ce7fd1422e04ade38f5614717ae4208",
".git/objects/79/a37f819f29bcc6eadcba725f11224b8571eafd": "36d584b08530e69e813d662e5e33b0ef",
".git/objects/2d/4c8ee11198ca6b6f8035322d34fb7cda17bffe": "deebac6424575e7cd8f38dfe0b796383",
".git/objects/83/8eb16929f6af150512572ae5164038c01df570": "7dd8480bc2903d5ed3493e2f04f60de7",
".git/objects/77/994057bc051b0eec4794baffb364f7f05bf4f8": "483155db50bcd8ad2d40a4cf33721969",
".git/objects/70/c2633cd6c07392ee5e1d7859e09cf31c190010": "ba35b1bfa0b9cca79af4c6a781867a57",
".git/objects/1e/bf993c04c08e17a0122730f8d7ce6e139c8bad": "eeb4f0d71f24758335fe1753273ad6c2",
".git/objects/84/16cd5b2e41efb7a24b3e605cde50ad6be5a7cf": "c78c608a76e8d704712682783030005e",
".git/objects/4a/0bf243dc508a796f298a4a5c1f85e9a6b0ac05": "ff58d2f369484142bde1439954e492bd",
".git/objects/4a/67e1cdeb61c47d5b9119e3052288a781387665": "13667000f065dc38d8aed51e1aa39459",
".git/objects/24/2a6fb1ac1b43d9297d489eb0e7fb1227843d92": "7425f8249517e537945194d94cc7df31",
".git/objects/1d/384f3748038966a5c7316223edf120dd5894dd": "a8d542276aa823dfefb8d26439e1077a",
".git/objects/76/1adfd95eb77d79bd452a9356861f48c86e5748": "cb8fd864b3fa4538727920058648f3b9",
".git/objects/82/219424412468c8b82ae4af8c3e6342b4cf6d55": "eafeda9c581abd1185747ee50b8435b9",
".git/objects/40/1ab84ee7f124d220a4078087279fdb147aedbb": "bd74b752426c1149fb99823cac8079ff",
".git/objects/2b/b172ac5a561b6b09650dd8506299f2dd43f476": "e5ba0a3028e31e9e6dacb82dd602dc17",
".git/objects/2b/0db32e80fa24c3f4cc269bff3660a2701d1673": "92e764b4cf17f89f9b81af7800c88710",
".git/objects/47/d8c2fcd8b508c48422b33f32c65d734babf915": "7cc34aba43743a648b9fe8a09a3a83c1",
".git/objects/47/c87b4d4a31759f5a09123f660b31be5ba92915": "3d5e9fba81944366113a43948fb19524",
".git/objects/7a/c9335002d25720e9b4746a7555282775a9d466": "1c86873b30ae58c52af7eb31fb65a682",
".git/objects/8e/7f4b338840099949781ab85496d7a67fae46f1": "7f2803c236e9e7d95ef6ed16a3a2bd13",
".git/objects/22/91af51233748caa6e7bbbc4409317a59c60105": "6ceb67b89c43f8e02dd463a5b1439b3d",
".git/objects/22/be53a0199336481cafc3fab2df4bb7b28eb760": "90c3d877bbebfd94e72382c5d1f380c7",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "68d9c327001a062dbc97a76435d9f9fb",
".git/logs/refs/heads/main": "6a3b812eeadf14a003d18aa96dc8b43a",
".git/logs/refs/remotes/origin/HEAD": "05293da1d633133c19d340bcb0c0a3b4",
".git/logs/refs/remotes/origin/main": "fad7dd19b1271ec31763dcdab5e3bdf5",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/main": "6946ab3ad775bdeeece9add14b449eae",
".git/refs/remotes/origin/HEAD": "98b16e0b650190870f1b40bc8f4aec4e",
".git/refs/remotes/origin/main": "6946ab3ad775bdeeece9add14b449eae",
".git/index": "70d8c2668e745e1610fc9bbcbc051ca4",
".git/packed-refs": "59d0138786373fe1f7bd8e12970ea1e7",
".git/COMMIT_EDITMSG": "c73f57a771f98f41ea0cbfd364899fee",
".git/FETCH_HEAD": "376d18047401468b1b37e6afe0511e00",
"assets/AssetManifest.json": "527d539f3f502797c200c128d84cb575",
"assets/NOTICES": "6eba96c4087edf73c892503c97b0dffe",
"assets/image/spotify.png": "cbc5d3efc65c0a0a1b56e8090b7c97ab",
"assets/image/programmingl/ts.png": "6a7076a88c69c0dc4df7e34f4e28e95e",
"assets/image/programmingl/flutter.png": "02e39f4351bd6b9348833c6050baeac7",
"assets/image/programmingl/sql.png": "971530b03f34df3ec1ad0965b8b421aa",
"assets/image/programmingl/firebase.png": "3602dbeac7b595e78e75ceda8f0e9002",
"assets/image/programmingl/java.png": "ba6f54079f9e1eb62eecf2a8dcdc20fd",
"assets/image/programmingl/py.png": "4210c51d71efe3554157962e3e0d6b3f",
"assets/image/programmingl/js.png": "86612ad814a169e9b6bbc392fb8159f9",
"assets/image/programmingl/mongo.png": "88c73735787aaed7ee3535beabaacbed",
"assets/image/programmingl/figma.png": "11bac102822cf4f8866bb9128649a727",
"assets/image/programmingl/bootstrap.png": "22bd18f9ee39c5d0427f7d52bf0d4436",
"assets/image/programmingl/jq.png": "e50cf7cd39810508459cf3e11916d840",
"assets/image/programmingl/node.png": "a292185b1bbba805838fe87db8f1b914",
"assets/image/programmingl/go.png": "4b63c88d72267f5d4af74af4c665f095",
"assets/image/programmingl/html.png": "3b821bec2a392accf56b7af2401c90a4",
"assets/image/programmingl/postman.png": "2ddf389f268e3a5f99f8c046200756d9",
"assets/image/programmingl/dotnet.png": "334ec5c9cfb8bed9de5520023096401e",
"assets/image/programmingl/slim.png": "d25a1e66a550ff7b3ff371779a243b71",
"assets/image/programmingl/php.png": "d0e7ac61ed03ba2591405682d0daf909",
"assets/image/programmingl/css.png": "cf865319eb2461f18b8266555909a5bc",
"assets/image/programmingl/dart.png": "80e0cfaf4e39a2700665ae5762d76645",
"assets/image/programmingl/laravel.png": "a7f495342a5caf3c2d0ca8a522a56d25",
"assets/image/in.png": "0f0892af581ab30201a9e45136ea9102",
"assets/image/fb.png": "eaabfd90dba13850a53e92be8ac3fc1e",
"assets/image/github.jpg": "2ab3e9b5c4c97f1b0857b07629bb9ce2",
"assets/image/bgm.jpg": "44ea70e5cfac465c1f6a75f7a10a9c62",
"assets/image/li.png": "33ad08d7b7e1b56c5e124df35593e6cd",
"assets/image/wa.png": "35a98ecdefeb8c42dbe31f35cae1ce97",
"assets/image/my.png": "71c9b1a08900bd1039c2a120becd93e1",
"assets/image/chat.png": "15f2696a43688843161336c4ac6a7f45",
"assets/image/bg.jpg": "1dfa1280beb56fb9759ea6ac6e26f788",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/packages/flutter_chess_board/images/green_board.png": "ce9ae5c533ebe93bee85092938f15d19",
"assets/packages/flutter_chess_board/images/brown_board.png": "991f16fa89ceaf98eb79ab8084253b85",
"assets/packages/flutter_chess_board/images/chess_board.png": "14e7651575d4b7667b2da76091e957a3",
"assets/packages/flutter_chess_board/images/2.0x/green_board.png": "c13a78b15c2c047199e4c5354b38e4d0",
"assets/packages/flutter_chess_board/images/2.0x/brown_board.png": "a2e272a369e1a8b804820c79e370f266",
"assets/packages/flutter_chess_board/images/2.0x/orange_board.png": "ad1ce906dd598908c1c68a32d3eacf59",
"assets/packages/flutter_chess_board/images/2.0x/dark_brown_board.png": "2e7a428512da68aa9fd8dfcc9924c172",
"assets/packages/flutter_chess_board/images/3.0x/green_board.png": "dab3af27f76d27dfa2a38e301f2c6683",
"assets/packages/flutter_chess_board/images/3.0x/brown_board.png": "b403298eb7e7f28475e372946699bc09",
"assets/packages/flutter_chess_board/images/3.0x/orange_board.png": "92e5ba21006b61e945e9da086c98940d",
"assets/packages/flutter_chess_board/images/3.0x/dark_brown_board.png": "b488dc862a67c699d0ed82b3d2bcfd99",
"assets/packages/flutter_chess_board/images/orange_board.png": "6b7c6c161c0943a6be5d060392a48416",
"assets/packages/flutter_chess_board/images/dark_brown_board.png": "c8402900184332a76a0d89d30d231fd3",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "583ceafa0f55b4343d72594c3eeac52d",
"assets/fonts/MaterialIcons-Regular.otf": "62ec8220af1fb03e1c20cfa38781e17e",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
