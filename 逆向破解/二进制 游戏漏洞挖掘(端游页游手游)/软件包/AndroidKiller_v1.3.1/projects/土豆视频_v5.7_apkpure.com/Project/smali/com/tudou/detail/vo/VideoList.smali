.class public Lcom/tudou/detail/vo/VideoList;
.super Ljava/lang/Object;
.source "VideoList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final SERIES_MODE_CHINESE:Ljava/lang/String; = "chinese"

.field public static final SERIES_MODE_NUMBER:Ljava/lang/String; = "number"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlbumId:I

.field private mCacheKeyName:Ljava/lang/String;

.field private mChannelId:I

.field private mCompleted:Z

.field private mEpisodeMode:Ljava/lang/String;

.field private mEpisodeTotal:I

.field private mHdType:I

.field private mIsCached:Z

.field private mLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Video$Language;",
            ">;"
        }
    .end annotation
.end field

.field private mSeriesMode:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:Lcom/tudou/android/Youku$VideoType;

.field private mVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/tudou/detail/vo/VideoList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/vo/VideoList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/detail/vo/VideoList;->mIsCached:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    return-void
.end method

.method public static createFromDownloadInfos(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/tudou/detail/vo/VideoList;
    .locals 9
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/download/DownloadInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tudou/detail/vo/VideoList;"
        }
    .end annotation

    .prologue
    .local p0, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/download/DownloadInfo;>;"
    const/4 v8, 0x1

    .line 143
    sget-object v5, Lcom/tudou/detail/vo/VideoList;->TAG:Ljava/lang/String;

    const-string v6, "createFromDownloadInfos"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v2, Lcom/tudou/detail/vo/VideoList;

    invoke-direct {v2}, Lcom/tudou/detail/vo/VideoList;-><init>()V

    .line 145
    .local v2, "list":Lcom/tudou/detail/vo/VideoList;
    const/4 v3, 0x0

    .line 146
    .local v3, "listSetted":Z
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 147
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 148
    .local v1, "info":Lcom/tudou/service/download/DownloadInfo;
    new-instance v4, Lcom/tudou/detail/vo/Video;

    invoke-direct {v4}, Lcom/tudou/detail/vo/Video;-><init>()V

    .line 149
    .local v4, "video":Lcom/tudou/detail/vo/Video;
    iget-object v5, v1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    iput-object v5, v4, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    .line 150
    iget v5, v1, Lcom/tudou/service/download/DownloadInfo;->show_videostage:I

    iput v5, v4, Lcom/tudou/detail/vo/Video;->mEpisode:I

    .line 151
    iget v5, v1, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    int-to-double v6, v5

    iput-wide v6, v4, Lcom/tudou/detail/vo/Video;->mDuration:D

    .line 152
    iget v5, v1, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    iput v5, v4, Lcom/tudou/detail/vo/Video;->mSeq:I

    .line 153
    iput-boolean v8, v4, Lcom/tudou/detail/vo/Video;->mIsCached:Z

    .line 154
    iget v5, v1, Lcom/tudou/service/download/DownloadInfo;->verCode:I

    iput v5, v4, Lcom/tudou/detail/vo/Video;->mCachedVer:I

    .line 155
    iget v5, v4, Lcom/tudou/detail/vo/Video;->mCachedVer:I

    const/16 v6, 0x39

    if-ge v5, v6, :cond_2

    .line 156
    const-string v5, "chinese"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 157
    iget-object v5, v1, Lcom/tudou/service/download/DownloadInfo;->title:Ljava/lang/String;

    iput-object v5, v4, Lcom/tudou/detail/vo/Video;->mTitle:Ljava/lang/String;

    .line 165
    :goto_1
    :try_start_0
    iget-object v5, v1, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/tudou/detail/vo/Video;->mAlbumId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_2
    iget-object v5, v2, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    if-nez v3, :cond_0

    .line 170
    iget-object v5, v1, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    iput-object v5, v2, Lcom/tudou/detail/vo/VideoList;->mTitle:Ljava/lang/String;

    .line 171
    iput-object p1, v2, Lcom/tudou/detail/vo/VideoList;->mSeriesMode:Ljava/lang/String;

    .line 172
    iget v5, v4, Lcom/tudou/detail/vo/Video;->mAlbumId:I

    iput v5, v2, Lcom/tudou/detail/vo/VideoList;->mAlbumId:I

    .line 173
    iput-boolean v8, v2, Lcom/tudou/detail/vo/VideoList;->mIsCached:Z

    .line 174
    iget v5, v2, Lcom/tudou/detail/vo/VideoList;->mAlbumId:I

    if-lez v5, :cond_3

    .line 175
    sget-object v5, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    iput-object v5, v2, Lcom/tudou/detail/vo/VideoList;->mType:Lcom/tudou/android/Youku$VideoType;

    .line 179
    :goto_3
    sget-object v5, Lcom/tudou/detail/vo/VideoList;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createFromDownloadInfos listSetted = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTitle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/tudou/detail/vo/VideoList;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seriesMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/tudou/detail/vo/VideoList;->mSeriesMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 159
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lcom/tudou/service/download/DownloadInfo;->show_videostage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tudou/detail/vo/Video;->mTitle:Ljava/lang/String;

    goto :goto_1

    .line 162
    :cond_2
    iget-object v5, v1, Lcom/tudou/service/download/DownloadInfo;->xuanjiTitle:Ljava/lang/String;

    iput-object v5, v4, Lcom/tudou/detail/vo/Video;->mTitle:Ljava/lang/String;

    goto :goto_1

    .line 177
    :cond_3
    sget-object v5, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    iput-object v5, v2, Lcom/tudou/detail/vo/VideoList;->mType:Lcom/tudou/android/Youku$VideoType;

    goto :goto_3

    .line 184
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    .end local v4    # "video":Lcom/tudou/detail/vo/Video;
    :cond_4
    return-object v2

    .line 166
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "info":Lcom/tudou/service/download/DownloadInfo;
    .restart local v4    # "video":Lcom/tudou/detail/vo/Video;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static createFromJson(Ljava/lang/String;Lcom/tudou/android/Youku$VideoType;)Lcom/tudou/detail/vo/VideoList;
    .locals 12
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/tudou/android/Youku$VideoType;

    .prologue
    .line 188
    const/4 v3, 0x0

    .line 190
    .local v3, "ret":Lcom/tudou/detail/vo/VideoList;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    .local v5, "root":Lorg/json/JSONObject;
    new-instance v4, Lcom/tudou/detail/vo/VideoList;

    invoke-direct {v4}, Lcom/tudou/detail/vo/VideoList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    .end local v3    # "ret":Lcom/tudou/detail/vo/VideoList;
    .local v4, "ret":Lcom/tudou/detail/vo/VideoList;
    :try_start_1
    iput-object p1, v4, Lcom/tudou/detail/vo/VideoList;->mType:Lcom/tudou/android/Youku$VideoType;

    .line 193
    sget-object v10, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v10, p1, :cond_1

    .line 194
    const-string/jumbo v10, "title"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/tudou/detail/vo/VideoList;->mTitle:Ljava/lang/String;

    .line 195
    const-string/jumbo v10, "seriesmode"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/tudou/detail/vo/VideoList;->mSeriesMode:Ljava/lang/String;

    .line 196
    const-string v10, "episode_total"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/tudou/detail/vo/VideoList;->mEpisodeTotal:I

    .line 197
    const-string v10, "cache.key.name"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/tudou/detail/vo/VideoList;->mCacheKeyName:Ljava/lang/String;

    .line 198
    const-string v10, "hdType"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/tudou/detail/vo/VideoList;->mHdType:I

    .line 199
    const-string v10, "completed"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, v4, Lcom/tudou/detail/vo/VideoList;->mCompleted:Z

    .line 200
    const-string v10, "aid"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/tudou/detail/vo/VideoList;->mAlbumId:I

    .line 201
    const-string v10, "episodemode"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/tudou/detail/vo/VideoList;->mEpisodeMode:Ljava/lang/String;

    .line 202
    const-string v10, "channelId"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/tudou/detail/vo/VideoList;->mChannelId:I

    .line 203
    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/tudou/detail/vo/VideoList;->mIsCached:Z

    .line 204
    const-string v10, "language_info"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 205
    .local v6, "tLanguages":Lorg/json/JSONArray;
    if-eqz v6, :cond_2

    .line 206
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v4, Lcom/tudou/detail/vo/VideoList;->mLanguages:Ljava/util/ArrayList;

    .line 207
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 208
    .local v7, "tSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_2

    .line 209
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lcom/tudou/detail/vo/Video$Language;->createFromJson(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/Video$Language;

    move-result-object v2

    .line 210
    .local v2, "lan":Lcom/tudou/detail/vo/Video$Language;
    if-eqz v2, :cond_0

    .line 211
    iget-object v10, v4, Lcom/tudou/detail/vo/VideoList;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "i":I
    .end local v2    # "lan":Lcom/tudou/detail/vo/Video$Language;
    .end local v6    # "tLanguages":Lorg/json/JSONArray;
    .end local v7    # "tSize":I
    :cond_1
    sget-object v10, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v10, p1, :cond_4

    .line 216
    const-string v10, "playlist_name"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/tudou/detail/vo/VideoList;->mTitle:Ljava/lang/String;

    .line 217
    const-string/jumbo v10, "seriesmode"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/tudou/detail/vo/VideoList;->mSeriesMode:Ljava/lang/String;

    .line 218
    const-string/jumbo v10, "total"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/tudou/detail/vo/VideoList;->mEpisodeTotal:I

    .line 222
    :cond_2
    const-string v10, "items"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 223
    .local v8, "tVideos":Lorg/json/JSONArray;
    if-eqz v8, :cond_5

    .line 224
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v4, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    .line 225
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 226
    .restart local v7    # "tSize":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v7, :cond_5

    .line 227
    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/tudou/detail/vo/Video;->createFromJson(Lorg/json/JSONObject;Lcom/tudou/android/Youku$VideoType;)Lcom/tudou/detail/vo/Video;

    move-result-object v9

    .line 228
    .local v9, "video":Lcom/tudou/detail/vo/Video;
    if-eqz v9, :cond_3

    .line 229
    iget-object v10, v4, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v10, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v10, p1, :cond_3

    .line 231
    iget-object v10, v4, Lcom/tudou/detail/vo/VideoList;->mTitle:Ljava/lang/String;

    iput-object v10, v9, Lcom/tudou/detail/vo/Video;->mAlbumName:Ljava/lang/String;

    .line 232
    iget v10, v4, Lcom/tudou/detail/vo/VideoList;->mAlbumId:I

    iput v10, v9, Lcom/tudou/detail/vo/Video;->mAlbumId:I

    .line 226
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    .end local v1    # "i":I
    .end local v7    # "tSize":I
    .end local v8    # "tVideos":Lorg/json/JSONArray;
    .end local v9    # "video":Lcom/tudou/detail/vo/Video;
    :cond_4
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10}, Ljava/lang/RuntimeException;-><init>()V

    throw v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 238
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 239
    .end local v4    # "ret":Lcom/tudou/detail/vo/VideoList;
    .end local v5    # "root":Lorg/json/JSONObject;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v3    # "ret":Lcom/tudou/detail/vo/VideoList;
    :goto_2
    sget-object v10, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v11, ""

    invoke-static {v10, v11, v0}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    const/4 v3, 0x0

    .line 242
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    return-object v3

    .end local v3    # "ret":Lcom/tudou/detail/vo/VideoList;
    .restart local v4    # "ret":Lcom/tudou/detail/vo/VideoList;
    .restart local v5    # "root":Lorg/json/JSONObject;
    .restart local v8    # "tVideos":Lorg/json/JSONArray;
    :cond_5
    move-object v3, v4

    .line 241
    .end local v4    # "ret":Lcom/tudou/detail/vo/VideoList;
    .restart local v3    # "ret":Lcom/tudou/detail/vo/VideoList;
    goto :goto_3

    .line 238
    .end local v5    # "root":Lorg/json/JSONObject;
    .end local v8    # "tVideos":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static createFromVideoDetail(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/detail/vo/VideoList;
    .locals 5
    .param p0, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    const/4 v4, 0x0

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "ret":Lcom/tudou/detail/vo/VideoList;
    if-eqz p0, :cond_0

    .line 50
    invoke-static {p0}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v1

    .line 52
    .local v1, "type":Lcom/tudou/android/Youku$VideoType;
    new-instance v0, Lcom/tudou/detail/vo/VideoList;

    .end local v0    # "ret":Lcom/tudou/detail/vo/VideoList;
    invoke-direct {v0}, Lcom/tudou/detail/vo/VideoList;-><init>()V

    .line 53
    .restart local v0    # "ret":Lcom/tudou/detail/vo/VideoList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    .line 54
    iput-object v1, v0, Lcom/tudou/detail/vo/VideoList;->mType:Lcom/tudou/android/Youku$VideoType;

    .line 56
    :try_start_0
    iget-object v3, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/tudou/detail/vo/VideoList;->mAlbumId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    iget-object v3, p0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    iput-object v3, v0, Lcom/tudou/detail/vo/VideoList;->mTitle:Ljava/lang/String;

    .line 60
    iput v4, v0, Lcom/tudou/detail/vo/VideoList;->mEpisodeTotal:I

    .line 61
    const-string v3, "chinese"

    iput-object v3, v0, Lcom/tudou/detail/vo/VideoList;->mSeriesMode:Ljava/lang/String;

    .line 62
    iput-boolean v4, v0, Lcom/tudou/detail/vo/VideoList;->mIsCached:Z

    .line 63
    invoke-static {p0}, Lcom/tudou/detail/vo/Video;->createFromVideoDetail(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/detail/vo/Video;

    move-result-object v2

    .line 64
    .local v2, "video":Lcom/tudou/detail/vo/Video;
    if-eqz v2, :cond_0

    .line 65
    iget-object v3, v0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v3, 0x1

    iput v3, v0, Lcom/tudou/detail/vo/VideoList;->mEpisodeTotal:I

    .line 70
    .end local v1    # "type":Lcom/tudou/android/Youku$VideoType;
    .end local v2    # "video":Lcom/tudou/detail/vo/Video;
    :cond_0
    return-object v0

    .line 57
    .restart local v1    # "type":Lcom/tudou/android/Youku$VideoType;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .local v0, "ret":Ljava/lang/Object;
    move-object v1, v0

    .line 80
    check-cast v1, Lcom/tudou/detail/vo/VideoList;

    .line 81
    .local v1, "retList":Lcom/tudou/detail/vo/VideoList;
    iget-object v2, v1, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    .line 82
    .local v2, "tmp":Ljava/util/ArrayList;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    .line 83
    iget-object v3, v1, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    return-object v0
.end method

.method public copy()Lcom/tudou/detail/vo/VideoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/VideoList;

    return-object v0
.end method

.method public get(I)Lcom/tudou/detail/vo/Video;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "ret":Lcom/tudou/detail/vo/Video;
    iget-object v1, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ret":Lcom/tudou/detail/vo/Video;
    check-cast v0, Lcom/tudou/detail/vo/Video;

    .line 366
    .restart local v0    # "ret":Lcom/tudou/detail/vo/Video;
    return-object v0

    .line 364
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getAlbumId()I
    .locals 2

    .prologue
    .line 300
    sget-object v0, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->getVideoType()Lcom/tudou/android/Youku$VideoType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 301
    iget v0, p0, Lcom/tudou/detail/vo/VideoList;->mAlbumId:I

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCacheKeyName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    sget-object v0, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->getVideoType()Lcom/tudou/android/Youku$VideoType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoList;->mCacheKeyName:Ljava/lang/String;

    .line 282
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCacheVer()I
    .locals 4

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, "minVer":I
    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 128
    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/Video;

    .line 129
    .local v2, "v":Lcom/tudou/detail/vo/Video;
    iget-boolean v3, v2, Lcom/tudou/detail/vo/Video;->mIsCached:Z

    if-eqz v3, :cond_0

    .line 130
    if-nez v1, :cond_1

    .line 131
    invoke-virtual {v2}, Lcom/tudou/detail/vo/Video;->getCacheVer()I

    move-result v1

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v2}, Lcom/tudou/detail/vo/Video;->getCacheVer()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 138
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "v":Lcom/tudou/detail/vo/Video;
    :cond_2
    return v1
