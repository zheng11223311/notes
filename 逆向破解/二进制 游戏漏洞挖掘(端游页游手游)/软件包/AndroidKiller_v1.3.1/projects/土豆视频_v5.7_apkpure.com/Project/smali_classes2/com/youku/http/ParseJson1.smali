.class public Lcom/youku/http/ParseJson1;
.super Ljava/lang/Object;
.source "ParseJson1.java"


# instance fields
.field private channel:Lcom/youku/vo/Channel;

.field protected jsonObject:Lorg/json/JSONObject;

.field private jsonString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/youku/http/ParseJson1;->jsonString:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/youku/vo/Channel;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "channel"    # Lcom/youku/vo/Channel;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/youku/http/ParseJson1;->channel:Lcom/youku/vo/Channel;

    .line 51
    iput-object p1, p0, Lcom/youku/http/ParseJson1;->jsonString:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private cleanPosterTrash()V
    .locals 11

    .prologue
    .line 327
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v8, "trash":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v9, Lcom/tudou/android/Youku;->DIRECTORY_PICTURES:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 329
    .local v7, "pics":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v9, Lcom/tudou/android/Youku;->POSTER_IMAGE_COUNT:I

    if-ge v2, v9, :cond_3

    .line 330
    const/4 v3, 0x0

    .line 331
    .local v3, "isContainInPoster":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    sget v9, Lcom/tudou/android/Youku;->POSTER_IMAGE_COUNT:I

    if-ge v4, v9, :cond_1

    .line 332
    sget-object v9, Lcom/tudou/android/Youku;->poster:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/Poster;

    .line 333
    .local v5, "p":Lcom/youku/vo/Poster;
    invoke-static {v5}, Lcom/youku/http/ParseJson1;->getPosterImgUrlTrait(Lcom/youku/vo/Poster;)Ljava/lang/String;

    move-result-object v6

    .line 334
    .local v6, "pic_name":Ljava/lang/String;
    array-length v9, v7

    if-le v9, v2, :cond_0

    aget-object v9, v7, v2

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 335
    const/4 v3, 0x1

    .line 331
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 338
    .end local v5    # "p":Lcom/youku/vo/Poster;
    .end local v6    # "pic_name":Ljava/lang/String;
    :cond_1
    array-length v9, v7

    if-le v9, v2, :cond_2

    if-nez v3, :cond_2

    .line 339
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/tudou/android/Youku;->DIRECTORY_PICTURES:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/tudou/android/Youku;->DIRECTORY_PICTURES:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    .end local v3    # "isContainInPoster":Z
    .end local v4    # "j":I
    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 344
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 345
    .local v1, "filePath":Ljava/lang/String;
    const-string v9, "apkDownload"

    invoke-virtual {v1, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 343
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 348
    :cond_4
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 351
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v7    # "pics":[Ljava/lang/String;
    .end local v8    # "trash":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "ParseJson.cleanPosterTrash()"

    invoke-static {v9, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 350
    .restart local v2    # "i":I
    .restart local v7    # "pics":[Ljava/lang/String;
    .restart local v8    # "trash":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static getPosterImgUrlTrait(Lcom/youku/vo/Poster;)Ljava/lang/String;
    .locals 4
    .param p0, "p"    # Lcom/youku/vo/Poster;

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/youku/vo/Poster;->vid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/vo/Poster;->small_img:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/vo/Poster;->small_img:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sVV"    # Ljava/lang/String;

    .prologue
    .line 317
    const-string v0, "\u64ad\u653e:0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-string p1, ""

    .line 320
    .end local p1    # "sVV":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public isSub()Z
    .locals 3

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 371
    .local v0, "isSub":Z
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/youku/http/ParseJson1;->jsonString:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/youku/http/ParseJson1;->jsonObject:Lorg/json/JSONObject;

    .line 372
    iget-object v1, p0, Lcom/youku/http/ParseJson1;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "is_rec"

    invoke-static {v1, v2}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 376
    :goto_0
    return v0

    .line 372
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public parseHome1()Z
    .locals 34

    .prologue
    .line 60
    :try_start_0
    new-instance v32, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson1;->jsonString:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/http/ParseJson1;->jsonObject:Lorg/json/JSONObject;

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson1;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v32, v0

    const-string v33, "banner"

    invoke-virtual/range {v32 .. v33}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 64
    .local v4, "banners":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v32

    sput v32, Lcom/tudou/android/Youku;->POSTER_IMAGE_COUNT:I

    .line 65
    sget-object v32, Lcom/tudou/android/Youku;->poster:Ljava/util/ArrayList;

    invoke-static/range {v32 .. v32}, Lcom/tudou/android/TudouApi;->clearPostList(Ljava/util/ArrayList;)V

    .line 66
    const/16 v21, 0x0

    .local v21, "k":I
    :goto_0
    sget v32, Lcom/tudou/android/Youku;->POSTER_IMAGE_COUNT:I

    move/from16 v0, v21

    move/from16 v1, v32

    if-ge v0, v1, :cond_1

    .line 67
    move/from16 v0, v21

    invoke-static {v4, v0}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 68
    .local v3, "bannerObject":Lorg/json/JSONObject;
    new-instance v24, Lcom/youku/vo/Poster;

    invoke-direct/range {v24 .. v24}, Lcom/youku/vo/Poster;-><init>()V

    .line 69
    .local v24, "poster":Lcom/youku/vo/Poster;
    const-string v32, "iid"

    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/youku/vo/Poster;->vid:Ljava/lang/String;

    .line 70
    const-string v32, "big_img"

    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/youku/vo/Poster;->small_img:Ljava/lang/String;

    .line 71
    const-string v32, "title"

    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/youku/vo/Poster;->title:Ljava/lang/String;

    .line 72
    const-string v32, "big_img"

    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/youku/vo/Poster;->big_img:Ljava/lang/String;

    .line 73
    const-string v32, "plid"

    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/youku/vo/Poster;->playlist_code:Ljava/lang/String;

    .line 74
    const-string v32, "type"

    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/youku/vo/Poster;->setType(Ljava/lang/String;)V

    .line 75
    const-string v32, "aid"

    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/youku/vo/Poster;->tid:Ljava/lang/String;

    .line 76
    const-string v32, "url"

    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/youku/vo/Poster;->url:Ljava/lang/String;

    .line 77
    const-string v32, "short_desc"

    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/youku/vo/Poster;->desc:Ljava/lang/String;

    .line 78
    const-string v32, "short_description"

    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/youku/vo/Poster;->short_description:Ljava/lang/String;

    .line 79
    const-string v32, "url_include_ids_count"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v3, v0, v1}, Lcom/youku/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Lcom/youku/vo/Poster;->url_include_ids_count:I

    .line 81
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/youku/vo/Poster;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/youku/vo/Poster;->setTargetType(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {v24 .. v24}, Lcom/youku/vo/Poster;->setCurrentType()V

    .line 83
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/youku/vo/Poster;->videotype:Lcom/tudou/android/Youku$Type;

    move-object/from16 v32, v0

    sget-object v33, Lcom/tudou/android/Youku$Type;->GAME:Lcom/tudou/android/Youku$Type;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 84
    const-string v32, "game_information"

    move-object/from16 v0, v32

    invoke-static {v3, v0}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 86
    .local v12, "game_information":Lorg/json/JSONObject;
    if-eqz v12, :cond_0

    .line 87
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v32

    const-class v33, Lcom/youku/vo/PosterGameInfomation;

    invoke-static/range {v32 .. v33}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/youku/vo/PosterGameInfomation;

    .line 89
    .local v15, "infomation":Lcom/youku/vo/PosterGameInfomation;
    move-object/from16 v0, v24

    iput-object v15, v0, Lcom/youku/vo/Poster;->game_information:Lcom/youku/vo/PosterGameInfomation;

    .line 92
    .end local v12    # "game_information":Lorg/json/JSONObject;
    .end local v15    # "infomation":Lcom/youku/vo/PosterGameInfomation;
    :cond_0
    sget-object v32, Lcom/tudou/android/Youku;->poster:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v23

    .line 94
    .local v23, "loader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/youku/vo/Poster;->small_img:Ljava/lang/String;

    move-object/from16 v32, v0

    new-instance v33, Lcom/youku/http/ParseJson1$1;

    invoke-direct/range {v33 .. v34}, Lcom/youku/http/ParseJson1$1;-><init>(Lcom/youku/http/ParseJson1;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 66
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 151
    .end local v3    # "bannerObject":Lorg/json/JSONObject;
    .end local v23    # "loader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    .end local v24    # "poster":Lcom/youku/vo/Poster;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson1;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v32, v0

    const-string v33, "boxes"

    invoke-virtual/range {v32 .. v33}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 152
    .local v9, "datalist":Lorg/json/JSONArray;
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    sput-object v32, Lcom/tudou/android/Youku;->homeChannels:Ljava/util/List;

    .line 153
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    sput-object v32, Lcom/tudou/android/Youku;->videoInfoItems:Ljava/util/List;

    .line 154
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v32

    move/from16 v0, v32

    if-ge v13, v0, :cond_16

    .line 155
    invoke-static {v9, v13}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v7

    .line 156
    .local v7, "dataObject":Lorg/json/JSONObject;
    const-string v32, "is_podcast"

    move-object/from16 v0, v32

    invoke-static {v7, v0}, Lcom/youku/util/JsonUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v16

    .line 158
    .local v16, "is_podcast_channel":Z
    const-string v32, "title"

    move-object/from16 v0, v32

    invoke-static {v7, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 159
    .local v27, "title":Ljava/lang/String;
    const-string v32, "display_type"

    move-object/from16 v0, v32

    invoke-static {v7, v0}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v10

    .line 160
    .local v10, "display_type":I
    const-string v32, "cid"

    move-object/from16 v0, v32

    invoke-static {v7, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, "cid":Ljava/lang/String;
    const-string v32, "sub_title"

    move-object/from16 v0, v32

    invoke-static {v7, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 162
    .local v26, "sub_title":Ljava/lang/String;
    const-string v32, "index_page_channel_icon"

    move-object/from16 v0, v32

    invoke-static {v7, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 163
    .local v14, "index_page_channel_icon":Ljava/lang/String;
    const-string v32, "redirect_type"

    move-object/from16 v0, v32

    invoke-static {v7, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 164
    .local v25, "redirect_type":Ljava/lang/String;
    const-string v32, "url_for_more_link"

    move-object/from16 v0, v32

    invoke-static {v7, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 171
    .local v28, "url_for_more_link":Ljava/lang/String;
    new-instance v5, Lcom/youku/vo/HomeChannel;

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Lcom/youku/vo/HomeChannel;-><init>(Ljava/lang/String;)V

    .line 174
    .local v5, "channel":Lcom/youku/vo/HomeChannel;
    move/from16 v0, v16

    iput-boolean v0, v5, Lcom/youku/vo/HomeChannel;->isPodcastChannel:Z

    .line 175
    iput v10, v5, Lcom/youku/vo/HomeChannel;->display_type:I

    .line 176
    iput-object v6, v5, Lcom/youku/vo/HomeChannel;->channelCid:Ljava/lang/String;

    .line 178
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_2

    const/16 v32, 0x1

    :goto_2
    move/from16 v0, v32

    iput-boolean v0, v5, Lcom/youku/vo/HomeChannel;->hasMore:Z

    .line 179
    move-object/from16 v0, v26

    iput-object v0, v5, Lcom/youku/vo/HomeChannel;->sub_title:Ljava/lang/String;

    .line 180
    iput-object v14, v5, Lcom/youku/vo/HomeChannel;->index_page_channel_icon:Ljava/lang/String;

    .line 181
    move-object/from16 v0, v25

    iput-object v0, v5, Lcom/youku/vo/HomeChannel;->redirect_type:Ljava/lang/String;

    .line 182
    move-object/from16 v0, v28

    iput-object v0, v5, Lcom/youku/vo/HomeChannel;->url_for_more_link:Ljava/lang/String;

    .line 184
    const-string v32, "videos"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 185
    .local v8, "dataResult":Lorg/json/JSONArray;
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v32

    move/from16 v0, v20

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    .line 186
    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    .line 187
    .local v31, "videoObject":Lorg/json/JSONObject;
    new-instance v29, Lcom/youku/vo/VideoInfo;

    invoke-direct/range {v29 .. v29}, Lcom/youku/vo/VideoInfo;-><init>()V

    .line 188
    .local v29, "vi":Lcom/youku/vo/VideoInfo;
    const-string v32, "iid"

    invoke-static/range {v31 .. v32}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    .line 189
    const-string v32, "big_img"

    invoke-static/range {v31 .. v32}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->big_img:Ljava/lang/String;

    .line 190
    const-string v32, "pv"

    invoke-static/range {v31 .. v32}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/youku/http/ParseJson1;->getVv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->vv:Ljava/lang/String;

    .line 191
    const-string v32, "owner_nick"

    invoke-static/range {v31 .. v32}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->owner_nickname:Ljava/lang/String;

    .line 192
    const-string v32, "title"

    invoke-static/range {v31 .. v32}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->title:Ljava/lang/String;

    .line 193
    const-string v32, "short_desc"

    invoke-static/range {v31 .. v32}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->short_desc:Ljava/lang/String;

    .line 194
    const-string v32, "small_img"

    invoke-static/range {v31 .. v32}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->small_img:Ljava/lang/String;

    .line 195
    const-string v32, "stripe_b_r"

    invoke-static/range {v31 .. v32}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->stripe_top:Ljava/lang/String;

    .line 196
    const-string v32, "plid"

    invoke-static/range {v31 .. v32}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->playlist_code:Ljava/lang/String;

    .line 197
    const-string v32, "aid"

    invoke-static/range {v31 .. v32}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->showid:Ljava/lang/String;

    .line 198
    const-string v32, "corner_image"

    invoke-static/range {v31 .. v32}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->corner_image:Ljava/lang/String;

    .line 203
    const-string v32, "type"

    invoke-static/range {v31 .. v32}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/youku/vo/VideoInfo;->setType(Ljava/lang/String;)V

    .line 211
    iget-object v0, v5, Lcom/youku/vo/HomeChannel;->videoList:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 178
    .end local v8    # "dataResult":Lorg/json/JSONArray;
    .end local v20    # "j":I
    .end local v29    # "vi":Lcom/youku/vo/VideoInfo;
    .end local v31    # "videoObject":Lorg/json/JSONObject;
    :cond_2
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 213
    .restart local v8    # "dataResult":Lorg/json/JSONArray;
    .restart local v20    # "j":I
    :cond_3
    iget-object v0, v5, Lcom/youku/vo/HomeChannel;->videoList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v22

    .line 214
    .local v22, "len":I
    if-nez v22, :cond_4

    .line 154
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 217
    :cond_4
    iget v0, v5, Lcom/youku/vo/HomeChannel;->display_type:I

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_7

    .line 218
    new-instance v18, Lcom/youku/vo/VideoInfoItem;

    invoke-direct/range {v18 .. v18}, Lcom/youku/vo/VideoInfoItem;-><init>()V

    .line 219
    .local v18, "itemBlank":Lcom/youku/vo/VideoInfoItem;
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v18

    iput v0, v1, Lcom/youku/vo/VideoInfoItem;->itemType:I

    .line 220
    iget-object v0, v5, Lcom/youku/vo/HomeChannel;->channelName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/youku/vo/VideoInfoItem;->channelName:Ljava/lang/String;

    .line 221
    iget-object v0, v5, Lcom/youku/vo/HomeChannel;->channelCid:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/youku/vo/VideoInfoItem;->channelCid:Ljava/lang/String;

    .line 222
    iget-boolean v0, v5, Lcom/youku/vo/HomeChannel;->hasMore:Z

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/youku/vo/VideoInfoItem;->hasMore:Z

    .line 223
    iget-object v0, v5, Lcom/youku/vo/HomeChannel;->sub_title:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/youku/vo/VideoInfoItem;->sub_title:Ljava/lang/String;

    .line 224
    iget-object v0, v5, Lcom/youku/vo/HomeChannel;->index_page_channel_icon:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/youku/vo/VideoInfoItem;->index_page_channel_icon:Ljava/lang/String;

    .line 225
    iget-object v0, v5, Lcom/youku/vo/HomeChannel;->redirect_type:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/youku/vo/VideoInfoItem;->redirect_type:Ljava/lang/String;

    .line 226
    iget-object v0, v5, Lcom/youku/vo/HomeChannel;->url_for_more_link:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/youku/vo/VideoInfoItem;->url_for_more_link:Ljava/lang/String;

    .line 227
    sget-object v32, Lcom/tudou/android/Youku;->videoInfoItems:Ljava/util/List;

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v18    # "itemBlank":Lcom/youku/vo/VideoInfoItem;
    :goto_5
    iget v0, v5, Lcom/youku/vo/HomeChannel;->display_type:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    iget v0, v5, Lcom/youku/vo/HomeChannel;->display_type:I

    move/from16 v32, v0

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_5

    iget v0, v5, Lcom/youku/vo/HomeChannel;->display_type:I

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_c

    .line 236
    :cond_5
    rem-int/lit8 v32, v22, 0x2

    sub-int v22, v22, v32

    .line 238
    const/16 v30, 0x0

    .line 239
    .local v30, "videoInfoItem":Lcom/youku/vo/VideoInfoItem;
    const/16 v20, 0x0

    :goto_6
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    .line 240
    if-nez v30, :cond_6

    .line 241
    new-instance v30, Lcom/youku/vo/VideoInfoItem;

    .end local v30    # "videoInfoItem":Lcom/youku/vo/VideoInfoItem;
    invoke-direct/range {v30 .. v30}, Lcom/youku/vo/VideoInfoItem;-><init>()V

    .line 242
    .restart local v30    # "videoInfoItem":Lcom/youku/vo/VideoInfoItem;
    iget v0, v5, Lcom/youku/vo/HomeChannel;->display_type:I

    move/from16 v32, v0

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_8

    .line 243
    const/16 v32, 0x4

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput v0, v1, Lcom/youku/vo/VideoInfoItem;->itemType:I

    .line 249
    :goto_7
    iget-object v0, v5, Lcom/youku/vo/HomeChannel;->channelName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/youku/vo/VideoInfoItem;->channelName:Ljava/lang/String;

    .line 251
    :cond_6
    rem-int/lit8 v32, v20, 0x2

    if-nez v32, :cond_a

    .line 252
    iget-object v0, v5, Lcom/youku/vo/HomeChannel;->videoList:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/youku/vo/VideoInfo;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/youku/vo/VideoInfoItem;->videoInfoItem1:Lcom/youku/vo/VideoInfo;

    .line 253
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/youku/vo/VideoInfoItem;->videoInfoItem1:Lcom/youku/vo/VideoInfo;

    move-object/from16 v32, v0

    move/from16 v0, v20

    move-object/from16 v1, v32

    iput v0, v1, Lcom/youku/vo/VideoInfo;->location:I

    .line 239
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 229
    .end local v30    # "videoInfoItem":Lcom/youku/vo/VideoInfoItem;
    :cond_7
    new-instance v19, Lcom/youku/vo/VideoInfoItem;

    invoke-direct/range {v19 .. v19}, Lcom/youku/vo/VideoInfoItem;-><init>()V

    .line 230
    .local v19, "itemNoTitle":Lcom/youku/vo/VideoInfoItem;
    const/16 v32, 0x5

    move/from16 v0, v32

    move-object/from16 v1, v19

    iput v0, v1, Lcom/youku/vo/VideoInfoItem;->itemType:I

    .line 231
    sget-object v32, Lcom/tudou/android/Youku;->videoInfoItems:Ljava/util/List;

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 309
    .end local v4    # "banners":Lorg/json/JSONArray;
    .end local v5    # "channel":Lcom/youku/vo/HomeChannel;
    .end local v6    # "cid":Ljava/lang/String;
    .end local v7    # "dataObject":Lorg/json/JSONObject;
    .end local v8    # "dataResult":Lorg/json/JSONArray;
    .end local v9    # "datalist":Lorg/json/JSONArray;
    .end local v10    # "display_type":I
    .end local v13    # "i":I
    .end local v14    # "index_page_channel_icon":Ljava/lang/String;
    .end local v16    # "is_podcast_channel":Z
    .end local v19    # "itemNoTitle":Lcom/youku/vo/VideoInfoItem;
    .end local v20    # "j":I
    .end local v21    # "k":I
    .end local v22    # "len":I
    .end local v25    # "redirect_type":Ljava/lang/String;
    .end local v26    # "sub_title":Ljava/lang/String;
    .end local v27    # "title":Ljava/lang/String;
    .end local v28    # "url_for_more_link":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 310
    .local v11, "e":Lorg/json/JSONException;
    const-string v32, "ParseJson.parseHome()"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson1;->jsonString:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v32, "ParseJson.parseHome()"

    move-object/from16 v0, v32

    invoke-static {v0, v11}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    const/16 v32, 0x0

    .end local v11    # "e":Lorg/json/JSONException;
    :goto_9
    return v32

    .line 244
    .restart local v4    # "banners":Lorg/json/JSONArray;
    .restart local v5    # "channel":Lcom/youku/vo/HomeChannel;
    .restart local v6    # "cid":Ljava/lang/String;
    .restart local v7    # "dataObject":Lorg/json/JSONObject;
    .restart local v8    # "dataResult":Lorg/json/JSONArray;
    .restart local v9    # "datalist":Lorg/json/JSONArray;
    .restart local v10    # "display_type":I
    .restart local v13    # "i":I
    .restart local v14    # "index_page_channel_icon":Ljava/lang/String;
    .restart local v16    # "is_podcast_channel":Z
    .restart local v20    # "j":I
    .restart local v21    # "k":I
    .restart local v22    # "len":I
    .restart local v25    # "redirect_type":Ljava/lang/String;
    .restart local v26    # "sub_title":Ljava/lang/String;
    .restart local v27    # "title":Ljava/lang/String;
    .restart local v28    # "url_for_more_link":Ljava/lang/String;
    .restart local v30    # "videoInfoItem":Lcom/youku/vo/VideoInfoItem;
    :cond_8
    :try_start_1
    iget v0, v5, Lcom/youku/vo/HomeChannel;->display_type:I

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 245
    const/16 v32, 0x6

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput v0, v1, Lcom/youku/vo/VideoInfoItem;->itemType:I

    goto :goto_7

    .line 247
    :cond_9
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput v0, v1, Lcom/youku/vo/VideoInfoItem;->itemType:I

    goto :goto_7

    .line 255
    :cond_a
    iget-object v0, v5, Lcom/youku/vo/HomeChannel;->videoList:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/youku/vo/VideoInfo;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/youku/vo/VideoInfoItem;->videoInfoItem2:Lcom/youku/vo/VideoInfo;

    .line 256
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/youku/vo/VideoInfoItem;->videoInfoItem2:Lcom/youku/vo/VideoInfo;

    move-object/from16 v32, v0

    move/from16 v0, v20

    move-object/from16 v1, v32

    iput v0, v1, Lcom/youku/vo/VideoInfo;->location:I

    .line 257
    add-int/lit8 v32, v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    .line 258
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/youku/vo/VideoInfoItem;->isLastItem:Z

    .line 260
    :cond_b
    sget-object v32, Lcom/tudou/android/Youku;->videoInfoItems:Ljava/util/List;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    const/16 v30, 0x0

    goto/16 :goto_8

    .line 266
    .end local v30    # "videoInfoItem":Lcom/youku/vo/VideoInfoItem;
    :cond_c
    rem-int/lit8 v32, v22, 0x3

    sub-int v22, v22, v32

    .line 267
    const/16 v30, 0x0

    .line 268
    .restart local v30    # "videoInfoItem":Lcom/youku/vo/VideoInfoItem;
    const/16 v20, 0x0

    :goto_a
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    .line 269
    if-nez v30, :cond_f

    .line 270
    new-instance v30, Lcom/youku/vo/VideoInfoItem;

    .end local v30    # "videoInfoItem":Lcom/youku/vo/VideoInfoItem;
    invoke-direct/range {v30 .. v30}, Lcom/youku/vo/VideoInfoItem;-><init>()V

    .line 271
    .restart local v30    # "videoInfoItem":Lcom/youku/vo/VideoInfoItem;
    iget v0, v5, Lcom/youku/vo/HomeChannel;->display_type:I

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    .line 272
    sget-object v32, Lcom/tudou/android/Youku;->videoInfoItems:Ljava/util/List;

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_e

    .line 273
    sget-object v32, Lcom/tudou/android/Youku;->videoInfoItems:Ljava/util/List;

    sget-object v33, Lcom/tudou/android/Youku;->videoInfoItems:Ljava/util/List;

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v33

    add-int/lit8 v33, v33, -0x1

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/youku/vo/VideoInfoItem;

    .line 275
    .local v17, "item":Lcom/youku/vo/VideoInfoItem;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/youku/vo/VideoInfoItem;->itemType:I

    move/from16 v32, v0

    if-eqz v32, :cond_d

    move-object/from16 v0, v17

    iget v0, v0, Lcom/youku/vo/VideoInfoItem;->itemType:I

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_10

    .line 276
    :cond_d
    const/16 v32, 0x3

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput v0, v1, Lcom/youku/vo/VideoInfoItem;->itemType:I

    .line 285
    .end local v17    # "item":Lcom/youku/vo/VideoInfoItem;
    :cond_e
    :goto_b
    iget-object v0, v5, Lcom/youku/vo/HomeChannel;->channelName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/youku/vo/VideoInfoItem;->channelName:Ljava/lang/String;

    .line 287
    :cond_f
    rem-int/lit8 v32, v20, 0x3

    if-nez v32, :cond_12

    .line 288
    iget-object v0, v5, Lcom/youku/vo/HomeChannel;->videoList:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/youku/vo/VideoInfo;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/youku/vo/VideoInfoItem;->videoInfoItem1:Lcom/youku/vo/VideoInfo;

    .line 289
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/youku/vo/VideoInfoItem;->videoInfoItem1:Lcom/youku/vo/VideoInfo;

    move-object/from16 v32, v0

    move/from16 v0, v20

    move-object/from16 v1, v32

    iput v0, v1, Lcom/youku/vo/VideoInfo;->location:I

    .line 268
    :goto_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 278
    .restart local v17    # "item":Lcom/youku/vo/VideoInfoItem;
    :cond_10
    const/16 v32, 0x2

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput v0, v1, Lcom/youku/vo/VideoInfoItem;->itemType:I

    goto :goto_b

    .line 283
    .end local v17    # "item":Lcom/youku/vo/VideoInfoItem;
    :cond_11
    const/16 v32, 0x2

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput v0, v1, Lcom/youku/vo/VideoInfoItem;->itemType:I

    goto :goto_b

    .line 290
    :cond_12
    rem-int/lit8 v32, v20, 0x3

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_13

    .line 291
    iget-object v0, v5, Lcom/youku/vo/HomeChannel;->videoList:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/youku/vo/VideoInfo;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/youku/vo/VideoInfoItem;->videoInfoItem2:Lcom/youku/vo/VideoInfo;

    .line 292
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/youku/vo/VideoInfoItem;->videoInfoItem2:Lcom/youku/vo/VideoInfo;

    move-object/from16 v32, v0

    move/from16 v0, v20

    move-object/from16 v1, v32

    iput v0, v1, Lcom/youku/vo/VideoInfo;->location:I

    goto :goto_c

    .line 294
    :cond_13
    iget-object v0, v5, Lcom/youku/vo/HomeChannel;->videoList:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/youku/vo/VideoInfo;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/youku/vo/VideoInfoItem;->videoInfoItem3:Lcom/youku/vo/VideoInfo;

    .line 295
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/youku/vo/VideoInfoItem;->videoInfoItem3:Lcom/youku/vo/VideoInfo;

    move-object/from16 v32, v0

    move/from16 v0, v20

    move-object/from16 v1, v32

    iput v0, v1, Lcom/youku/vo/VideoInfo;->location:I

    .line 296
    add-int/lit8 v32, v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v32

    if-ne v0, v1, :cond_14

    .line 297
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/youku/vo/VideoInfoItem;->isLastItem:Z

    .line 299
    :cond_14
    sget-object v32, Lcom/tudou/android/Youku;->videoInfoItems:Ljava/util/List;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    const/16 v30, 0x0

    goto :goto_c

    .line 306
    :cond_15
    sget-object v32, Lcom/tudou/android/Youku;->homeChannels:Ljava/util/List;

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 308
    .end local v5    # "channel":Lcom/youku/vo/HomeChannel;
    .end local v6    # "cid":Ljava/lang/String;
    .end local v7    # "dataObject":Lorg/json/JSONObject;
    .end local v8    # "dataResult":Lorg/json/JSONArray;
    .end local v10    # "display_type":I
    .end local v14    # "index_page_channel_icon":Ljava/lang/String;
    .end local v16    # "is_podcast_channel":Z
    .end local v20    # "j":I
    .end local v22    # "len":I
    .end local v25    # "redirect_type":Ljava/lang/String;
    .end local v26    # "sub_title":Ljava/lang/String;
    .end local v27    # "title":Ljava/lang/String;
    .end local v28    # "url_for_more_link":Ljava/lang/String;
    .end local v30    # "videoInfoItem":Lcom/youku/vo/VideoInfoItem;
    :cond_16
    const/16 v32, 0x1

    goto/16 :goto_9
.end method

.method public parseSubscrbeBean()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/SubscribeBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v5, "subscribeBeans":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/SubscribeBean;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/youku/http/ParseJson1;->jsonString:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/youku/http/ParseJson1;->jsonObject:Lorg/json/JSONObject;

    .line 385
    iget-object v6, p0, Lcom/youku/http/ParseJson1;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "data"

    invoke-static {v6, v7}, Lcom/youku/util/JsonUtils;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 386
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 399
    .end local v0    # "array":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-object v5

    .line 389
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 390
    invoke-static {v0, v2}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    .line 391
    .local v3, "subObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/youku/vo/SubscribeBean;

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/SubscribeBean;

    .line 393
    .local v4, "subscribeBean":Lcom/youku/vo/SubscribeBean;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 396
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "subObject":Lorg/json/JSONObject;
    .end local v4    # "subscribeBean":Lcom/youku/vo/SubscribeBean;
    :catch_0
    move-exception v1

    .line 397
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public parseUnSubBean()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/UnSubBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v5, "unSubBeans":Ljava/util/List;, "Ljava/util/List<Lcom/youku/vo/UnSubBean;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/youku/http/ParseJson1;->jsonString:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/youku/http/ParseJson1;->jsonObject:Lorg/json/JSONObject;

    .line 407
    iget-object v6, p0, Lcom/youku/http/ParseJson1;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "results"

    invoke-static {v6, v7}, Lcom/youku/util/JsonUtils;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 408
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 409
    invoke-static {v0, v2}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 410
    .local v4, "subObject":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/youku/vo/UnSubBean;

    invoke-static {v6, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/UnSubBean;

    .line 412
    .local v3, "subAlreadyBean":Lcom/youku/vo/UnSubBean;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "subAlreadyBean":Lcom/youku/vo/UnSubBean;
    .end local v4    # "subObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 418
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v5
.end method

.method public setJsonString(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/http/ParseJson1;->jsonString:Ljava/lang/String;

    .line 47
    return-void
.end method
