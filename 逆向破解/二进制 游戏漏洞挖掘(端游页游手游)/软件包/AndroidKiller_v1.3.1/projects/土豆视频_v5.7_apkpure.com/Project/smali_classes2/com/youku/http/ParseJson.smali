.class public Lcom/youku/http/ParseJson;
.super Ljava/lang/Object;
.source "ParseJson.java"


# instance fields
.field private channel:Lcom/youku/vo/Channel;

.field protected jsonObject:Lorg/json/JSONObject;

.field private jsonString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/youku/vo/Channel;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "channel"    # Lcom/youku/vo/Channel;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/youku/http/ParseJson;->channel:Lcom/youku/vo/Channel;

    .line 81
    iput-object p1, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private cleanPosterTrash()V
    .locals 10

    .prologue
    .line 866
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 867
    .local v7, "trash":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v8, Lcom/tudou/android/Youku;->DIRECTORY_PICTURES:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 868
    .local v6, "pics":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v8, Lcom/tudou/android/Youku;->POSTER_IMAGE_COUNT:I

    if-ge v1, v8, :cond_3

    .line 869
    const/4 v2, 0x0

    .line 870
    .local v2, "isContainInPoster":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    sget v8, Lcom/tudou/android/Youku;->POSTER_IMAGE_COUNT:I

    if-ge v3, v8, :cond_1

    .line 871
    sget-object v8, Lcom/tudou/android/Youku;->poster:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/Poster;

    .line 872
    .local v4, "p":Lcom/youku/vo/Poster;
    invoke-static {v4}, Lcom/youku/util/Util;->getPosterImgUrlTrait(Lcom/youku/vo/Poster;)Ljava/lang/String;

    move-result-object v5

    .line 873
    .local v5, "pic_name":Ljava/lang/String;
    array-length v8, v6

    if-le v8, v1, :cond_0

    aget-object v8, v6, v1

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 874
    const/4 v2, 0x1

    .line 870
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 877
    .end local v4    # "p":Lcom/youku/vo/Poster;
    .end local v5    # "pic_name":Ljava/lang/String;
    :cond_1
    array-length v8, v6

    if-le v8, v1, :cond_2

    if-nez v2, :cond_2

    .line 878
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/tudou/android/Youku;->DIRECTORY_PICTURES:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/tudou/android/Youku;->DIRECTORY_PICTURES:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 883
    .end local v2    # "isContainInPoster":Z
    .end local v3    # "j":I
    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 884
    new-instance v9, Ljava/io/File;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 886
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .end local v1    # "i":I
    .end local v6    # "pics":[Ljava/lang/String;
    .end local v7    # "trash":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    return-void

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "ParseJson.cleanPosterTrash()"

    invoke-static {v8, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private getResultArray()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 893
    iget-object v1, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 894
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 895
    iget-object v1, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "results"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "results"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 900
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public parseAutoSuggestWords()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 1174
    :try_start_0
    invoke-direct {p0}, Lcom/youku/http/ParseJson;->getResultArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 1175
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 1176
    .local v3, "r":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1177
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "keyword"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1178
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1179
    const-string v5, "ParseJson"

    const-string v6, "ParseJson.parseAutoSuggestWords(),suggest keywod null"

    invoke-static {v5, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1182
    :cond_0
    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1186
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "r":[Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1187
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "TaskHotWords.parseShowJson()"

    invoke-static {v5, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1189
    const/4 v5, 0x0

    new-array v3, v5, [Ljava/lang/String;

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v3
.end method

.method public parseChannel()V
    .locals 10

    .prologue
    .line 972
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 973
    invoke-direct {p0}, Lcom/youku/http/ParseJson;->getResultArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 974
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v6, "total"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 975
    iget-object v5, p0, Lcom/youku/http/ParseJson;->channel:Lcom/youku/vo/Channel;

    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "total"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/youku/vo/Channel;->totalVideo:I

    .line 978
    :cond_0
    const/4 v3, 0x0

    .line 979
    .local v3, "result":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 980
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 981
    new-instance v4, Lcom/youku/vo/VideoInfo;

    invoke-direct {v4}, Lcom/youku/vo/VideoInfo;-><init>()V

    .line 982
    .local v4, "vi":Lcom/youku/vo/VideoInfo;
    const-string v5, "tid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    .line 983
    const-string v5, "reputation"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    double-to-float v5, v6

    iput v5, v4, Lcom/youku/vo/VideoInfo;->starNum:F

    .line 984
    const-string v5, "show_thumburl_hd"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/vo/VideoInfo;->small_img:Ljava/lang/String;

    .line 985
    const-string v5, "show_vthumburl_hd"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/vo/VideoInfo;->imageVUrl:Ljava/lang/String;

    .line 986
    const-string v5, "showname"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/vo/VideoInfo;->title:Ljava/lang/String;

    .line 987
    const-string v5, "stripe_bottom"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/vo/VideoInfo;->duration:Ljava/lang/String;

    .line 988
    const-string v5, "reputation"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v4, Lcom/youku/vo/VideoInfo;->rating:D

    .line 989
    iget-object v5, p0, Lcom/youku/http/ParseJson;->channel:Lcom/youku/vo/Channel;

    iget-object v5, v5, Lcom/youku/vo/Channel;->videoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 991
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "result":Lorg/json/JSONObject;
    .end local v4    # "vi":Lcom/youku/vo/VideoInfo;
    :catch_0
    move-exception v1

    .line 992
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "ParseJson.parseChannel()"

    invoke-static {v5, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 994
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method

.method public parseChannelData()V
    .locals 15

    .prologue
    .line 1322
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    iget-object v14, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v13, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 1323
    iget-object v13, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v14, "channels"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1324
    .local v3, "channelsObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/youku/vo/Channels;

    invoke-direct {v2}, Lcom/youku/vo/Channels;-><init>()V

    .line 1325
    .local v2, "channels":Lcom/youku/vo/Channels;
    const-string v13, "title"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v2, Lcom/youku/vo/Channels;->title:Ljava/lang/String;

    .line 1326
    const-string v13, "tags"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1327
    .local v1, "channelArray":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v7, v13, :cond_1

    .line 1329
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 1330
    .local v11, "tmpObj":Lorg/json/JSONObject;
    const-string v13, "title"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1331
    .local v10, "title":Ljava/lang/String;
    const-string v13, "tid"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1339
    .local v4, "cid":Ljava/lang/String;
    const-string v13, "is_favorite"

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1340
    .local v9, "isFav":Z
    const-string v13, "color"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1341
    .local v5, "color":I
    const-string v13, "icon"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1342
    .local v8, "icon":Ljava/lang/String;
    const-string v13, "type"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 1343
    .local v12, "type":I
    new-instance v0, Lcom/youku/vo/Channel;

    invoke-direct {v0, v10}, Lcom/youku/vo/Channel;-><init>(Ljava/lang/String;)V

    .line 1344
    .local v0, "channel":Lcom/youku/vo/Channel;
    iput-object v4, v0, Lcom/youku/vo/Channel;->channelCid:Ljava/lang/String;

    .line 1345
    iput v5, v0, Lcom/youku/vo/Channel;->color:I

    .line 1346
    iput-object v8, v0, Lcom/youku/vo/Channel;->icon:Ljava/lang/String;

    .line 1347
    iput v12, v0, Lcom/youku/vo/Channel;->type:I

    .line 1348
    iput-boolean v9, v0, Lcom/youku/vo/Channel;->isFav:Z

    .line 1349
    if-eqz v9, :cond_0

    const/4 v13, 0x1

    :goto_1
    iput v13, v0, Lcom/youku/vo/Channel;->isFavInt:I

    .line 1351
    iget-object v13, v2, Lcom/youku/vo/Channels;->channels:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1352
    sget-object v13, Lcom/tudou/android/Youku;->sortBean:Lcom/youku/vo/ChannelSortBean;

    iput-object v2, v13, Lcom/youku/vo/ChannelSortBean;->channelBean:Lcom/youku/vo/Channels;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1349
    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    .line 1355
    .end local v0    # "channel":Lcom/youku/vo/Channel;
    .end local v1    # "channelArray":Lorg/json/JSONArray;
    .end local v2    # "channels":Lcom/youku/vo/Channels;
    .end local v3    # "channelsObject":Lorg/json/JSONObject;
    .end local v4    # "cid":Ljava/lang/String;
    .end local v5    # "color":I
    .end local v7    # "i":I
    .end local v8    # "icon":Ljava/lang/String;
    .end local v9    # "isFav":Z
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "tmpObj":Lorg/json/JSONObject;
    .end local v12    # "type":I
    :catch_0
    move-exception v6

    .line 1356
    .local v6, "e":Lorg/json/JSONException;
    const-string v13, "parseMyTagData"

    invoke-static {v13, v6}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1359
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method

.method public parseChannelList()V
    .locals 10

    .prologue
    .line 905
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 906
    iget-object v8, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v9, "channel"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 908
    .local v2, "channels":Lorg/json/JSONArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, Lcom/tudou/android/Youku;->channelList:Ljava/util/List;

    .line 909
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 910
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 911
    .local v1, "channelObject":Lorg/json/JSONObject;
    const-string v8, "title"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 912
    .local v6, "title":Ljava/lang/String;
    const-string v8, "type"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 913
    .local v7, "type":Ljava/lang/String;
    const-string v8, "cid"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, "cid":Ljava/lang/String;
    new-instance v0, Lcom/youku/vo/Channel;

    invoke-direct {v0, v6}, Lcom/youku/vo/Channel;-><init>(Ljava/lang/String;)V

    .line 915
    .local v0, "channel":Lcom/youku/vo/Channel;
    iput-object v7, v0, Lcom/youku/vo/Channel;->channelType:Ljava/lang/String;

    .line 916
    iput-object v3, v0, Lcom/youku/vo/Channel;->channelCid:Ljava/lang/String;

    .line 917
    sget-object v8, Lcom/tudou/android/Youku;->channelList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 924
    .end local v0    # "channel":Lcom/youku/vo/Channel;
    .end local v1    # "channelObject":Lorg/json/JSONObject;
    .end local v2    # "channels":Lorg/json/JSONArray;
    .end local v3    # "cid":Ljava/lang/String;
    .end local v5    # "j":I
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 925
    .local v4, "e":Lorg/json/JSONException;
    const-string v8, "ParseJson.parseChannelList()"

    invoke-static {v8, v4}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 927
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method public parseChannelSelsetionData(Ljava/lang/String;Lcom/youku/vo/ChannelItem;)V
    .locals 21
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "ci"    # Lcom/youku/vo/ChannelItem;

    .prologue
    .line 1459
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget v0, v0, Lcom/youku/vo/ChannelItem;->cid:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1462
    .local v5, "cid":Ljava/lang/String;
    :try_start_0
    sget-object v19, Lcom/tudou/android/Youku;->channelPoster:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v19}, Lcom/tudou/android/TudouApi;->clearPostList(Ljava/util/ArrayList;)V

    .line 1463
    const/16 v19, 0x0

    sput v19, Lcom/tudou/android/Youku;->POSTER_CHANNELIMAGE_COUNT:I

    .line 1464
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1465
    .local v14, "mjsonObject":Lorg/json/JSONObject;
    const-string v19, "banner"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1466
    const-string v19, "banner"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1467
    .local v3, "banners":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v19

    sput v19, Lcom/tudou/android/Youku;->POSTER_CHANNELIMAGE_COUNT:I

    .line 1469
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_0

    .line 1470
    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1471
    .local v2, "bannerObject":Lorg/json/JSONObject;
    new-instance v15, Lcom/youku/vo/Poster;

    invoke-direct {v15}, Lcom/youku/vo/Poster;-><init>()V

    .line 1472
    .local v15, "poster":Lcom/youku/vo/Poster;
    const-string v19, "title"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/youku/vo/Poster;->title:Ljava/lang/String;

    .line 1474
    const-string v19, "video_id"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/youku/vo/Poster;->vid:Ljava/lang/String;

    .line 1476
    const-string v19, "albumId"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/youku/vo/Poster;->tid:Ljava/lang/String;

    .line 1478
    const-string v19, "url_include_ids_count"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v15, Lcom/youku/vo/Poster;->url_include_ids_count:I

    .line 1482
    invoke-virtual {v15}, Lcom/youku/vo/Poster;->setCurrentType()V

    .line 1486
    const-string v19, "android_non_ugc_headline_image"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/youku/vo/Poster;->small_img:Ljava/lang/String;

    .line 1493
    const-string v19, "playlist_code"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/youku/vo/Poster;->playlist_code:Ljava/lang/String;

    .line 1495
    sget-object v19, Lcom/tudou/android/Youku;->channelPoster:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1496
    new-instance v13, Lcom/youku/http/LoadPosterThread;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v13, v15, v0}, Lcom/youku/http/LoadPosterThread;-><init>(Lcom/youku/vo/Poster;Lcom/youku/http/LoadPosterThread$ImageCallBack;)V

    .line 1497
    .local v13, "l":Lcom/youku/http/LoadPosterThread;
    invoke-virtual {v13}, Lcom/youku/http/LoadPosterThread;->start()V

    .line 1469
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1501
    .end local v2    # "bannerObject":Lorg/json/JSONObject;
    .end local v3    # "banners":Lorg/json/JSONArray;
    .end local v12    # "k":I
    .end local v13    # "l":Lcom/youku/http/LoadPosterThread;
    .end local v15    # "poster":Lcom/youku/vo/Poster;
    :cond_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    sput-object v19, Lcom/tudou/android/Youku;->channelSelection:Ljava/util/List;

    .line 1548
    const-string v19, "datalist"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1549
    .local v8, "datalist":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    .line 1550
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 1551
    .local v6, "dataObject":Lorg/json/JSONObject;
    const-string v19, "module_title"

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1553
    .local v16, "title":Ljava/lang/String;
    new-instance v4, Lcom/youku/vo/ChannelSelection;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/youku/vo/ChannelSelection;-><init>(Ljava/lang/String;)V

    .line 1554
    .local v4, "channel":Lcom/youku/vo/ChannelSelection;
    const-string v19, "videos"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1555
    .local v7, "dataResult":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_3

    .line 1556
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 1557
    .local v18, "videoObject":Lorg/json/JSONObject;
    new-instance v17, Lcom/youku/vo/VideoInfo;

    invoke-direct/range {v17 .. v17}, Lcom/youku/vo/VideoInfo;-><init>()V

    .line 1558
    .local v17, "vi":Lcom/youku/vo/VideoInfo;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/youku/vo/ChannelItem;->display_flag:I

    move/from16 v19, v0

    rem-int/lit8 v19, v19, 0x2

    if-nez v19, :cond_1

    .line 1559
    const-string v19, "image_448_252"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->small_img:Ljava/lang/String;

    .line 1565
    :goto_3
    const-string v19, "stripe_top"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->stripe_top:Ljava/lang/String;

    .line 1567
    const-string v19, "alias"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->alias:Ljava/lang/String;

    .line 1572
    const-string v19, "comments"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->comments:Ljava/lang/String;

    .line 1574
    const-string v19, "title"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->title:Ljava/lang/String;

    .line 1575
    const-string v19, "img_type"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/youku/vo/VideoInfo;->setImageType(Ljava/lang/String;)V

    .line 1577
    const-string v19, "playlist_code"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->playlist_code:Ljava/lang/String;

    .line 1579
    const-string v19, "type"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/youku/vo/VideoInfo;->setType(Ljava/lang/String;)V

    .line 1580
    const-string v19, "tid"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    .line 1581
    const-string v19, "pv"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->vv:Ljava/lang/String;

    .line 1582
    iget-object v0, v4, Lcom/youku/vo/ChannelSelection;->videoList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 1562
    :cond_1
    const-string v19, "non_ugc_regular_image"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/youku/vo/VideoInfo;->small_img:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 1587
    .end local v4    # "channel":Lcom/youku/vo/ChannelSelection;
    .end local v6    # "dataObject":Lorg/json/JSONObject;
    .end local v7    # "dataResult":Lorg/json/JSONArray;
    .end local v8    # "datalist":Lorg/json/JSONArray;
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v14    # "mjsonObject":Lorg/json/JSONObject;
    .end local v16    # "title":Ljava/lang/String;
    .end local v17    # "vi":Lcom/youku/vo/VideoInfo;
    .end local v18    # "videoObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    .line 1589
    .local v9, "e":Lorg/json/JSONException;
    const-string v19, "ParseJson.parseHome()"

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1591
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_2
    return-void

    .line 1584
    .restart local v4    # "channel":Lcom/youku/vo/ChannelSelection;
    .restart local v6    # "dataObject":Lorg/json/JSONObject;
    .restart local v7    # "dataResult":Lorg/json/JSONArray;
    .restart local v8    # "datalist":Lorg/json/JSONArray;
    .restart local v10    # "i":I
    .restart local v11    # "j":I
    .restart local v14    # "mjsonObject":Lorg/json/JSONObject;
    .restart local v16    # "title":Ljava/lang/String;
    :cond_3
    :try_start_1
    sget-object v19, Lcom/tudou/android/Youku;->channelSelection:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1549
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method public parseChannelSortData()Lcom/youku/vo/ChannelSortBean;
    .locals 27

    .prologue
    .line 1194
    new-instance v18, Lcom/youku/vo/ChannelSortBean;

    invoke-direct/range {v18 .. v18}, Lcom/youku/vo/ChannelSortBean;-><init>()V

    .line 1196
    .local v18, "sortBean":Lcom/youku/vo/ChannelSortBean;
    :try_start_0
    new-instance v25, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v25, v0

    const-string v26, "channels"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1198
    .local v6, "channelsObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/youku/vo/Channels;

    invoke-direct {v5}, Lcom/youku/vo/Channels;-><init>()V

    .line 1199
    .local v5, "channels":Lcom/youku/vo/Channels;
    const-string v25, "title"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v5, Lcom/youku/vo/Channels;->title:Ljava/lang/String;

    .line 1200
    const-string v25, "tags"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1201
    .local v4, "channelArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_1

    .line 1203
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 1204
    .local v23, "tmpObj":Lorg/json/JSONObject;
    const-string v25, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1205
    .local v22, "title":Ljava/lang/String;
    const-string v25, "tid"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1213
    .local v7, "cid":Ljava/lang/String;
    const-string v25, "is_favorite"

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 1214
    .local v12, "isFav":Z
    const-string v25, "color"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1215
    .local v8, "color":I
    const-string v25, "icon"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1216
    .local v11, "icon":Ljava/lang/String;
    const-string v25, "type"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v24

    .line 1217
    .local v24, "type":I
    new-instance v3, Lcom/youku/vo/Channel;

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Lcom/youku/vo/Channel;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v3, "channel":Lcom/youku/vo/Channel;
    iput-object v7, v3, Lcom/youku/vo/Channel;->channelCid:Ljava/lang/String;

    .line 1219
    iput v8, v3, Lcom/youku/vo/Channel;->color:I

    .line 1220
    iput-object v11, v3, Lcom/youku/vo/Channel;->icon:Ljava/lang/String;

    .line 1221
    move/from16 v0, v24

    iput v0, v3, Lcom/youku/vo/Channel;->type:I

    .line 1222
    iput-boolean v12, v3, Lcom/youku/vo/Channel;->isFav:Z

    .line 1223
    if-eqz v12, :cond_0

    const/16 v25, 0x1

    :goto_1
    move/from16 v0, v25

    iput v0, v3, Lcom/youku/vo/Channel;->isFavInt:I

    .line 1225
    iget-object v0, v5, Lcom/youku/vo/Channels;->channels:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1223
    :cond_0
    const/16 v25, 0x0

    goto :goto_1

    .line 1228
    .end local v3    # "channel":Lcom/youku/vo/Channel;
    .end local v7    # "cid":Ljava/lang/String;
    .end local v8    # "color":I
    .end local v11    # "icon":Ljava/lang/String;
    .end local v12    # "isFav":Z
    .end local v22    # "title":Ljava/lang/String;
    .end local v23    # "tmpObj":Lorg/json/JSONObject;
    .end local v24    # "type":I
    :cond_1
    move-object/from16 v0, v18

    iput-object v5, v0, Lcom/youku/vo/ChannelSortBean;->channelBean:Lcom/youku/vo/Channels;

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v25, v0

    const-string v26, "recommend"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 1231
    .local v16, "recommandObject":Lorg/json/JSONObject;
    new-instance v17, Lcom/youku/vo/EditorRecommand;

    invoke-direct/range {v17 .. v17}, Lcom/youku/vo/EditorRecommand;-><init>()V

    .line 1232
    .local v17, "recommands":Lcom/youku/vo/EditorRecommand;
    const-string v25, "title"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/youku/vo/EditorRecommand;->title:Ljava/lang/String;

    .line 1234
    const-string v25, "tags"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 1235
    .local v15, "recommandArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_2

    .line 1237
    invoke-virtual {v15, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 1238
    .restart local v23    # "tmpObj":Lorg/json/JSONObject;
    const-string v25, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1239
    .restart local v22    # "title":Ljava/lang/String;
    const-string v25, "tid"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1240
    .restart local v7    # "cid":Ljava/lang/String;
    const-string v25, "icon"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1241
    .restart local v11    # "icon":Ljava/lang/String;
    const-string v25, "type"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v24

    .line 1242
    .restart local v24    # "type":I
    new-instance v21, Lcom/youku/vo/Tags;

    invoke-direct/range {v21 .. v21}, Lcom/youku/vo/Tags;-><init>()V

    .line 1243
    .local v21, "tags":Lcom/youku/vo/Tags;
    move-object/from16 v0, v21

    iput-object v11, v0, Lcom/youku/vo/Tags;->icon:Ljava/lang/String;

    .line 1244
    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/youku/vo/Tags;->tid:Ljava/lang/String;

    .line 1245
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/youku/vo/Tags;->title:Ljava/lang/String;

    .line 1246
    move/from16 v0, v24

    move-object/from16 v1, v21

    iput v0, v1, Lcom/youku/vo/Tags;->type:I

    .line 1247
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/youku/vo/EditorRecommand;->tags:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1250
    .end local v7    # "cid":Ljava/lang/String;
    .end local v11    # "icon":Ljava/lang/String;
    .end local v21    # "tags":Lcom/youku/vo/Tags;
    .end local v22    # "title":Ljava/lang/String;
    .end local v23    # "tmpObj":Lorg/json/JSONObject;
    .end local v24    # "type":I
    :cond_2
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/youku/vo/ChannelSortBean;->recommandBean:Lcom/youku/vo/EditorRecommand;

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v25, v0

    const-string v26, "mytags"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 1253
    .local v14, "myTags":Lorg/json/JSONArray;
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    .line 1254
    .local v20, "tagObject":Lorg/json/JSONObject;
    new-instance v13, Lcom/youku/vo/MyTag;

    invoke-direct {v13}, Lcom/youku/vo/MyTag;-><init>()V

    .line 1255
    .local v13, "myTag":Lcom/youku/vo/MyTag;
    const-string v25, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v13, Lcom/youku/vo/MyTag;->title:Ljava/lang/String;

    .line 1257
    const-string v25, "tags"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 1258
    .local v19, "tagArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    :goto_3
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_3

    .line 1260
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 1261
    .restart local v23    # "tmpObj":Lorg/json/JSONObject;
    const-string v25, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1262
    .restart local v22    # "title":Ljava/lang/String;
    const-string v25, "tid"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1263
    .restart local v7    # "cid":Ljava/lang/String;
    const-string v25, "icon"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1264
    .restart local v11    # "icon":Ljava/lang/String;
    const-string v25, "type"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v24

    .line 1265
    .restart local v24    # "type":I
    const-string v25, "color"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 1266
    .restart local v8    # "color":I
    new-instance v21, Lcom/youku/vo/Tags;

    invoke-direct/range {v21 .. v21}, Lcom/youku/vo/Tags;-><init>()V

    .line 1267
    .restart local v21    # "tags":Lcom/youku/vo/Tags;
    move-object/from16 v0, v21

    iput-object v11, v0, Lcom/youku/vo/Tags;->icon:Ljava/lang/String;

    .line 1268
    move-object/from16 v0, v21

    iput-object v7, v0, Lcom/youku/vo/Tags;->tid:Ljava/lang/String;

    .line 1269
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/youku/vo/Tags;->title:Ljava/lang/String;

    .line 1270
    move/from16 v0, v24

    move-object/from16 v1, v21

    iput v0, v1, Lcom/youku/vo/Tags;->type:I

    .line 1271
    move-object/from16 v0, v21

    iput v8, v0, Lcom/youku/vo/Tags;->color:I

    .line 1272
    iget-object v0, v13, Lcom/youku/vo/MyTag;->tags:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1275
    .end local v7    # "cid":Ljava/lang/String;
    .end local v8    # "color":I
    .end local v11    # "icon":Ljava/lang/String;
    .end local v21    # "tags":Lcom/youku/vo/Tags;
    .end local v22    # "title":Ljava/lang/String;
    .end local v23    # "tmpObj":Lorg/json/JSONObject;
    .end local v24    # "type":I
    :cond_3
    move-object/from16 v0, v18

    iput-object v13, v0, Lcom/youku/vo/ChannelSortBean;->tagBean:Lcom/youku/vo/MyTag;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    .end local v4    # "channelArray":Lorg/json/JSONArray;
    .end local v5    # "channels":Lcom/youku/vo/Channels;
    .end local v6    # "channelsObject":Lorg/json/JSONObject;
    .end local v10    # "i":I
    .end local v13    # "myTag":Lcom/youku/vo/MyTag;
    .end local v14    # "myTags":Lorg/json/JSONArray;
    .end local v15    # "recommandArray":Lorg/json/JSONArray;
    .end local v16    # "recommandObject":Lorg/json/JSONObject;
    .end local v17    # "recommands":Lcom/youku/vo/EditorRecommand;
    .end local v19    # "tagArray":Lorg/json/JSONArray;
    .end local v20    # "tagObject":Lorg/json/JSONObject;
    :goto_4
    return-object v18

    .line 1277
    :catch_0
    move-exception v9

    .line 1278
    .local v9, "e":Lorg/json/JSONException;
    const-string v25, "parseChannelSortData"

    move-object/from16 v0, v25

    invoke-static {v0, v9}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public parseDoPayData()Lcom/tudou/alipay/entity/DoPayData;
    .locals 5

    .prologue
    .line 198
    const/4 v1, 0x0

    .line 200
    .local v1, "mDoPayData":Lcom/tudou/alipay/entity/DoPayData;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 201
    iget-object v3, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 202
    new-instance v2, Lcom/tudou/alipay/entity/DoPayData;

    invoke-direct {v2}, Lcom/tudou/alipay/entity/DoPayData;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v1    # "mDoPayData":Lcom/tudou/alipay/entity/DoPayData;
    .local v2, "mDoPayData":Lcom/tudou/alipay/entity/DoPayData;
    :try_start_1
    iget-object v3, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "channel_params"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tudou/alipay/entity/DoPayData;->setChannel_params(Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "trade_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tudou/alipay/entity/DoPayData;->setTrade_id(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 209
    .end local v2    # "mDoPayData":Lcom/tudou/alipay/entity/DoPayData;
    .restart local v1    # "mDoPayData":Lcom/tudou/alipay/entity/DoPayData;
    :cond_0
    :goto_0
    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "Youku"

    const-string v4, "ParseJson#parseDoPayData()"

    invoke-static {v3, v4, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mDoPayData":Lcom/tudou/alipay/entity/DoPayData;
    .restart local v2    # "mDoPayData":Lcom/tudou/alipay/entity/DoPayData;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "mDoPayData":Lcom/tudou/alipay/entity/DoPayData;
    .restart local v1    # "mDoPayData":Lcom/tudou/alipay/entity/DoPayData;
    goto :goto_1
.end method

.method public parseFav(Z)V
    .locals 10
    .param p1, "isRefeshing"    # Z

    .prologue
    .line 1022
    :try_start_0
    invoke-direct {p0}, Lcom/youku/http/ParseJson;->getResultArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 1023
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/youku/http/ParseJson;->channel:Lcom/youku/vo/Channel;

    iget v5, v5, Lcom/youku/vo/Channel;->totalVideo:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v6, "total"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1025
    iget-object v5, p0, Lcom/youku/http/ParseJson;->channel:Lcom/youku/vo/Channel;

    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "total"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/youku/vo/Channel;->totalVideo:I

    .line 1028
    :cond_1
    const/4 v3, 0x0

    .line 1029
    .local v3, "result":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1030
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1031
    new-instance v4, Lcom/youku/vo/VideoInfo;

    invoke-direct {v4}, Lcom/youku/vo/VideoInfo;-><init>()V

    .line 1032
    .local v4, "vi":Lcom/youku/vo/VideoInfo;
    const-string v5, "reputation"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    double-to-float v5, v6

    iput v5, v4, Lcom/youku/vo/VideoInfo;->starNum:F

    .line 1034
    const-string v5, "img_hd"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/vo/VideoInfo;->small_img:Ljava/lang/String;

    .line 1035
    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/vo/VideoInfo;->title:Ljava/lang/String;

    .line 1036
    const-string v5, "duration"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/vo/VideoInfo;->duration:Ljava/lang/String;

    .line 1037
    const-string v5, "videoid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    .line 1038
    const-string v5, "state"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/youku/vo/VideoInfo;->state:I

    .line 1039
    iget-object v5, p0, Lcom/youku/http/ParseJson;->channel:Lcom/youku/vo/Channel;

    iget-object v5, v5, Lcom/youku/vo/Channel;->videoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1041
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "result":Lorg/json/JSONObject;
    .end local v4    # "vi":Lcom/youku/vo/VideoInfo;
    :catch_0
    move-exception v1

    .line 1043
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "ParseJson.parseFav()"

    invoke-static {v5, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1045
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    return-void
.end method

.method public parseFilter()V
    .locals 10

    .prologue
    .line 931
    :try_start_0
    invoke-direct {p0}, Lcom/youku/http/ParseJson;->getResultArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 932
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 933
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 934
    .local v6, "jsonFilter":Lorg/json/JSONObject;
    new-instance v2, Lcom/youku/vo/Filter;

    invoke-direct {v2}, Lcom/youku/vo/Filter;-><init>()V

    .line 935
    .local v2, "filter":Lcom/youku/vo/Filter;
    const-string v9, "cat"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/youku/vo/Filter;->cat:Ljava/lang/String;

    .line 936
    const-string v9, "title"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/youku/vo/Filter;->title:Ljava/lang/String;

    .line 937
    const-string v9, "items"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 938
    .local v5, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 939
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 940
    .local v7, "object":Lorg/json/JSONObject;
    new-instance v8, Lcom/youku/vo/Order;

    invoke-direct {v8}, Lcom/youku/vo/Order;-><init>()V

    .line 941
    .local v8, "order":Lcom/youku/vo/Order;
    const-string v9, "title"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/youku/vo/Order;->title:Ljava/lang/String;

    .line 942
    const-string v9, "value"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/youku/vo/Order;->value:Ljava/lang/String;

    .line 943
    iget-object v9, v2, Lcom/youku/vo/Filter;->orders:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 945
    .end local v7    # "object":Lorg/json/JSONObject;
    .end local v8    # "order":Lcom/youku/vo/Order;
    :cond_0
    sget-object v9, Lcom/tudou/android/Youku;->filters:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 947
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "filter":Lcom/youku/vo/Filter;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonFilter":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 949
    .local v1, "e":Lorg/json/JSONException;
    const-string v9, "ParseJson.parseFilter()"

    invoke-static {v9, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 951
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method

.method public parseHistory()V
    .locals 6

    .prologue
    .line 955
    :try_start_0
    invoke-direct {p0}, Lcom/youku/http/ParseJson;->getResultArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 956
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 957
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 958
    .local v3, "result":Lorg/json/JSONObject;
    new-instance v4, Lcom/youku/vo/VideoInfo;

    invoke-direct {v4}, Lcom/youku/vo/VideoInfo;-><init>()V

    .line 959
    .local v4, "vi":Lcom/youku/vo/VideoInfo;
    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/vo/VideoInfo;->title:Ljava/lang/String;

    .line 960
    const-string v5, "point"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/youku/vo/VideoInfo;->playTime:I

    .line 961
    const-string v5, "videoid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    .line 962
    iget-object v5, p0, Lcom/youku/http/ParseJson;->channel:Lcom/youku/vo/Channel;

    iget-object v5, v5, Lcom/youku/vo/Channel;->videoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 964
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "result":Lorg/json/JSONObject;
    .end local v4    # "vi":Lcom/youku/vo/VideoInfo;
    :catch_0
    move-exception v1

    .line 966
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "ParseJson.parseHistory()"

    invoke-static {v5, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 968
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method public parseHome()V
    .locals 19

    .prologue
    .line 1366
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 1401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string v18, "datalist"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1402
    .local v6, "datalist":Lorg/json/JSONArray;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    sput-object v17, Lcom/tudou/android/Youku;->homeChannels:Ljava/util/List;

    .line 1403
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 1404
    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1405
    .local v4, "dataObject":Lorg/json/JSONObject;
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1407
    .local v12, "title":Ljava/lang/String;
    const-string v17, "type"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1408
    .local v14, "type":Ljava/lang/String;
    const-string v17, "cid"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1409
    .local v3, "cid":Ljava/lang/String;
    const-string v17, "title_line"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v13

    .line 1411
    .local v13, "title_line":I
    const-string v17, "more"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v11

    .line 1412
    .local v11, "more":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_0

    const/4 v8, 0x1

    .line 1413
    .local v8, "hasMore":Z
    :goto_1
    new-instance v2, Lcom/youku/vo/HomeChannel;

    invoke-direct {v2, v12}, Lcom/youku/vo/HomeChannel;-><init>(Ljava/lang/String;)V

    .line 1414
    .local v2, "channel":Lcom/youku/vo/HomeChannel;
    iput-object v14, v2, Lcom/youku/vo/HomeChannel;->channelType:Ljava/lang/String;

    .line 1415
    iput-object v3, v2, Lcom/youku/vo/HomeChannel;->channelCid:Ljava/lang/String;

    .line 1416
    iput v13, v2, Lcom/youku/vo/HomeChannel;->title_line:I

    .line 1417
    iput-boolean v8, v2, Lcom/youku/vo/HomeChannel;->hasMore:Z

    .line 1419
    const-string v17, "result"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1420
    .local v5, "dataResult":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_3

    .line 1421
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 1422
    .local v16, "videoObject":Lorg/json/JSONObject;
    new-instance v15, Lcom/youku/vo/VideoInfo;

    invoke-direct {v15}, Lcom/youku/vo/VideoInfo;-><init>()V

    .line 1423
    .local v15, "vi":Lcom/youku/vo/VideoInfo;
    const-string v17, "title"

    invoke-static/range {v16 .. v17}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/youku/vo/VideoInfo;->title:Ljava/lang/String;

    .line 1424
    const-string v17, "img"

    invoke-static/range {v16 .. v17}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/youku/vo/VideoInfo;->small_img:Ljava/lang/String;

    .line 1425
    const-string v17, "tid"

    invoke-static/range {v16 .. v17}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    .line 1426
    const-string v17, "reputation"

    invoke-static/range {v16 .. v17}, Lcom/youku/util/JsonUtils;->getJsonDouble(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Lcom/youku/vo/VideoInfo;->starNum:F

    .line 1428
    const-string v17, "type"

    invoke-static/range {v16 .. v17}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/youku/vo/VideoInfo;->type:Ljava/lang/String;

    .line 1429
    const-string v17, "video"

    iget-object v0, v15, Lcom/youku/vo/VideoInfo;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1430
    sget-object v17, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/youku/vo/VideoInfo;->videotype:Lcom/tudou/android/Youku$Type;

    .line 1439
    :goto_3
    const-string v17, "stripe_top"

    invoke-static/range {v16 .. v17}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/youku/vo/VideoInfo;->stripe_top:Ljava/lang/String;

    .line 1441
    const-string v17, "playlist_code"

    invoke-static/range {v16 .. v17}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/youku/vo/VideoInfo;->playlist_code:Ljava/lang/String;

    .line 1443
    const-string v17, "stripe_bottom"

    invoke-static/range {v16 .. v17}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/youku/vo/VideoInfo;->duration:Ljava/lang/String;

    .line 1445
    const-string v17, "pv"

    invoke-static/range {v16 .. v17}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/youku/vo/VideoInfo;->vv:Ljava/lang/String;

    .line 1446
    const-string v17, "comments"

    invoke-static/range {v16 .. v17}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/youku/vo/VideoInfo;->comments:Ljava/lang/String;

    .line 1448
    iget-object v0, v2, Lcom/youku/vo/HomeChannel;->videoList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1420
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1412
    .end local v2    # "channel":Lcom/youku/vo/HomeChannel;
    .end local v5    # "dataResult":Lorg/json/JSONArray;
    .end local v8    # "hasMore":Z
    .end local v10    # "j":I
    .end local v15    # "vi":Lcom/youku/vo/VideoInfo;
    .end local v16    # "videoObject":Lorg/json/JSONObject;
    :cond_0
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1432
    .restart local v2    # "channel":Lcom/youku/vo/HomeChannel;
    .restart local v5    # "dataResult":Lorg/json/JSONArray;
    .restart local v8    # "hasMore":Z
    .restart local v10    # "j":I
    .restart local v15    # "vi":Lcom/youku/vo/VideoInfo;
    .restart local v16    # "videoObject":Lorg/json/JSONObject;
    :cond_1
    sget-object v17, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    move-object/from16 v0, v17

    iput-object v0, v15, Lcom/youku/vo/VideoInfo;->videotype:Lcom/tudou/android/Youku$Type;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1452
    .end local v2    # "channel":Lcom/youku/vo/HomeChannel;
    .end local v3    # "cid":Ljava/lang/String;
    .end local v4    # "dataObject":Lorg/json/JSONObject;
    .end local v5    # "dataResult":Lorg/json/JSONArray;
    .end local v6    # "datalist":Lorg/json/JSONArray;
    .end local v8    # "hasMore":Z
    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v11    # "more":I
    .end local v12    # "title":Ljava/lang/String;
    .end local v13    # "title_line":I
    .end local v14    # "type":Ljava/lang/String;
    .end local v15    # "vi":Lcom/youku/vo/VideoInfo;
    .end local v16    # "videoObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 1454
    .local v7, "e":Lorg/json/JSONException;
    const-string v17, "ParseJson.parseHome()"

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1456
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_2
    return-void

    .line 1450
    .restart local v2    # "channel":Lcom/youku/vo/HomeChannel;
    .restart local v3    # "cid":Ljava/lang/String;
    .restart local v4    # "dataObject":Lorg/json/JSONObject;
    .restart local v5    # "dataResult":Lorg/json/JSONArray;
    .restart local v6    # "datalist":Lorg/json/JSONArray;
    .restart local v8    # "hasMore":Z
    .restart local v9    # "i":I
    .restart local v10    # "j":I
    .restart local v11    # "more":I
    .restart local v12    # "title":Ljava/lang/String;
    .restart local v13    # "title_line":I
    .restart local v14    # "type":Ljava/lang/String;
    :cond_3
    :try_start_1
    sget-object v17, Lcom/tudou/android/Youku;->homeChannels:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1403
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method public parseHomePage()Lcom/youku/vo/HomeLike;
    .locals 6

    .prologue
    .line 92
    new-instance v2, Lcom/youku/vo/HomeLike;

    invoke-direct {v2}, Lcom/youku/vo/HomeLike;-><init>()V

    .line 94
    .local v2, "like":Lcom/youku/vo/HomeLike;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 95
    iget-object v4, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "results"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 96
    .local v3, "resuts":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/youku/vo/HomeLike;->results:Ljava/util/ArrayList;

    .line 97
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "bean":[Lcom/youku/vo/HomeBean;
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/youku/http/ParseJson;->paseHomePageData(Ljava/lang/Object;)[Lcom/youku/vo/HomeBean;

    move-result-object v0

    .line 100
    iget-object v4, v2, Lcom/youku/vo/HomeLike;->results:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "bean":[Lcom/youku/vo/HomeBean;
    .end local v1    # "i":I
    .end local v3    # "resuts":Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    .line 105
    :cond_0
    return-object v2
.end method

.method public parseHomePageRemmend()Lcom/youku/vo/HomeRecommend;
    .locals 11

    .prologue
    .line 726
    new-instance v4, Lcom/youku/vo/HomeRecommend;

    invoke-direct {v4}, Lcom/youku/vo/HomeRecommend;-><init>()V

    .line 728
    .local v4, "homerecommend":Lcom/youku/vo/HomeRecommend;
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    iget-object v10, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 729
    iget-object v9, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v10, "results"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 730
    .local v8, "resuts":Lorg/json/JSONArray;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v4, Lcom/youku/vo/HomeRecommend;->results:Ljava/util/ArrayList;

    .line 731
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 732
    new-instance v3, Lcom/youku/vo/HomeRecommend$HomeGroup;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4}, Lcom/youku/vo/HomeRecommend$HomeGroup;-><init>(Lcom/youku/vo/HomeRecommend;)V

    .line 733
    .local v3, "grop":Lcom/youku/vo/HomeRecommend$HomeGroup;
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 734
    .local v7, "obj":Lorg/json/JSONObject;
    const-string v9, "cells"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 735
    .local v0, "arr":Lorg/json/JSONArray;
    const-string v9, "group"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/youku/vo/HomeRecommend$HomeGroup;->group:Ljava/lang/String;

    .line 736
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v3, Lcom/youku/vo/HomeRecommend$HomeGroup;->cells:Ljava/util/ArrayList;

    .line 737
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 738
    new-instance v2, Lcom/youku/vo/HomeRecommend$Cell;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v4}, Lcom/youku/vo/HomeRecommend$Cell;-><init>(Lcom/youku/vo/HomeRecommend;)V

    .line 739
    .local v2, "cell":Lcom/youku/vo/HomeRecommend$Cell;
    const/4 v1, 0x0

    .line 740
    .local v1, "bean":[Lcom/youku/vo/HomeBean;
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/youku/http/ParseJson;->paseHomePageData(Ljava/lang/Object;)[Lcom/youku/vo/HomeBean;

    move-result-object v1

    .line 741
    iput-object v1, v2, Lcom/youku/vo/HomeRecommend$Cell;->cell:[Lcom/youku/vo/HomeBean;

    .line 742
    iget-object v9, v2, Lcom/youku/vo/HomeRecommend$Cell;->cell:[Lcom/youku/vo/HomeBean;

    if-nez v9, :cond_0

    .line 737
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 745
    :cond_0
    iget-object v9, v3, Lcom/youku/vo/HomeRecommend$HomeGroup;->cells:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 752
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "bean":[Lcom/youku/vo/HomeBean;
    .end local v2    # "cell":Lcom/youku/vo/HomeRecommend$Cell;
    .end local v3    # "grop":Lcom/youku/vo/HomeRecommend$HomeGroup;
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v8    # "resuts":Lorg/json/JSONArray;
    :catch_0
    move-exception v9

    .line 755
    :cond_1
    return-object v4

    .line 747
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v3    # "grop":Lcom/youku/vo/HomeRecommend$HomeGroup;
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v7    # "obj":Lorg/json/JSONObject;
    .restart local v8    # "resuts":Lorg/json/JSONArray;
    :cond_2
    iget-object v9, v3, Lcom/youku/vo/HomeRecommend$HomeGroup;->cells:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 748
    iget-object v9, v4, Lcom/youku/vo/HomeRecommend;->results:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public parseMyTagData()V
    .locals 15

    .prologue
    .line 1287
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    iget-object v14, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v13, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 1288
    iget-object v13, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v14, "mytags"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1289
    .local v6, "myTags":Lorg/json/JSONArray;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1290
    .local v8, "tagObject":Lorg/json/JSONObject;
    new-instance v5, Lcom/youku/vo/MyTag;

    invoke-direct {v5}, Lcom/youku/vo/MyTag;-><init>()V

    .line 1291
    .local v5, "myTag":Lcom/youku/vo/MyTag;
    const-string v13, "title"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v5, Lcom/youku/vo/MyTag;->title:Ljava/lang/String;

    .line 1293
    const-string v13, "tags"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1294
    .local v7, "tagArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v3, v13, :cond_0

    .line 1296
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 1297
    .local v11, "tmpObj":Lorg/json/JSONObject;
    const-string v13, "title"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1298
    .local v10, "title":Ljava/lang/String;
    const-string v13, "tid"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1299
    .local v0, "cid":Ljava/lang/String;
    const-string v13, "icon"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1300
    .local v4, "icon":Ljava/lang/String;
    const-string v13, "type"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 1301
    .local v12, "type":I
    const-string v13, "color"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1302
    .local v1, "color":I
    new-instance v9, Lcom/youku/vo/Tags;

    invoke-direct {v9}, Lcom/youku/vo/Tags;-><init>()V

    .line 1303
    .local v9, "tags":Lcom/youku/vo/Tags;
    iput-object v4, v9, Lcom/youku/vo/Tags;->icon:Ljava/lang/String;

    .line 1304
    iput-object v0, v9, Lcom/youku/vo/Tags;->tid:Ljava/lang/String;

    .line 1305
    iput-object v10, v9, Lcom/youku/vo/Tags;->title:Ljava/lang/String;

    .line 1306
    iput v12, v9, Lcom/youku/vo/Tags;->type:I

    .line 1307
    iput v1, v9, Lcom/youku/vo/Tags;->color:I

    .line 1308
    iget-object v13, v5, Lcom/youku/vo/MyTag;->tags:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1311
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "color":I
    .end local v4    # "icon":Ljava/lang/String;
    .end local v9    # "tags":Lcom/youku/vo/Tags;
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "tmpObj":Lorg/json/JSONObject;
    .end local v12    # "type":I
    :cond_0
    sget-object v13, Lcom/tudou/android/Youku;->sortBean:Lcom/youku/vo/ChannelSortBean;

    iput-object v5, v13, Lcom/youku/vo/ChannelSortBean;->tagBean:Lcom/youku/vo/MyTag;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    .end local v3    # "i":I
    .end local v5    # "myTag":Lcom/youku/vo/MyTag;
    .end local v6    # "myTags":Lorg/json/JSONArray;
    .end local v7    # "tagArray":Lorg/json/JSONArray;
    .end local v8    # "tagObject":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 1313
    :catch_0
    move-exception v2

    .line 1314
    .local v2, "e":Lorg/json/JSONException;
    const-string v13, "parseMyTagData"

    invoke-static {v13, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public parseNotify()Lcom/youku/vo/Notifications;
    .locals 15

    .prologue
    .line 228
    new-instance v6, Lcom/youku/vo/Notifications;

    invoke-direct {v6}, Lcom/youku/vo/Notifications;-><init>()V

    .line 230
    .local v6, "notify":Lcom/youku/vo/Notifications;
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    iget-object v13, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v12, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 232
    iget-object v12, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v13, "sub_updates"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 233
    .local v10, "sub":Lorg/json/JSONObject;
    iget-object v12, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v13, "view_record"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 234
    .local v8, "record":Lorg/json/JSONArray;
    iget-object v12, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v13, "sys_notify"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 236
    .local v7, "notifys":Lorg/json/JSONObject;
    if-eqz v7, :cond_0

    .line 237
    new-instance v12, Lcom/youku/vo/Notifications$Sys_notify;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v12, v6}, Lcom/youku/vo/Notifications$Sys_notify;-><init>(Lcom/youku/vo/Notifications;)V

    iput-object v12, v6, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    .line 238
    iget-object v12, v6, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    const-string v13, "id"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/youku/vo/Notifications$Sys_notify;->id:I

    .line 240
    iget-object v12, v6, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    const-string v13, "title"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/youku/vo/Notifications$Sys_notify;->title:Ljava/lang/String;

    .line 241
    iget-object v12, v6, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    const-string v13, "text_body"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/youku/vo/Notifications$Sys_notify;->text_body:Ljava/lang/String;

    .line 242
    iget-object v12, v6, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    const-string v13, "icon"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/youku/vo/Notifications$Sys_notify;->icon:Ljava/lang/String;

    .line 243
    const-string v12, "skip_inf"

    invoke-static {v7, v12}, Lcom/youku/util/JsonUtils;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 244
    .local v9, "skipInfo":Lorg/json/JSONObject;
    if-eqz v9, :cond_0

    .line 245
    iget-object v13, v6, Lcom/youku/vo/Notifications;->sysnotify:Lcom/youku/vo/Notifications$Sys_notify;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v14, Lcom/youku/vo/SkipInfo;

    invoke-direct {v14}, Lcom/youku/vo/SkipInfo;-><init>()V

    invoke-static {v12, v14}, Lcom/youku/vo/IndexPageData;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/youku/vo/SkipInfo;

    iput-object v12, v13, Lcom/youku/vo/Notifications$Sys_notify;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 250
    .end local v9    # "skipInfo":Lorg/json/JSONObject;
    :cond_0
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 251
    new-instance v12, Lcom/youku/vo/Notifications$View_record;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v12, v6}, Lcom/youku/vo/Notifications$View_record;-><init>(Lcom/youku/vo/Notifications;)V

    iput-object v12, v6, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    .line 252
    iget-object v12, v6, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "ititle"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/youku/vo/Notifications$View_record;->title:Ljava/lang/String;

    .line 253
    iget-object v12, v6, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "itemCode"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/youku/vo/Notifications$View_record;->iid:Ljava/lang/String;

    .line 254
    iget-object v12, v6, Lcom/youku/vo/Notifications;->playhistory:Lcom/youku/vo/Notifications$View_record;

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "aid"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/youku/vo/Notifications$View_record;->aid:Ljava/lang/String;

    .line 256
    :cond_1
    if-eqz v10, :cond_2

    .line 257
    new-instance v12, Lcom/youku/vo/Notifications$Sub_updates;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v12, v6}, Lcom/youku/vo/Notifications$Sub_updates;-><init>(Lcom/youku/vo/Notifications;)V

    iput-object v12, v6, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    .line 258
    const-string v12, "count"

    const/4 v13, 0x1

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 259
    .local v0, "count":I
    iget-object v12, v6, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    iput v0, v12, Lcom/youku/vo/Notifications$Sub_updates;->count:I

    .line 260
    const/4 v12, 0x1

    if-lt v0, v12, :cond_2

    .line 261
    const-string v12, "first_update"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 262
    .local v3, "first_update":Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 263
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "type"

    const/4 v14, -0x1

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 265
    .local v11, "type":I
    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 267
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "itemInfos"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 270
    .local v4, "itemInfos":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 271
    const-string v12, "items"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 273
    .local v5, "items":Lorg/json/JSONArray;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 274
    iget-object v12, v6, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "title"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/youku/vo/Notifications$Sub_updates;->title:Ljava/lang/String;

    .line 277
    iget-object v12, v6, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "code"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/youku/vo/Notifications$Sub_updates;->id:Ljava/lang/String;

    .line 279
    iget-object v12, v6, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "id"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/youku/vo/Notifications$Sub_updates;->sysid:Ljava/lang/String;

    .line 281
    iget-object v12, v6, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "type"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/youku/vo/Notifications$Sub_updates;->type:Ljava/lang/String;

    .line 323
    .end local v0    # "count":I
    .end local v3    # "first_update":Lorg/json/JSONArray;
    .end local v4    # "itemInfos":Lorg/json/JSONObject;
    .end local v5    # "items":Lorg/json/JSONArray;
    .end local v7    # "notifys":Lorg/json/JSONObject;
    .end local v8    # "record":Lorg/json/JSONArray;
    .end local v10    # "sub":Lorg/json/JSONObject;
    .end local v11    # "type":I
    :cond_2
    :goto_0
    return-object v6

    .line 286
    .restart local v0    # "count":I
    .restart local v3    # "first_update":Lorg/json/JSONArray;
    .restart local v7    # "notifys":Lorg/json/JSONObject;
    .restart local v8    # "record":Lorg/json/JSONArray;
    .restart local v10    # "sub":Lorg/json/JSONObject;
    .restart local v11    # "type":I
    :cond_3
    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 287
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "itemInfos"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 290
    .restart local v4    # "itemInfos":Lorg/json/JSONObject;
    iget-object v12, v6, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "id"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/youku/vo/Notifications$Sub_updates;->sysid:Ljava/lang/String;

    .line 293
    if-eqz v4, :cond_2

    .line 294
    const-string v12, "items"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 296
    .local v5, "items":Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 297
    const-string v12, "data"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 298
    .local v1, "data":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 299
    iget-object v12, v6, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "title"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/youku/vo/Notifications$Sub_updates;->title:Ljava/lang/String;

    .line 302
    iget-object v12, v6, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "code"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/youku/vo/Notifications$Sub_updates;->id:Ljava/lang/String;

    .line 306
    iget-object v12, v6, Lcom/youku/vo/Notifications;->subupdates:Lcom/youku/vo/Notifications$Sub_updates;

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "type"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/youku/vo/Notifications$Sub_updates;->type:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    .end local v0    # "count":I
    .end local v1    # "data":Lorg/json/JSONArray;
    .end local v3    # "first_update":Lorg/json/JSONArray;
    .end local v4    # "itemInfos":Lorg/json/JSONObject;
    .end local v5    # "items":Lorg/json/JSONObject;
    .end local v7    # "notifys":Lorg/json/JSONObject;
    .end local v8    # "record":Lorg/json/JSONArray;
    .end local v10    # "sub":Lorg/json/JSONObject;
    .end local v11    # "type":I
    :catch_0
    move-exception v2

    .line 320
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public parseOrder()V
    .locals 7

    .prologue
    .line 1052
    :try_start_0
    invoke-direct {p0}, Lcom/youku/http/ParseJson;->getResultArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 1053
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .line 1054
    .local v4, "result":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 1069
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v4    # "result":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 1057
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v4    # "result":Lorg/json/JSONObject;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1058
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1059
    new-instance v3, Lcom/youku/vo/Order;

    invoke-direct {v3}, Lcom/youku/vo/Order;-><init>()V

    .line 1060
    .local v3, "o":Lcom/youku/vo/Order;
    const-string v6, "title"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/Order;->title:Ljava/lang/String;

    .line 1061
    const-string v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 1062
    .local v5, "temp":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/Order;->value:Ljava/lang/String;

    .line 1063
    sget-object v6, Lcom/tudou/android/Youku;->orders:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1065
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "o":Lcom/youku/vo/Order;
    .end local v4    # "result":Lorg/json/JSONObject;
    .end local v5    # "temp":I
    :catch_0
    move-exception v1

    .line 1067
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "ParseJson.parseOrder()"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public parseRecommandList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/VideoInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 996
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 998
    .local v4, "recommandList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/VideoInfo;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 999
    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "results"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1000
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 1001
    .local v5, "result":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1002
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1003
    new-instance v3, Lcom/youku/vo/VideoInfo;

    invoke-direct {v3}, Lcom/youku/vo/VideoInfo;-><init>()V

    .line 1004
    .local v3, "recommand":Lcom/youku/vo/VideoInfo;
    const-string v6, "content_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    .line 1005
    const-string v6, "content_type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/VideoInfo;->type:Ljava/lang/String;

    .line 1006
    const-string v6, "title"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/VideoInfo;->title:Ljava/lang/String;

    .line 1007
    const-string v6, "image"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/VideoInfo;->small_img:Ljava/lang/String;

    .line 1008
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1011
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "recommand":Lcom/youku/vo/VideoInfo;
    .end local v5    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1012
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "ParseJson.parseRecommandList()"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1014
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v4
.end method

.method public parseResponseFailCode()I
    .locals 4

    .prologue
    .line 1072
    const/4 v0, -0x5

    .line 1073
    .local v0, "code":I
    iget-object v2, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1074
    const/4 v2, -0x6

    .line 1084
    :goto_0
    return v2

    .line 1077
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 1078
    iget-object v2, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_1
    move v2, v0

    .line 1084
    goto :goto_0

    .line 1079
    :catch_0
    move-exception v1

    .line 1080
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "ParseJson.parseResponseFailCode()"

    invoke-static {v2, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1081
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 1082
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Youku"

    const-string v3, "ParseJson.parseResponseFailCode()"

    invoke-static {v2, v3, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public parseSearchRecommendResult()V
    .locals 7

    .prologue
    .line 1144
    :try_start_0
    invoke-direct {p0}, Lcom/youku/http/ParseJson;->getResultArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 1145
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "total"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1146
    iget-object v4, p0, Lcom/youku/http/ParseJson;->channel:Lcom/youku/vo/Channel;

    iget-object v5, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v6, "total"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/youku/vo/Channel;->totalVideo:I

    .line 1149
    :cond_0
    const/4 v2, 0x0

    .line 1150
    .local v2, "result":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1151
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1152
    new-instance v3, Lcom/youku/vo/VideoInfo;

    invoke-direct {v3}, Lcom/youku/vo/VideoInfo;-><init>()V

    .line 1153
    .local v3, "vi":Lcom/youku/vo/VideoInfo;
    const-string v4, "tid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    .line 1154
    const-string v4, "img"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/vo/VideoInfo;->small_img:Ljava/lang/String;

    .line 1155
    const-string v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/vo/VideoInfo;->title:Ljava/lang/String;

    .line 1156
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/vo/VideoInfo;->type:Ljava/lang/String;

    .line 1157
    iget-object v4, p0, Lcom/youku/http/ParseJson;->channel:Lcom/youku/vo/Channel;

    iget-object v4, v4, Lcom/youku/vo/Channel;->videoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1159
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "result":Lorg/json/JSONObject;
    .end local v3    # "vi":Lcom/youku/vo/VideoInfo;
    :catch_0
    move-exception v4

    .line 1163
    :cond_1
    return-void
.end method

.method public parseSearchResult()V
    .locals 14

    .prologue
    .line 1089
    :try_start_0
    invoke-direct {p0}, Lcom/youku/http/ParseJson;->getResultArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 1090
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "total"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1091
    iget-object v6, p0, Lcom/youku/http/ParseJson;->channel:Lcom/youku/vo/Channel;

    iget-object v7, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v8, "total"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lcom/youku/vo/Channel;->totalVideo:I

    .line 1094
    :cond_0
    const/4 v4, 0x0

    .line 1095
    .local v4, "result":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 1096
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1097
    new-instance v5, Lcom/youku/vo/VideoInfo;

    invoke-direct {v5}, Lcom/youku/vo/VideoInfo;-><init>()V

    .line 1098
    .local v5, "vi":Lcom/youku/vo/VideoInfo;
    const-string v6, "showid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    .line 1099
    const-string v6, "showid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/youku/vo/VideoInfo;->showid:Ljava/lang/String;

    .line 1100
    const-string v6, "reputation"

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v6, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, v5, Lcom/youku/vo/VideoInfo;->starNum:F

    .line 1101
    const-string v6, "show_thumburl"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/youku/vo/VideoInfo;->small_img:Ljava/lang/String;

    .line 1102
    const-string v6, "showname"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/youku/vo/VideoInfo;->title:Ljava/lang/String;

    .line 1103
    const-string v6, "showtotal_vv"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1104
    .local v2, "count":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u64ad\u653e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/32 v8, 0x5f5e100

    cmp-long v6, v2, v8

    if-lez v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, ".0"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v10, 0x2710

    div-long v10, v2, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\u4ebf\u6b21"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/youku/vo/VideoInfo;->duration:Ljava/lang/String;

    .line 1110
    iget-object v6, p0, Lcom/youku/http/ParseJson;->channel:Lcom/youku/vo/Channel;

    iget-object v6, v6, Lcom/youku/vo/Channel;->videoList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1104
    :cond_1
    const-wide/16 v8, 0x2710

    cmp-long v6, v2, v8

    if-lez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/text/DecimalFormat;

    const-string v9, ".0"

    invoke-direct {v8, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v10, 0x2710

    div-long v10, v2, v10

    invoke-virtual {v8, v10, v11}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\u4e07\u6b21"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\u6b21"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 1112
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "count":J
    .end local v4    # "result":Lorg/json/JSONObject;
    .end local v5    # "vi":Lcom/youku/vo/VideoInfo;
    :catch_0
    move-exception v6

    .line 1116
    :cond_3
    return-void
.end method

.method public parseSearchVideosResult()V
    .locals 8

    .prologue
    .line 1120
    :try_start_0
    invoke-direct {p0}, Lcom/youku/http/ParseJson;->getResultArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 1121
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "total"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1122
    iget-object v4, p0, Lcom/youku/http/ParseJson;->channel:Lcom/youku/vo/Channel;

    iget-object v5, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v6, "total"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/youku/vo/Channel;->totalVideo:I

    .line 1125
    :cond_0
    const/4 v2, 0x0

    .line 1126
    .local v2, "result":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1127
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1128
    new-instance v3, Lcom/youku/vo/VideoInfo;

    invoke-direct {v3}, Lcom/youku/vo/VideoInfo;-><init>()V

    .line 1129
    .local v3, "vi":Lcom/youku/vo/VideoInfo;
    const-string v4, "videoid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    .line 1130
    const-string v4, "reputation"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, v3, Lcom/youku/vo/VideoInfo;->starNum:F

    .line 1131
    const-string v4, "img"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/vo/VideoInfo;->small_img:Ljava/lang/String;

    .line 1132
    const-string v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/vo/VideoInfo;->title:Ljava/lang/String;

    .line 1133
    const-string v4, "duration"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/vo/VideoInfo;->duration:Ljava/lang/String;

    .line 1134
    iget-object v4, p0, Lcom/youku/http/ParseJson;->channel:Lcom/youku/vo/Channel;

    iget-object v4, v4, Lcom/youku/vo/Channel;->videoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1136
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "result":Lorg/json/JSONObject;
    .end local v3    # "vi":Lcom/youku/vo/VideoInfo;
    :catch_0
    move-exception v4

    .line 1140
    :cond_1
    return-void
.end method

.method public parseTradeInfo()Lcom/tudou/alipay/entity/TradeInfo;
    .locals 6

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 216
    .local v1, "mTradeInfo":Lcom/tudou/alipay/entity/TradeInfo;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 217
    iget-object v4, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "result"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    iget-object v4, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "result"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 219
    .local v3, "resultsObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/tudou/alipay/entity/TradeInfo;

    invoke-direct {v2}, Lcom/tudou/alipay/entity/TradeInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v1    # "mTradeInfo":Lcom/tudou/alipay/entity/TradeInfo;
    .local v2, "mTradeInfo":Lcom/tudou/alipay/entity/TradeInfo;
    :try_start_1
    const-string v4, "state"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tudou/alipay/entity/TradeInfo;->setState(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 225
    .end local v2    # "mTradeInfo":Lcom/tudou/alipay/entity/TradeInfo;
    .end local v3    # "resultsObject":Lorg/json/JSONObject;
    .restart local v1    # "mTradeInfo":Lcom/tudou/alipay/entity/TradeInfo;
    :cond_0
    :goto_0
    return-object v1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v4, "Youku"

    const-string v5, "ParseJson#parseTradeInfo()"

    invoke-static {v4, v5, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mTradeInfo":Lcom/tudou/alipay/entity/TradeInfo;
    .restart local v2    # "mTradeInfo":Lcom/tudou/alipay/entity/TradeInfo;
    .restart local v3    # "resultsObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "mTradeInfo":Lcom/tudou/alipay/entity/TradeInfo;
    .restart local v1    # "mTradeInfo":Lcom/tudou/alipay/entity/TradeInfo;
    goto :goto_1
.end method

.method public parseTudouUserInfo()Lcom/youku/vo/UserInfo;
    .locals 6

    .prologue
    .line 600
    new-instance v1, Lcom/youku/vo/UserInfo;

    invoke-direct {v1}, Lcom/youku/vo/UserInfo;-><init>()V

    .line 602
    .local v1, "info":Lcom/youku/vo/UserInfo;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 603
    .local v2, "object":Lorg/json/JSONObject;
    const-string v3, "nick"

    invoke-static {v2, v3}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/vo/UserInfo;->nickname:Ljava/lang/String;

    .line 604
    const-string v3, "video_count"

    invoke-static {v2, v3}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/youku/vo/UserInfo;->uploadCount:I

    .line 605
    const-string v3, "about_myself"

    invoke-static {v2, v3}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/vo/UserInfo;->aboutMyself:Ljava/lang/String;

    .line 606
    const-string v3, "view_count"

    invoke-static {v2, v3}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/youku/vo/UserInfo;->viewCount:I

    .line 608
    const-string v3, "pic"

    invoke-static {v2, v3}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/vo/UserInfo;->userpicurl:Ljava/lang/String;

    .line 609
    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/youku/util/JsonUtils;->getJsonLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/youku/vo/UserInfo;->userId:J

    .line 611
    const-string v3, "isVuser"

    invoke-static {v2, v3}, Lcom/youku/util/JsonUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/youku/vo/UserInfo;->isVuser:Z

    .line 612
    const-string v3, "about_myself"

    invoke-static {v2, v3}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/vo/UserInfo;->about_myself:Ljava/lang/String;

    .line 613
    const-string v3, "subed_count"

    invoke-static {v2, v3}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/youku/vo/UserInfo;->sub_count:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    .end local v2    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public parseUploadVideoinfo()Lcom/youku/vo/UploadVideoinfo;
    .locals 10

    .prologue
    .line 645
    new-instance v2, Lcom/youku/vo/UploadVideoinfo;

    invoke-direct {v2}, Lcom/youku/vo/UploadVideoinfo;-><init>()V

    .line 647
    .local v2, "info":Lcom/youku/vo/UploadVideoinfo;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 648
    iget-object v8, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v9, "multiPageResult"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 649
    .local v4, "jo":Lorg/json/JSONObject;
    const-string v8, "results"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 650
    .local v0, "arr":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 651
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 652
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 653
    .local v7, "results":Lorg/json/JSONObject;
    new-instance v3, Lcom/youku/vo/UploadVideoinfo$Info;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v2}, Lcom/youku/vo/UploadVideoinfo$Info;-><init>(Lcom/youku/vo/UploadVideoinfo;)V

    .line 654
    .local v3, "infoone":Lcom/youku/vo/UploadVideoinfo$Info;
    const-string v8, "channelId"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->channelId:I

    .line 655
    const-string v8, "itemCode"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->itemCode:Ljava/lang/String;

    .line 656
    const-string v8, "mediaType"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->mediaType:Ljava/lang/String;

    .line 657
    const-string v8, "picUrl"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->picUrl:Ljava/lang/String;

    .line 658
    const-string v8, "playTimes"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->playTimes:Ljava/lang/String;

    .line 659
    const-string v8, "pubDate"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->pubDate:Ljava/lang/String;

    .line 660
    const-string v8, "title"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->title:Ljava/lang/String;

    .line 661
    const-string v8, "picUrl_16_9"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->picUrl_16_9:Ljava/lang/String;

    .line 662
    const-string v8, "bigPicUrl"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->bigPicUrl:Ljava/lang/String;

    .line 663
    const-string v8, "totalTime"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->totalTime:Ljava/lang/String;

    .line 664
    const-string v8, "total_vv"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->total_vv:Ljava/lang/String;

    .line 665
    iget-object v8, v2, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v8, v8, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 668
    .end local v1    # "i":I
    .end local v3    # "infoone":Lcom/youku/vo/UploadVideoinfo$Info;
    .end local v7    # "results":Lorg/json/JSONObject;
    :cond_0
    const-string v8, "page"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 669
    .local v6, "pageobj":Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    .line 670
    new-instance v5, Lcom/youku/vo/Page;

    invoke-direct {v5}, Lcom/youku/vo/Page;-><init>()V

    .line 672
    .local v5, "page":Lcom/youku/vo/Page;
    const-string v8, "pageNo"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/youku/vo/Page;->setPageNo(I)V

    .line 673
    const-string v8, "pageSize"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/youku/vo/Page;->setPageSize(I)V

    .line 674
    const-string v8, "totalCount"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/youku/vo/Page;->setTotalCount(I)V

    .line 675
    iget-object v8, v2, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iput-object v5, v8, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v4    # "jo":Lorg/json/JSONObject;
    .end local v5    # "page":Lcom/youku/vo/Page;
    .end local v6    # "pageobj":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-object v2

    .line 677
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public parseUploadVideoinfo_V4()Lcom/youku/vo/UploadVideoinfo;
    .locals 10

    .prologue
    .line 684
    new-instance v2, Lcom/youku/vo/UploadVideoinfo;

    invoke-direct {v2}, Lcom/youku/vo/UploadVideoinfo;-><init>()V

    .line 686
    .local v2, "info":Lcom/youku/vo/UploadVideoinfo;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 688
    iget-object v8, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v9, "items"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 689
    .local v0, "arr":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 690
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 691
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 692
    .local v6, "results":Lorg/json/JSONObject;
    new-instance v3, Lcom/youku/vo/UploadVideoinfo$Info;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v2}, Lcom/youku/vo/UploadVideoinfo$Info;-><init>(Lcom/youku/vo/UploadVideoinfo;)V

    .line 693
    .local v3, "infoone":Lcom/youku/vo/UploadVideoinfo$Info;
    const-string v8, "channelId"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->channelId:I

    .line 694
    const-string v8, "icode"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->itemCode:Ljava/lang/String;

    .line 695
    const-string v8, "mediaType"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->mediaType:Ljava/lang/String;

    .line 696
    const-string v8, "coverPicUrl"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->picUrl:Ljava/lang/String;

    .line 697
    const-string v8, "playtimes_str"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->playTimes:Ljava/lang/String;

    .line 698
    const-string v8, "pubDate"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->pubDate:Ljava/lang/String;

    .line 699
    const-string v8, "title"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->title:Ljava/lang/String;

    .line 700
    const-string v8, "picUrl_448x252"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->picUrl_16_9:Ljava/lang/String;

    .line 701
    const-string v8, "picUrl_448x252"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->bigPicUrl:Ljava/lang/String;

    .line 702
    const-string v8, "totalTime"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->totalTime:Ljava/lang/String;

    .line 703
    const-string v8, "total_vv"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/youku/vo/UploadVideoinfo$Info;->total_vv:Ljava/lang/String;

    .line 704
    iget-object v8, v2, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v8, v8, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->results:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 709
    .end local v1    # "i":I
    .end local v3    # "infoone":Lcom/youku/vo/UploadVideoinfo$Info;
    .end local v6    # "results":Lorg/json/JSONObject;
    :cond_0
    new-instance v4, Lcom/youku/vo/Page;

    invoke-direct {v4}, Lcom/youku/vo/Page;-><init>()V

    .line 710
    .local v4, "page":Lcom/youku/vo/Page;
    iget-object v8, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v9, "total"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 711
    .local v7, "total":I
    iget-object v8, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v9, "page_size"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 713
    .local v5, "pagesize":I
    iget-object v8, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v9, "page_no"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/youku/vo/Page;->setPageNo(I)V

    .line 714
    invoke-virtual {v4, v5}, Lcom/youku/vo/Page;->setPageSize(I)V

    .line 715
    iget-object v8, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v9, "total"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/youku/vo/Page;->setTotalCount(I)V

    .line 716
    add-int v8, v7, v5

    add-int/lit8 v8, v8, -0x1

    div-int/2addr v8, v5

    invoke-virtual {v4, v8}, Lcom/youku/vo/Page;->setPageCount(I)V

    .line 717
    iget-object v8, v2, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iput-object v4, v8, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v4    # "page":Lcom/youku/vo/Page;
    .end local v5    # "pagesize":I
    .end local v7    # "total":I
    :goto_1
    return-object v2

    .line 719
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public parseUserInfo()V
    .locals 8

    .prologue
    .line 814
    :try_start_0
    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 815
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 816
    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "results"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 817
    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "results"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 818
    .local v4, "result":Lorg/json/JSONObject;
    new-instance v6, Lcom/youku/vo/UserProfile;

    invoke-direct {v6}, Lcom/youku/vo/UserProfile;-><init>()V

    sput-object v6, Lcom/tudou/android/Youku;->userprofile:Lcom/youku/vo/UserProfile;

    .line 821
    if-eqz v4, :cond_0

    .line 822
    sget-object v6, Lcom/tudou/android/Youku;->userprofile:Lcom/youku/vo/UserProfile;

    iget-object v6, v6, Lcom/youku/vo/UserProfile;->results:Lcom/youku/vo/UserProfile$UserProfileResult;

    const-string v7, "username"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/UserProfile$UserProfileResult;->username:Ljava/lang/String;

    .line 824
    sget-object v6, Lcom/tudou/android/Youku;->userprofile:Lcom/youku/vo/UserProfile;

    iget-object v6, v6, Lcom/youku/vo/UserProfile;->results:Lcom/youku/vo/UserProfile$UserProfileResult;

    const-string v7, "userdesc"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/UserProfile$UserProfileResult;->userdesc:Ljava/lang/String;

    .line 826
    sget-object v6, Lcom/tudou/android/Youku;->userprofile:Lcom/youku/vo/UserProfile;

    iget-object v6, v6, Lcom/youku/vo/UserProfile;->results:Lcom/youku/vo/UserProfile$UserProfileResult;

    const-string v7, "userid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/UserProfile$UserProfileResult;->userid:Ljava/lang/String;

    .line 828
    sget-object v6, Lcom/tudou/android/Youku;->userprofile:Lcom/youku/vo/UserProfile;

    iget-object v6, v6, Lcom/youku/vo/UserProfile;->results:Lcom/youku/vo/UserProfile$UserProfileResult;

    const-string v7, "avatar"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/youku/vo/UserProfile$UserProfileResult;->avatar:Ljava/lang/String;

    .line 831
    const-string v6, "items"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 832
    .local v5, "tempArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 833
    new-instance v3, Lcom/youku/vo/UserProfile$UserProfileItems;

    sget-object v6, Lcom/tudou/android/Youku;->userprofile:Lcom/youku/vo/UserProfile;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v6}, Lcom/youku/vo/UserProfile$UserProfileItems;-><init>(Lcom/youku/vo/UserProfile;)V

    .line 834
    .local v3, "items":Lcom/youku/vo/UserProfile$UserProfileItems;
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 836
    .local v0, "UserInfoObject":Lorg/json/JSONObject;
    const-string v6, "top_count"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/youku/vo/UserProfile$UserProfileItems;->top_count:I

    .line 838
    const-string v6, "bottom_count"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/youku/vo/UserProfile$UserProfileItems;->bottom_count:I

    .line 840
    const-string v6, "title"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/UserProfile$UserProfileItems;->title:Ljava/lang/String;

    .line 841
    const-string v6, "color"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/youku/vo/UserProfile$UserProfileItems;->color:I

    .line 842
    const-string v6, "id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/youku/vo/UserProfile$UserProfileItems;->id:I

    .line 843
    const-string v6, "icon"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/UserProfile$UserProfileItems;->icon:Ljava/lang/String;

    .line 844
    const-string v6, "link_url"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/UserProfile$UserProfileItems;->link_url:Ljava/lang/String;

    .line 846
    const-string v6, "link_type"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/youku/vo/UserProfile$UserProfileItems;->link_type:I

    .line 848
    sget-object v6, Lcom/tudou/android/Youku;->userprofile:Lcom/youku/vo/UserProfile;

    iget-object v6, v6, Lcom/youku/vo/UserProfile;->results:Lcom/youku/vo/UserProfile$UserProfileResult;

    iget-object v6, v6, Lcom/youku/vo/UserProfile$UserProfileResult;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 854
    .end local v0    # "UserInfoObject":Lorg/json/JSONObject;
    .end local v2    # "i":I
    .end local v3    # "items":Lcom/youku/vo/UserProfile$UserProfileItems;
    .end local v4    # "result":Lorg/json/JSONObject;
    .end local v5    # "tempArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 856
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "ParseJson.parseUserInfo()"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 858
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method public parseVideoRecommend()Lcom/youku/vo/DetailRecomment;
    .locals 8

    .prologue
    .line 109
    new-instance v0, Lcom/youku/vo/DetailRecomment;

    invoke-direct {v0}, Lcom/youku/vo/DetailRecomment;-><init>()V

    .line 111
    .local v0, "detailRecomment":Lcom/youku/vo/DetailRecomment;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 113
    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "reqInfo"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 115
    .local v4, "reqInfo":Lorg/json/JSONObject;
    const-string v6, "abver"

    invoke-static {v4, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicklog_abver:Ljava/lang/String;

    .line 116
    const-string v6, "md"

    invoke-static {v4, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicklog_md:Ljava/lang/String;

    .line 117
    const-string v6, "apt"

    invoke-static {v4, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicklog_apt:Ljava/lang/String;

    .line 118
    const-string v6, "ord"

    invoke-static {v4, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicklog_ord:Ljava/lang/String;

    .line 119
    const-string v6, "pg"

    invoke-static {v4, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicklog_pg:Ljava/lang/String;

    .line 120
    const-string v6, "req_id"

    invoke-static {v4, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicklog_req_id:Ljava/lang/String;

    .line 121
    const-string v6, "juid"

    invoke-static {v4, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicllog_juid:Ljava/lang/String;

    .line 122
    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "pcode"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicklog_pcode:Ljava/lang/String;

    .line 124
    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "pz"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/youku/vo/DetailRecomment;->pz:I

    .line 125
    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "pg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/youku/vo/DetailRecomment;->pg:I

    .line 126
    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "total"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/youku/vo/DetailRecomment;->total:I

    .line 127
    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "results"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 128
    .local v2, "related":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 129
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 130
    .local v5, "rv":Lorg/json/JSONObject;
    new-instance v3, Lcom/youku/vo/RelatedVideo;

    invoke-direct {v3}, Lcom/youku/vo/RelatedVideo;-><init>()V

    .line 131
    .local v3, "relatedVideo":Lcom/youku/vo/RelatedVideo;
    const-string v6, "reputation"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonDoubleHalf(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v6

    iput v6, v3, Lcom/youku/vo/RelatedVideo;->reputation:F

    .line 133
    const-string v6, "img"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->img:Ljava/lang/String;

    .line 134
    const-string v6, "stripe_bottom"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->strip_bottom:Ljava/lang/String;

    .line 136
    const-string v6, "title"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->title:Ljava/lang/String;

    .line 137
    const-string v6, "itemCode"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    .line 138
    const-string v6, "showid"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->showid:Ljava/lang/String;

    .line 139
    const-string v6, "pv"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->pv:Ljava/lang/String;

    .line 140
    const-string v6, "pv_pr"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->pv_pr:Ljava/lang/String;

    .line 141
    const-string v6, "img_16_9"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->img_16_9:Ljava/lang/String;

    .line 142
    const-string v6, "channelId"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->clicklog_channelId:Ljava/lang/String;

    .line 143
    const-string v6, "dma"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->clicklog_dma:Ljava/lang/String;

    .line 144
    const-string v6, "algInfo"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->clicklog_algInfo:Ljava/lang/String;

    .line 145
    const-string v6, "lcode"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->clicklog_lcode:Ljava/lang/String;

    .line 146
    const-string v6, "type"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->clicklog_Type:Ljava/lang/String;

    .line 147
    iget-object v6, v0, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 149
    .end local v1    # "i":I
    .end local v2    # "related":Lorg/json/JSONArray;
    .end local v3    # "relatedVideo":Lcom/youku/vo/RelatedVideo;
    .end local v4    # "reqInfo":Lorg/json/JSONObject;
    .end local v5    # "rv":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 152
    :cond_0
    return-object v0
.end method

.method public parseVideoRecommendByAlbum()Lcom/youku/vo/DetailRecomment;
    .locals 8

    .prologue
    .line 155
    new-instance v0, Lcom/youku/vo/DetailRecomment;

    invoke-direct {v0}, Lcom/youku/vo/DetailRecomment;-><init>()V

    .line 157
    .local v0, "detailRecomment":Lcom/youku/vo/DetailRecomment;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 159
    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "reqInfo"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 161
    .local v4, "reqInfo":Lorg/json/JSONObject;
    const-string v6, "abver"

    invoke-static {v4, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicklog_abver:Ljava/lang/String;

    .line 162
    const-string v6, "md"

    invoke-static {v4, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicklog_md:Ljava/lang/String;

    .line 163
    const-string v6, "apt"

    invoke-static {v4, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicklog_apt:Ljava/lang/String;

    .line 164
    const-string v6, "ord"

    invoke-static {v4, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicklog_ord:Ljava/lang/String;

    .line 165
    const-string v6, "pg"

    invoke-static {v4, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicklog_pg:Ljava/lang/String;

    .line 166
    const-string v6, "req_id"

    invoke-static {v4, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicklog_req_id:Ljava/lang/String;

    .line 167
    const-string v6, "juid"

    invoke-static {v4, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicllog_juid:Ljava/lang/String;

    .line 168
    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "pcode"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/youku/vo/DetailRecomment;->clicklog_pcode:Ljava/lang/String;

    .line 170
    iget-object v6, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "recommendItems"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 171
    .local v2, "related":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 172
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 173
    .local v5, "rv":Lorg/json/JSONObject;
    new-instance v3, Lcom/youku/vo/RelatedVideo;

    invoke-direct {v3}, Lcom/youku/vo/RelatedVideo;-><init>()V

    .line 174
    .local v3, "relatedVideo":Lcom/youku/vo/RelatedVideo;
    const-string v6, "reputation"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonDoubleHalf(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v6

    iput v6, v3, Lcom/youku/vo/RelatedVideo;->reputation:F

    .line 176
    const-string v6, "img"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->img:Ljava/lang/String;

    .line 177
    const-string v6, "stripe_bottom"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->strip_bottom:Ljava/lang/String;

    .line 178
    const-string v6, "shortDesc"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->shortDesc:Ljava/lang/String;

    .line 179
    const-string v6, "title"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->title:Ljava/lang/String;

    .line 180
    const-string v6, "lcode"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->videoid:Ljava/lang/String;

    .line 181
    const-string v6, "lid"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->showid:Ljava/lang/String;

    .line 182
    const-string v6, "pv"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->pv:Ljava/lang/String;

    .line 183
    const-string v6, "pv_pr"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->pv_pr:Ljava/lang/String;

    .line 184
    const-string v6, "picUrl"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->img_16_9:Ljava/lang/String;

    .line 185
    const-string v6, "channelId"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->clicklog_channelId:Ljava/lang/String;

    .line 186
    const-string v6, "dma"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->clicklog_dma:Ljava/lang/String;

    .line 187
    const-string v6, "algInfo"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->clicklog_algInfo:Ljava/lang/String;

    .line 188
    const-string v6, "lcode"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->clicklog_lcode:Ljava/lang/String;

    .line 189
    const-string v6, "type"

    invoke-static {v5, v6}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/youku/vo/RelatedVideo;->clicklog_Type:Ljava/lang/String;

    .line 190
    iget-object v6, v0, Lcom/youku/vo/DetailRecomment;->relatedlist:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 192
    .end local v1    # "i":I
    .end local v2    # "related":Lorg/json/JSONArray;
    .end local v3    # "relatedVideo":Lcom/youku/vo/RelatedVideo;
    .end local v4    # "reqInfo":Lorg/json/JSONObject;
    .end local v5    # "rv":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 195
    :cond_0
    return-object v0
.end method

.method public parseVideoSeris_ForV3_3(I)Lcom/youku/vo/DetailSeris;
    .locals 21
    .param p1, "desc"    # I

    .prologue
    .line 367
    new-instance v2, Lcom/youku/vo/DetailSeris;

    invoke-direct {v2}, Lcom/youku/vo/DetailSeris;-><init>()V

    .line 369
    .local v2, "detailseris":Lcom/youku/vo/DetailSeris;
    :try_start_0
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "completed"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v2, Lcom/youku/vo/DetailSeris;->completed:Z

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "seriesmode"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/youku/vo/DetailSeris;->seriesmode:Ljava/lang/String;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "episodemode"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/youku/vo/DetailSeris;->episodemode:Ljava/lang/String;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "playlist_name"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/youku/vo/DetailSeris;->playlist_name:Ljava/lang/String;

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "day_radio"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v2, Lcom/youku/vo/DetailSeris;->day_radio:Z

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "cid"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/youku/vo/DetailSeris;->cid:Ljava/lang/String;

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "language_info"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 377
    .local v7, "language":Lorg/json/JSONArray;
    if-eqz v7, :cond_0

    .line 378
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_0

    .line 379
    new-instance v4, Lcom/youku/vo/DetailSeris$Languageinfo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v2}, Lcom/youku/vo/DetailSeris$Languageinfo;-><init>(Lcom/youku/vo/DetailSeris;)V

    .line 380
    .local v4, "info":Lcom/youku/vo/DetailSeris$Languageinfo;
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "is_default"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/youku/vo/DetailSeris$Languageinfo;->is_default:Z

    .line 382
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "lang"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/youku/vo/DetailSeris$Languageinfo;->lang:Ljava/lang/String;

    .line 383
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "langcode"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Lcom/youku/vo/DetailSeris$Languageinfo;->langCode:Ljava/lang/String;

    .line 385
    iget-object v0, v2, Lcom/youku/vo/DetailSeris;->langlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    .end local v3    # "i":I
    .end local v4    # "info":Lcom/youku/vo/DetailSeris$Languageinfo;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v18, v0

    const-string v19, "items"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 389
    .local v13, "related":Lorg/json/JSONArray;
    iget-boolean v0, v2, Lcom/youku/vo/DetailSeris;->day_radio:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 390
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_2

    .line 391
    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 392
    .local v15, "sv":Lorg/json/JSONObject;
    new-instance v16, Lcom/youku/vo/DetailSeris$YearData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/youku/vo/DetailSeris$YearData;-><init>(Lcom/youku/vo/DetailSeris;)V

    .line 393
    .local v16, "yearData":Lcom/youku/vo/DetailSeris$YearData;
    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/youku/vo/DetailSeris$YearData;->tag:Ljava/lang/String;

    .line 394
    const-string v18, "year"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/youku/vo/DetailSeris$YearData;->value:Ljava/lang/String;

    .line 395
    const-string v18, "year_data"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 396
    .local v17, "yeardata":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_4

    .line 397
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 398
    .local v8, "month":Lorg/json/JSONObject;
    new-instance v10, Lcom/youku/vo/DetailSeris$MonthData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v2}, Lcom/youku/vo/DetailSeris$MonthData;-><init>(Lcom/youku/vo/DetailSeris;)V

    .line 399
    .local v10, "monthData":Lcom/youku/vo/DetailSeris$MonthData;
    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/youku/vo/DetailSeris$MonthData;->tag:Ljava/lang/String;

    .line 400
    const-string v18, "month_data"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 401
    .local v11, "monthdata":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_3

    .line 402
    new-instance v14, Lcom/youku/vo/SeriesVideo;

    invoke-direct {v14}, Lcom/youku/vo/SeriesVideo;-><init>()V

    .line 403
    .local v14, "seriesVideo":Lcom/youku/vo/SeriesVideo;
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "dummy"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v14, Lcom/youku/vo/SeriesVideo;->dummy:Z

    .line 405
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "reputation"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonDoubleHalf(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/youku/vo/SeriesVideo;->reputation:F

    .line 409
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "img"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/youku/vo/SeriesVideo;->img:Ljava/lang/String;

    .line 411
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "strip_bottom"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/youku/vo/SeriesVideo;->strip_bottom:Ljava/lang/String;

    .line 413
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "title"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/youku/vo/SeriesVideo;->title:Ljava/lang/String;

    .line 415
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "iid"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    .line 417
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "show_videostage"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/youku/vo/SeriesVideo;->video_stage:I

    .line 420
    iget-object v0, v2, Lcom/youku/vo/DetailSeris;->episodemode:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "date"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 421
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "episode"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/youku/vo/SeriesVideo;->video_stage:I

    .line 427
    :goto_4
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "duration"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonDouble(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/youku/vo/SeriesVideo;->duration:F

    .line 429
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "vcode"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/youku/vo/SeriesVideo;->vcode:Ljava/lang/String;

    .line 431
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "limit"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/youku/vo/SeriesVideo;->limit:I

    .line 433
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "nickname"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/youku/vo/SeriesVideo;->nickname:Ljava/lang/String;

    .line 435
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "hdType"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/youku/vo/SeriesVideo;->hdType:I

    .line 437
    iget-object v0, v10, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 424
    :cond_1
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "seq"

    invoke-static/range {v18 .. v19}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/youku/vo/SeriesVideo;->video_stage:I

    goto :goto_4

    .line 524
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v6    # "k":I
    .end local v7    # "language":Lorg/json/JSONArray;
    .end local v8    # "month":Lorg/json/JSONObject;
    .end local v10    # "monthData":Lcom/youku/vo/DetailSeris$MonthData;
    .end local v11    # "monthdata":Lorg/json/JSONArray;
    .end local v13    # "related":Lorg/json/JSONArray;
    .end local v14    # "seriesVideo":Lcom/youku/vo/SeriesVideo;
    .end local v15    # "sv":Lorg/json/JSONObject;
    .end local v16    # "yearData":Lcom/youku/vo/DetailSeris$YearData;
    .end local v17    # "yeardata":Lorg/json/JSONArray;
    :catch_0
    move-exception v18

    .line 527
    :cond_2
    :goto_5
    return-object v2

    .line 439
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "k":I
    .restart local v7    # "language":Lorg/json/JSONArray;
    .restart local v8    # "month":Lorg/json/JSONObject;
    .restart local v10    # "monthData":Lcom/youku/vo/DetailSeris$MonthData;
    .restart local v11    # "monthdata":Lorg/json/JSONArray;
    .restart local v13    # "related":Lorg/json/JSONArray;
    .restart local v15    # "sv":Lorg/json/JSONObject;
    .restart local v16    # "yearData":Lcom/youku/vo/DetailSeris$YearData;
    .restart local v17    # "yeardata":Lorg/json/JSONArray;
    :cond_3
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 441
    .end local v6    # "k":I
    .end local v8    # "month":Lorg/json/JSONObject;
    .end local v10    # "monthData":Lcom/youku/vo/DetailSeris$MonthData;
    .end local v11    # "monthdata":Lorg/json/JSONArray;
    :cond_4
    iget-object v0, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 444
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v15    # "sv":Lorg/json/JSONObject;
    .end local v16    # "yearData":Lcom/youku/vo/DetailSeris$YearData;
    .end local v17    # "yeardata":Lorg/json/JSONArray;
    :cond_5
    new-instance v16, Lcom/youku/vo/DetailSeris$YearData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/youku/vo/DetailSeris$YearData;-><init>(Lcom/youku/vo/DetailSeris;)V

    .line 445
    .restart local v16    # "yearData":Lcom/youku/vo/DetailSeris$YearData;
    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/youku/vo/DetailSeris$YearData;->tag:Ljava/lang/String;

    .line 446
    const-string v18, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/youku/vo/DetailSeris$YearData;->value:Ljava/lang/String;

    .line 448
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v18

    rem-int/lit8 v18, v18, 0x19

    if-eqz v18, :cond_7

    .line 449
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v18

    div-int/lit8 v18, v18, 0x19

    add-int/lit8 v9, v18, 0x1

    .line 455
    .local v9, "monthCount":I
    :goto_6
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7
    if-ge v3, v9, :cond_a

    .line 456
    new-instance v10, Lcom/youku/vo/DetailSeris$MonthData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v2}, Lcom/youku/vo/DetailSeris$MonthData;-><init>(Lcom/youku/vo/DetailSeris;)V

    .line 457
    .restart local v10    # "monthData":Lcom/youku/vo/DetailSeris$MonthData;
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_8
    const/16 v18, 0x19

    move/from16 v0, v18

    if-ge v5, v0, :cond_6

    .line 458
    mul-int/lit8 v18, v3, 0x19

    add-int v12, v18, v5

    .line 459
    .local v12, "pos":I
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v12, v0, :cond_8

    .line 515
    .end local v12    # "pos":I
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/youku/vo/SeriesVideo;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/youku/vo/SeriesVideo;->video_stage:I

    move/from16 v18, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v10, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/youku/vo/SeriesVideo;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/youku/vo/SeriesVideo;->video_stage:I

    move/from16 v18, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/youku/vo/DetailSeris$MonthData;->tag:Ljava/lang/String;

    .line 520
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/youku/vo/DetailSeris$YearData;->monthList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 452
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v9    # "monthCount":I
    .end local v10    # "monthData":Lcom/youku/vo/DetailSeris$MonthData;
    :cond_7
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v18

    div-int/lit8 v9, v18, 0x19

    .restart local v9    # "monthCount":I
    goto/16 :goto_6

    .line 462
    .restart local v3    # "i":I
    .restart local v5    # "j":I
    .restart local v10    # "monthData":Lcom/youku/vo/DetailSeris$MonthData;
    .restart local v12    # "pos":I
    :cond_8
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 463
    .restart local v15    # "sv":Lorg/json/JSONObject;
    new-instance v14, Lcom/youku/vo/SeriesVideo;

    invoke-direct {v14}, Lcom/youku/vo/SeriesVideo;-><init>()V

    .line 464
    .restart local v14    # "seriesVideo":Lcom/youku/vo/SeriesVideo;
    const-string v18, "dummy"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/youku/util/JsonUtils;->getJsonBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v14, Lcom/youku/vo/SeriesVideo;->dummy:Z

    .line 466
    const-string v18, "reputation"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/youku/util/JsonUtils;->getJsonDoubleHalf(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/youku/vo/SeriesVideo;->reputation:F

    .line 468
    const-string v18, "img"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/youku/vo/SeriesVideo;->img:Ljava/lang/String;

    .line 469
    const-string v18, "strip_bottom"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/youku/vo/SeriesVideo;->strip_bottom:Ljava/lang/String;

    .line 471
    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/youku/vo/SeriesVideo;->title:Ljava/lang/String;

    .line 473
    const-string v18, "iid"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/youku/vo/SeriesVideo;->videoid:Ljava/lang/String;

    .line 475
    const-string v18, "nickname"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/youku/vo/SeriesVideo;->nickname:Ljava/lang/String;

    .line 477
    const-string v18, "publishDate"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/youku/vo/SeriesVideo;->publishDate:Ljava/lang/String;

    .line 479
    const-string v18, "duration"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/youku/util/JsonUtils;->getJsonDouble(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/youku/vo/SeriesVideo;->duration:F

    .line 481
    const-string v18, "playtimes"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/youku/vo/SeriesVideo;->playtimes:Ljava/lang/String;

    .line 485
    iget-object v0, v2, Lcom/youku/vo/DetailSeris;->episodemode:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "date"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 486
    const-string v18, "episode"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/youku/vo/SeriesVideo;->video_stage:I

    .line 509
    :goto_9
    const-string v18, "vcode"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/youku/util/JsonUtils;->getJsonString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/youku/vo/SeriesVideo;->vcode:Ljava/lang/String;

    .line 511
    const-string v18, "limit"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/youku/vo/SeriesVideo;->limit:I

    .line 512
    const-string v18, "hdType"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/youku/vo/SeriesVideo;->hdType:I

    .line 513
    iget-object v0, v10, Lcom/youku/vo/DetailSeris$MonthData;->seriesList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 489
    :cond_9
    const-string v18, "seq"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/youku/util/JsonUtils;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/youku/vo/SeriesVideo;->video_stage:I

    goto :goto_9

    .line 522
    .end local v5    # "j":I
    .end local v10    # "monthData":Lcom/youku/vo/DetailSeris$MonthData;
    .end local v12    # "pos":I
    .end local v14    # "seriesVideo":Lcom/youku/vo/SeriesVideo;
    .end local v15    # "sv":Lorg/json/JSONObject;
    :cond_a
    iget-object v0, v2, Lcom/youku/vo/DetailSeris;->datalist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5
.end method

.method public paseHomePageData(Ljava/lang/Object;)[Lcom/youku/vo/HomeBean;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 759
    move-object v2, p1

    check-cast v2, Lorg/json/JSONArray;

    .line 760
    .local v2, "resuts":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v0, v3, [Lcom/youku/vo/HomeBean;

    .line 761
    .local v0, "bean":[Lcom/youku/vo/HomeBean;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 762
    :cond_0
    const/4 v0, 0x0

    .line 767
    .end local v0    # "bean":[Lcom/youku/vo/HomeBean;
    :cond_1
    return-object v0

    .line 764
    .restart local v0    # "bean":[Lcom/youku/vo/HomeBean;
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 765
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/youku/http/ParseJson;->paseHomepageDataOne(Ljava/lang/Object;)Lcom/youku/vo/HomeBean;

    move-result-object v3

    aput-object v3, v0, v1

    .line 764
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public paseHomepageDataOne(Ljava/lang/Object;)Lcom/youku/vo/HomeBean;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 771
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    .line 773
    new-instance v1, Lcom/youku/vo/HomeBean;

    invoke-direct {v1}, Lcom/youku/vo/HomeBean;-><init>()V

    .line 775
    .local v1, "bean":Lcom/youku/vo/HomeBean;
    iget-object v3, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "img"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 776
    .local v0, "arr":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/youku/vo/HomeBean;->img:[Ljava/lang/String;

    .line 777
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 778
    iget-object v3, v1, Lcom/youku/vo/HomeBean;->img:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 777
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 780
    :cond_0
    iget-object v3, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 781
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/youku/vo/HomeBean;->title:[Ljava/lang/String;

    .line 782
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 783
    iget-object v3, v1, Lcom/youku/vo/HomeBean;->title:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 782
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 785
    :cond_1
    iget-object v3, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "tid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 786
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/youku/vo/HomeBean;->tid:[Ljava/lang/String;

    .line 787
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 788
    iget-object v3, v1, Lcom/youku/vo/HomeBean;->tid:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 787
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 790
    :cond_2
    iget-object v3, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, v1, Lcom/youku/vo/HomeBean;->type:[I

    .line 792
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 793
    iget-object v3, v1, Lcom/youku/vo/HomeBean;->type:[I

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v2

    .line 792
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 795
    :cond_3
    iget-object v3, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "remark"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v1, Lcom/youku/vo/HomeBean;->remark:[Ljava/lang/String;

    .line 797
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 798
    iget-object v3, v1, Lcom/youku/vo/HomeBean;->remark:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 797
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 800
    :cond_4
    iget-object v3, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "playlist_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 801
    iget-object v3, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "playlist_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/youku/vo/HomeBean;->playlist_id:Ljava/lang/String;

    .line 803
    :cond_5
    iget-object v3, p0, Lcom/youku/http/ParseJson;->jsonObject:Lorg/json/JSONObject;

    const-string v4, "img_size"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/youku/vo/HomeBean;->img_size:I

    .line 805
    return-object v1
.end method

.method public setJsonString(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/youku/http/ParseJson;->jsonString:Ljava/lang/String;

    .line 77
    return-void
.end method