.end method

.method public getChannelId()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/tudou/detail/vo/VideoList;->mChannelId:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEpisodeMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    sget-object v0, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->getVideoType()Lcom/tudou/android/Youku$VideoType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoList;->mEpisodeMode:Ljava/lang/String;

    .line 318
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEpisodeTotal()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/tudou/detail/vo/VideoList;->mEpisodeTotal:I

    return v0
.end method

.method public getHdType()I
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->getVideoType()Lcom/tudou/android/Youku$VideoType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 287
    iget v0, p0, Lcom/tudou/detail/vo/VideoList;->mHdType:I

    .line 289
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIndexByVideoId(Ljava/lang/String;)I
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 347
    const/4 v1, -0x1

    .line 348
    .local v1, "index":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/Video;

    iget-object v2, v2, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    move v1, v0

    .line 356
    .end local v0    # "i":I
    :cond_0
    return v1

    .line 349
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLanguages()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Video$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    sget-object v0, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->getVideoType()Lcom/tudou/android/Youku$VideoType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoList;->mLanguages:Ljava/util/ArrayList;

    .line 275
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastVideo()Lcom/tudou/detail/vo/Video;
    .locals 3

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "ret":Lcom/tudou/detail/vo/Video;
    iget-object v1, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ret":Lcom/tudou/detail/vo/Video;
    check-cast v0, Lcom/tudou/detail/vo/Video;

    .line 330
    .restart local v0    # "ret":Lcom/tudou/detail/vo/Video;
    :cond_0
    return-object v0
.end method

.method public getSeriesMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoList;->mSeriesMode:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoList;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleByVid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "ret":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/Video;

    .line 117
    .local v2, "v":Lcom/tudou/detail/vo/Video;
    iget-object v3, v2, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    iget-object v1, v2, Lcom/tudou/detail/vo/Video;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 122
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "v":Lcom/tudou/detail/vo/Video;
    :cond_1
    return-object v1
.end method

.method public getVideoByVideoId(Ljava/lang/String;)Lcom/tudou/detail/vo/Video;
    .locals 4
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, "ret":Lcom/tudou/detail/vo/Video;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 336
    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/Video;

    .line 337
    .local v2, "video":Lcom/tudou/detail/vo/Video;
    iget-object v3, v2, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    move-object v1, v2

    .line 343
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "video":Lcom/tudou/detail/vo/Video;
    :cond_1
    return-object v1
.end method

.method public getVideoIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v2, "vids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 248
    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/Video;

    .line 249
    .local v1, "v":Lcom/tudou/detail/vo/Video;
    iget-object v3, v1, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "v":Lcom/tudou/detail/vo/Video;
    :cond_0
    return-object v2
.end method

.method public getVideoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/detail/vo/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVideoType()Lcom/tudou/android/Youku$VideoType;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/tudou/detail/vo/VideoList;->mType:Lcom/tudou/android/Youku$VideoType;

    return-object v0
.end method

.method public isCacheVideo()Z
    .locals 4

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "cache":Z
    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/Video;

    .line 92
    .local v2, "v":Lcom/tudou/detail/vo/Video;
    iget-boolean v3, v2, Lcom/tudou/detail/vo/Video;->mIsCached:Z

    if-eqz v3, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 98
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "v":Lcom/tudou/detail/vo/Video;
    :cond_1
    return v0
.end method

.method public isCached()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/tudou/detail/vo/VideoList;->mIsCached:Z

    return v0
.end method

.method public isCompleted()Z
    .locals 2

    .prologue
    .line 293
    sget-object v0, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    invoke-virtual {p0}, Lcom/tudou/detail/vo/VideoList;->getVideoType()Lcom/tudou/android/Youku$VideoType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 294
    iget-boolean v0, p0, Lcom/tudou/detail/vo/VideoList;->mCompleted:Z

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrailer(Ljava/lang/String;)Z
    .locals 4
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "ret":Z
    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/tudou/detail/vo/VideoList;->mVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/vo/Video;

    .line 105
    .local v2, "v":Lcom/tudou/detail/vo/Video;
    iget-object v3, v2, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/tudou/detail/vo/Video;->mIId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    iget-boolean v1, v2, Lcom/tudou/detail/vo/Video;->mIstrailer:Z

    goto :goto_0

    .line 110
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "v":Lcom/tudou/detail/vo/Video;
    :cond_1
    return v1
.end method
