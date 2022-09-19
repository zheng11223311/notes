.class Lcom/tudou/detail/DetailModel$LoaderTask;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/DetailModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mAlbumIdUseToLoadInfo:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFlag:I

.field private mId:Ljava/lang/String;

.field private mInteractive:Lcom/tudou/detail/vo/Interactive;

.field private mPlId:Ljava/lang/String;

.field private mStopped:Z

.field private mType:Lcom/tudou/android/Youku$Type;

.field private mVideoDetail:Lcom/youku/vo/NewVideoDetail;

.field private mVideoId:Ljava/lang/String;

.field private mVideoState:Lcom/tudou/detail/vo/VideoState;

.field private mVideoType:Lcom/tudou/android/Youku$VideoType;

.field tFetchFeature:Z

.field final synthetic this$0:Lcom/tudou/detail/DetailModel;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/DetailModel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/android/Youku$Type;ILjava/lang/String;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "plId"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/tudou/android/Youku$Type;
    .param p6, "flag"    # I
    .param p7, "albumId"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->tFetchFeature:Z

    .line 228
    iput-object p2, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mContext:Landroid/content/Context;

    .line 229
    iput-object p3, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mId:Ljava/lang/String;

    .line 230
    iput-object p4, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mPlId:Ljava/lang/String;

    .line 231
    iput-object p5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mType:Lcom/tudou/android/Youku$Type;

    .line 232
    iput p6, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mFlag:I

    .line 233
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mType:Lcom/tudou/android/Youku$Type;

    sget-object v1, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tudou/detail/DetailModel$LoaderTask;->setVideoId(Ljava/lang/String;)V

    .line 236
    :cond_0
    iput-object p7, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    .line 237
    return-void
.end method

.method static synthetic access$400(Lcom/tudou/detail/DetailModel$LoaderTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/DetailModel$LoaderTask;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/detail/DetailModel$LoaderTask;)Lcom/tudou/detail/vo/Interactive;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/DetailModel$LoaderTask;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/detail/DetailModel$LoaderTask;)Lcom/tudou/android/Youku$VideoType;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/DetailModel$LoaderTask;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/detail/DetailModel$LoaderTask;)Lcom/youku/vo/NewVideoDetail;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/DetailModel$LoaderTask;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    return-object v0
.end method

.method private bindVideoDetail(ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V
    .locals 6
    .param p1, "success"    # Z
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 1017
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindVideoDetail id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", detail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v1}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 1019
    .local v2, "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-nez v2, :cond_0

    .line 1020
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bindVideoDetail running with no DetailActivity"

    invoke-static {v1, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :goto_0
    return-void

    .line 1023
    :cond_0
    new-instance v0, Lcom/tudou/detail/DetailModel$LoaderTask$18;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tudou/detail/DetailModel$LoaderTask$18;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V

    .line 1032
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v1, v0}, Lcom/tudou/detail/DetailModel;->access$800(Lcom/tudou/detail/DetailModel;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getVideoFeatureCount(Ljava/lang/String;Lcom/tudou/android/Youku$VideoType;)I
    .locals 9
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/tudou/android/Youku$VideoType;

    .prologue
    .line 1133
    const/4 v0, 0x0

    .line 1135
    .local v0, "count":I
    :try_start_0
    const-class v6, Lcom/youku/network/IHttpRequest;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/network/IHttpRequest;

    .line 1136
    .local v3, "httpRequest":Lcom/youku/network/IHttpRequest;
    const/4 v5, 0x0

    .line 1137
    .local v5, "url":Ljava/lang/String;
    const/4 v6, 0x1

    const/16 v7, 0x10

    invoke-static {p1, v6, v7, p2}, Lcom/youku/http/TudouURLContainer;->getVideoFeature(Ljava/lang/String;IILcom/tudou/android/Youku$VideoType;)Ljava/lang/String;

    move-result-object v5

    .line 1138
    const-string v6, "GET"

    const/4 v7, 0x1

    invoke-interface {v3, v5, v6, v7}, Lcom/youku/network/IHttpRequest;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 1139
    .local v4, "result":Ljava/lang/String;
    const-class v6, Lcom/tudou/detail/vo/DetailFeature;

    invoke-static {v4, v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/DetailFeature;

    .line 1140
    .local v1, "detailFeature":Lcom/tudou/detail/vo/DetailFeature;
    if-eqz v1, :cond_0

    .line 1141
    iget v0, v1, Lcom/tudou/detail/vo/DetailFeature;->total:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    .end local v1    # "detailFeature":Lcom/tudou/detail/vo/DetailFeature;
    .end local v3    # "httpRequest":Lcom/youku/network/IHttpRequest;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVideoFeatureCount count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    return v0

    .line 1143
    :catch_0
    move-exception v2

    .line 1144
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadAndBindComments(Ljava/lang/String;)Z
    .locals 16
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 606
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadAndBindComments vid = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/4 v10, 0x0

    .line 608
    .local v10, "success":Z
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 609
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/youku/network/IHttpRequest;

    .line 610
    .local v11, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    const/4 v2, 0x1

    const/16 v4, 0x8

    const-string v15, ""

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4, v15}, Lcom/youku/http/TudouURLContainer;->getCommentsByVidV5(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 612
    .local v14, "url":Ljava/lang/String;
    :try_start_0
    const-string v2, "GET"

    const/4 v4, 0x1

    invoke-interface {v11, v14, v2, v4}, Lcom/youku/network/IHttpRequest;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 613
    .local v8, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadAndBindComments result = "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 616
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 617
    .local v9, "root":Lorg/json/JSONObject;
    const-string v2, "new"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "new"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 618
    .local v13, "tJsonNews":Lorg/json/JSONObject;
    :goto_0
    const-string v2, "hot"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "hot"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 620
    .local v12, "tJsonHots":Lorg/json/JSONObject;
    :goto_1
    if-eqz v13, :cond_2

    const-string v2, "new"

    move-object/from16 v0, p1

    invoke-static {v13, v0, v2}, Lcom/tudou/detail/vo/CommentsInfo;->createFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/tudou/detail/vo/CommentsInfo;

    move-result-object v5

    .line 621
    .local v5, "tNews":Lcom/tudou/detail/vo/CommentsInfo;
    :goto_2
    if-eqz v12, :cond_3

    const-string v2, "hot"

    move-object/from16 v0, p1

    invoke-static {v12, v0, v2}, Lcom/tudou/detail/vo/CommentsInfo;->createFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/tudou/detail/vo/CommentsInfo;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/tudou/detail/vo/CommentsInfo;->reSizeComment(I)Lcom/tudou/detail/vo/CommentsInfo;

    move-result-object v6

    .line 623
    .local v6, "tHots":Lcom/tudou/detail/vo/CommentsInfo;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v2}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 624
    .local v3, "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-nez v3, :cond_4

    .line 625
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "loadAndBindComments running with no DetailActivity"

    invoke-static {v2, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const/4 v2, 0x0

    .line 644
    .end local v3    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .end local v5    # "tNews":Lcom/tudou/detail/vo/CommentsInfo;
    .end local v6    # "tHots":Lcom/tudou/detail/vo/CommentsInfo;
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "root":Lorg/json/JSONObject;
    .end local v11    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v12    # "tJsonHots":Lorg/json/JSONObject;
    .end local v13    # "tJsonNews":Lorg/json/JSONObject;
    .end local v14    # "url":Ljava/lang/String;
    :goto_4
    return v2

    .line 617
    .restart local v8    # "result":Ljava/lang/String;
    .restart local v9    # "root":Lorg/json/JSONObject;
    .restart local v11    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v14    # "url":Ljava/lang/String;
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 618
    .restart local v13    # "tJsonNews":Lorg/json/JSONObject;
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 620
    .restart local v12    # "tJsonHots":Lorg/json/JSONObject;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 621
    .restart local v5    # "tNews":Lcom/tudou/detail/vo/CommentsInfo;
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 628
    .restart local v3    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .restart local v6    # "tHots":Lcom/tudou/detail/vo/CommentsInfo;
    :cond_4
    new-instance v1, Lcom/tudou/detail/DetailModel$LoaderTask$10;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/tudou/detail/DetailModel$LoaderTask$10;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;Ljava/lang/String;Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;)V

    .line 637
    .local v1, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v2, v1}, Lcom/tudou/detail/DetailModel;->access$800(Lcom/tudou/detail/DetailModel;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    const/4 v10, 0x1

    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v3    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .end local v5    # "tNews":Lcom/tudou/detail/vo/CommentsInfo;
    .end local v6    # "tHots":Lcom/tudou/detail/vo/CommentsInfo;
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "root":Lorg/json/JSONObject;
    .end local v11    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v12    # "tJsonHots":Lorg/json/JSONObject;
    .end local v13    # "tJsonNews":Lorg/json/JSONObject;
    .end local v14    # "url":Ljava/lang/String;
    :cond_5
    :goto_5
    move v2, v10

    .line 644
    goto :goto_4

    .line 640
    .restart local v11    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v14    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 641
    .local v7, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v4, "loadAndBindComments"

    invoke-static {v2, v4, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private loadAndBindDetailPageSlider()Z
    .locals 21

    .prologue
    .line 1036
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v18

    const-string v19, "loadDetailPageSlider"

    invoke-static/range {v18 .. v19}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const/4 v14, 0x0

    .line 1039
    .local v14, "success":Z
    :try_start_0
    const-class v18, Lcom/youku/network/IHttpRequest;

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/youku/network/IHttpRequest;

    .line 1040
    .local v15, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "album"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    const/4 v6, 0x1

    .line 1041
    .local v6, "isUgc":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/youku/vo/NewVideoDetail$Detail;->cid:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v6}, Lcom/youku/http/TudouURLContainer;->getDetailOperationInfo(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v17

    .line 1044
    .local v17, "url":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadDetailPageSlider url = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const-string v18, "GET"

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v15, v0, v1, v2}, Lcom/youku/network/IHttpRequest;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 1046
    .local v8, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "loadDetailPageSlider result = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v10, "root":Lorg/json/JSONObject;
    const-string v18, "error"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    const-string v18, "error"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_6

    .line 1050
    const-string v18, "slider_info"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 1051
    .local v13, "sliderJSONs":Lorg/json/JSONArray;
    const-string v18, "interactive"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1053
    .local v5, "interactive":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 1054
    invoke-static {v5}, Lcom/tudou/detail/vo/Interactive;->createFromJSON(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/Interactive;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/detail/DetailModel$LoaderTask;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tudou/detail/vo/Interactive;->mHtml5_1:Lcom/tudou/detail/vo/Interactive$Html5;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tudou/detail/DetailModel;->access$300(Lcom/tudou/detail/DetailModel;)Landroid/os/Handler;

    move-result-object v18

    new-instance v19, Lcom/tudou/detail/DetailModel$LoaderTask$19;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tudou/detail/DetailModel$LoaderTask$19;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1072
    :cond_0
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-lez v18, :cond_5

    .line 1073
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1074
    .local v9, "retSliders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/SliderInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_3

    .line 1075
    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 1076
    .local v12, "sliderJSON":Lorg/json/JSONObject;
    invoke-static {v12}, Lcom/tudou/detail/vo/SliderInfo;->createFromJSON(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/SliderInfo;

    move-result-object v11

    .line 1077
    .local v11, "slider":Lcom/tudou/detail/vo/SliderInfo;
    if-eqz v11, :cond_1

    iget-object v0, v11, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1078
    iput v4, v11, Lcom/tudou/detail/vo/SliderInfo;->index:I

    .line 1079
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    iget-object v0, v11, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    move-object/from16 v18, v0

    sget-object v19, Lcom/tudou/detail/vo/SliderInfo$SliderType;->FEATURE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1081
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/detail/DetailModel$LoaderTask;->tFetchFeature:Z

    .line 1074
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1040
    .end local v4    # "i":I
    .end local v5    # "interactive":Lorg/json/JSONObject;
    .end local v6    # "isUgc":Z
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "retSliders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/SliderInfo;>;"
    .end local v10    # "root":Lorg/json/JSONObject;
    .end local v11    # "slider":Lcom/tudou/detail/vo/SliderInfo;
    .end local v12    # "sliderJSON":Lorg/json/JSONObject;
    .end local v13    # "sliderJSONs":Lorg/json/JSONArray;
    .end local v17    # "url":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1085
    .restart local v4    # "i":I
    .restart local v5    # "interactive":Lorg/json/JSONObject;
    .restart local v6    # "isUgc":Z
    .restart local v8    # "result":Ljava/lang/String;
    .restart local v9    # "retSliders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/SliderInfo;>;"
    .restart local v10    # "root":Lorg/json/JSONObject;
    .restart local v13    # "sliderJSONs":Lorg/json/JSONArray;
    .restart local v17    # "url":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 1086
    .local v16, "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-nez v16, :cond_4

    .line 1087
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v18

    const-string v19, "loadAndBindDetailPageSlider running with no DetailActivity"

    invoke-static/range {v18 .. v19}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const/16 v18, 0x0

    .line 1129
    .end local v4    # "i":I
    .end local v5    # "interactive":Lorg/json/JSONObject;
    .end local v6    # "isUgc":Z
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "retSliders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/SliderInfo;>;"
    .end local v10    # "root":Lorg/json/JSONObject;
    .end local v13    # "sliderJSONs":Lorg/json/JSONArray;
    .end local v15    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v16    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .end local v17    # "url":Ljava/lang/String;
    :goto_2
    return v18

    .line 1090
    .restart local v4    # "i":I
    .restart local v5    # "interactive":Lorg/json/JSONObject;
    .restart local v6    # "isUgc":Z
    .restart local v8    # "result":Ljava/lang/String;
    .restart local v9    # "retSliders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/SliderInfo;>;"
    .restart local v10    # "root":Lorg/json/JSONObject;
    .restart local v13    # "sliderJSONs":Lorg/json/JSONArray;
    .restart local v15    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v16    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .restart local v17    # "url":Ljava/lang/String;
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_5

    .line 1091
    new-instance v7, Lcom/tudou/detail/DetailModel$LoaderTask$20;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v7, v0, v1, v9}, Lcom/tudou/detail/DetailModel$LoaderTask$20;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;Ljava/util/ArrayList;)V

    .line 1100
    .local v7, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lcom/tudou/detail/DetailModel;->access$800(Lcom/tudou/detail/DetailModel;Ljava/lang/Runnable;)V

    .line 1101
    const/4 v14, 0x1

    .line 1105
    .end local v4    # "i":I
    .end local v7    # "r":Ljava/lang/Runnable;
    .end local v9    # "retSliders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/SliderInfo;>;"
    .end local v16    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/tudou/detail/vo/Interactive;->mHtml5_2:Lcom/tudou/detail/vo/Interactive$Html5;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/tudou/detail/DetailModel;->access$300(Lcom/tudou/detail/DetailModel;)Landroid/os/Handler;

    move-result-object v18

    new-instance v19, Lcom/tudou/detail/DetailModel$LoaderTask$21;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tudou/detail/DetailModel$LoaderTask$21;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "interactive":Lorg/json/JSONObject;
    .end local v6    # "isUgc":Z
    .end local v8    # "result":Ljava/lang/String;
    .end local v10    # "root":Lorg/json/JSONObject;
    .end local v13    # "sliderJSONs":Lorg/json/JSONArray;
    .end local v15    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v17    # "url":Ljava/lang/String;
    :cond_6
    :goto_3
    move/from16 v18, v14

    .line 1129
    goto :goto_2

    .line 1121
    :catch_0
    move-exception v3

    .line 1126
    .local v3, "e":Ljava/lang/Exception;
    sget-object v18, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v19, "loadDetailPageSlider"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private loadAndBindEggs()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 569
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "loadAndBindEggs"

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const/4 v3, 0x0

    .line 571
    .local v3, "success":Z
    const-class v8, Lcom/youku/network/IHttpRequest;

    invoke-static {v8, v10}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/network/IHttpRequest;

    .line 572
    .local v5, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getEasterEggs()Ljava/lang/String;

    move-result-object v7

    .line 574
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    const-string v8, "GET"

    const/4 v9, 0x1

    invoke-interface {v5, v7, v8, v9}, Lcom/youku/network/IHttpRequest;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAndBindEggs result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 578
    invoke-static {v2}, Lcom/tudou/detail/vo/EasterEggs;->createFromJson(Ljava/lang/String;)Lcom/tudou/detail/vo/EasterEggs;

    move-result-object v4

    .line 580
    .local v4, "tEggs":Lcom/tudou/detail/vo/EasterEggs;
    if-eqz v4, :cond_1

    iget v8, v4, Lcom/tudou/detail/vo/EasterEggs;->error:I

    if-nez v8, :cond_1

    .line 581
    iget-object v8, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v8}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 582
    .local v6, "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-nez v6, :cond_0

    .line 583
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "loadAndBindEggs running with no DetailActivity"

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const/4 v8, 0x0

    .line 602
    .end local v2    # "result":Ljava/lang/String;
    .end local v4    # "tEggs":Lcom/tudou/detail/vo/EasterEggs;
    .end local v6    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    :goto_0
    return v8

    .line 586
    .restart local v2    # "result":Ljava/lang/String;
    .restart local v4    # "tEggs":Lcom/tudou/detail/vo/EasterEggs;
    .restart local v6    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    :cond_0
    new-instance v1, Lcom/tudou/detail/DetailModel$LoaderTask$9;

    invoke-direct {v1, p0, v6, v4}, Lcom/tudou/detail/DetailModel$LoaderTask$9;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;Lcom/tudou/detail/vo/EasterEggs;)V

    .line 595
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v8, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v8, v1}, Lcom/tudou/detail/DetailModel;->access$800(Lcom/tudou/detail/DetailModel;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    const/4 v3, 0x1

    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v2    # "result":Ljava/lang/String;
    .end local v4    # "tEggs":Lcom/tudou/detail/vo/EasterEggs;
    .end local v6    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    :cond_1
    :goto_1
    move v8, v3

    .line 602
    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v9, "loadAndBindEggs"

    invoke-static {v8, v9, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private loadAndBindGoods(Ljava/lang/String;)Z
    .locals 12
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 740
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAndBindGoods vid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const/4 v3, 0x0

    .line 742
    .local v3, "success":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 743
    const-class v8, Lcom/youku/network/IHttpRequest;

    invoke-static {v8, v11}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/network/IHttpRequest;

    .line 744
    .local v5, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getGoods(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 746
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    const-string v8, "GET"

    const/4 v9, 0x1

    invoke-interface {v5, v7, v8, v9}, Lcom/youku/network/IHttpRequest;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, "result":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/tudou/detail/DetailModel$LoaderTask;->transformGoodsJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 748
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAndBindGoods result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-class v8, Lcom/tudou/detail/vo/GoodsInfo;

    invoke-static {v2, v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/detail/vo/GoodsInfo;

    .line 750
    .local v4, "tGoods":Lcom/tudou/detail/vo/GoodsInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/tudou/detail/vo/GoodsInfo;->getCount()I

    move-result v8

    if-lez v8, :cond_1

    .line 751
    iput-object p1, v4, Lcom/tudou/detail/vo/GoodsInfo;->mVid:Ljava/lang/String;

    .line 752
    iget-object v8, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v8}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 753
    .local v6, "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-nez v6, :cond_0

    .line 754
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "loadAndBindGoods running with no DetailActivity"

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const/4 v8, 0x0

    .line 773
    .end local v2    # "result":Ljava/lang/String;
    .end local v4    # "tGoods":Lcom/tudou/detail/vo/GoodsInfo;
    .end local v5    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v6    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .end local v7    # "url":Ljava/lang/String;
    :goto_0
    return v8

    .line 757
    .restart local v2    # "result":Ljava/lang/String;
    .restart local v4    # "tGoods":Lcom/tudou/detail/vo/GoodsInfo;
    .restart local v5    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v6    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/tudou/detail/DetailModel$LoaderTask$13;

    invoke-direct {v1, p0, v6, v4}, Lcom/tudou/detail/DetailModel$LoaderTask$13;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;Lcom/tudou/detail/vo/GoodsInfo;)V

    .line 766
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v8, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v8, v1}, Lcom/tudou/detail/DetailModel;->access$800(Lcom/tudou/detail/DetailModel;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    const/4 v3, 0x1

    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v2    # "result":Ljava/lang/String;
    .end local v4    # "tGoods":Lcom/tudou/detail/vo/GoodsInfo;
    .end local v5    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v6    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .end local v7    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    move v8, v3

    .line 773
    goto :goto_0

    .line 769
    .restart local v5    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v9, "loadAndBindGoods"

    invoke-static {v8, v9, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private loadAndBindHD(Ljava/lang/String;)Z
    .locals 34
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 648
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadAndBindHD vid = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const/16 v28, 0x0

    .line 650
    .local v28, "success":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v7, "tops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeTop;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v8, "bottoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VideoNoticeBottom;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v9, "votes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/VoteInfo;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v10, "annos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/detail/vo/Annotation;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 655
    const-class v3, Lcom/youku/network/IHttpRequest;

    const/4 v6, 0x1

    invoke-static {v3, v6}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/youku/network/IHttpRequest;

    .line 656
    .local v29, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static/range {p1 .. p1}, Lcom/youku/http/TudouURLContainer;->getHdInfoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 658
    .local v32, "url":Ljava/lang/String;
    :try_start_0
    const-string v3, "GET"

    const/4 v6, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v3, v6}, Lcom/youku/network/IHttpRequest;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v26

    .line 659
    .local v26, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadAndBindHD result = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 662
    new-instance v27, Lorg/json/JSONObject;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 663
    .local v27, "root":Lorg/json/JSONObject;
    const-string v3, "error"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v22

    .line 664
    .local v22, "error":I
    if-nez v22, :cond_7

    .line 665
    const-string v3, "results"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 666
    .local v25, "items":Lorg/json/JSONArray;
    if-eqz v25, :cond_6

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 667
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_6

    .line 668
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    .line 669
    .local v24, "itemJSON":Lorg/json/JSONObject;
    if-eqz v24, :cond_0

    .line 670
    const-string v3, "type"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 671
    const-string v3, "type"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v31

    .line 672
    .local v31, "type":I
    const/16 v3, 0xd

    move/from16 v0, v31

    if-ne v0, v3, :cond_1

    .line 673
    invoke-static/range {v24 .. v24}, Lcom/tudou/detail/vo/VideoNoticeTop;->createFromJSON(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/VideoNoticeTop;

    move-result-object v30

    .line 674
    .local v30, "top":Lcom/tudou/detail/vo/VideoNoticeTop;
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/vo/VideoNoticeTop;->setVid(Ljava/lang/String;)V

    .line 675
    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    .end local v30    # "top":Lcom/tudou/detail/vo/VideoNoticeTop;
    .end local v31    # "type":I
    :cond_0
    :goto_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .line 676
    .restart local v31    # "type":I
    :cond_1
    const/16 v3, 0xe

    move/from16 v0, v31

    if-ne v0, v3, :cond_2

    .line 677
    invoke-static/range {v24 .. v24}, Lcom/tudou/detail/vo/VideoNoticeBottom;->createFromJSON(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/VideoNoticeBottom;

    move-result-object v20

    .line 678
    .local v20, "bottom":Lcom/tudou/detail/vo/VideoNoticeBottom;
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tudou/detail/vo/VideoNoticeBottom;->setVid(Ljava/lang/String;)V

    .line 679
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 717
    .end local v20    # "bottom":Lcom/tudou/detail/vo/VideoNoticeBottom;
    .end local v22    # "error":I
    .end local v23    # "i":I
    .end local v24    # "itemJSON":Lorg/json/JSONObject;
    .end local v25    # "items":Lorg/json/JSONArray;
    .end local v26    # "result":Ljava/lang/String;
    .end local v27    # "root":Lorg/json/JSONObject;
    .end local v31    # "type":I
    :catch_0
    move-exception v21

    .line 718
    .local v21, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v6, "loadAndBindHD"

    move-object/from16 v0, v21

    invoke-static {v3, v6, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v3}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 720
    .local v4, "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-nez v4, :cond_a

    .line 721
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v6, "loadAndBindHD running with no DetailActivity"

    invoke-static {v3, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const/4 v3, 0x0

    .line 736
    .end local v4    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v29    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v32    # "url":Ljava/lang/String;
    :goto_2
    return v3

    .line 680
    .restart local v22    # "error":I
    .restart local v23    # "i":I
    .restart local v24    # "itemJSON":Lorg/json/JSONObject;
    .restart local v25    # "items":Lorg/json/JSONArray;
    .restart local v26    # "result":Ljava/lang/String;
    .restart local v27    # "root":Lorg/json/JSONObject;
    .restart local v29    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v31    # "type":I
    .restart local v32    # "url":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x3

    move/from16 v0, v31

    if-ne v0, v3, :cond_3

    .line 681
    :try_start_1
    invoke-static/range {v24 .. v24}, Lcom/tudou/detail/vo/VoteInfo;->createFromJSON(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/VoteInfo;

    move-result-object v33

    .line 682
    .local v33, "vote":Lcom/tudou/detail/vo/VoteInfo;
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/tudou/detail/vo/VoteInfo;->vid:Ljava/lang/String;

    .line 683
    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 684
    .end local v33    # "vote":Lcom/tudou/detail/vo/VoteInfo;
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_4

    .line 685
    invoke-static/range {v24 .. v24}, Lcom/tudou/detail/vo/Annotation;->createFromJSON(Lorg/json/JSONObject;)Lcom/tudou/detail/vo/Annotation;

    move-result-object v19

    .line 686
    .local v19, "anno":Lcom/tudou/detail/vo/Annotation;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/tudou/detail/vo/Annotation;->vid:Ljava/lang/String;

    .line 687
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 689
    .end local v19    # "anno":Lcom/tudou/detail/vo/Annotation;
    :cond_4
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadAndBindHD type = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ", drop."

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 692
    .end local v31    # "type":I
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "Do not has type"

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 697
    .end local v23    # "i":I
    .end local v24    # "itemJSON":Lorg/json/JSONObject;
    :cond_6
    const/16 v28, 0x1

    .line 700
    .end local v22    # "error":I
    .end local v25    # "items":Lorg/json/JSONArray;
    .end local v27    # "root":Lorg/json/JSONObject;
    :cond_7
    move/from16 v5, v28

    .line 701
    .local v5, "tSuccessF":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v3}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 702
    .restart local v4    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-nez v4, :cond_8

    .line 703
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v6, "loadAndBindHD running with no DetailActivity"

    invoke-static {v3, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const/4 v3, 0x0

    goto :goto_2

    .line 706
    :cond_8
    new-instance v2, Lcom/tudou/detail/DetailModel$LoaderTask$11;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/tudou/detail/DetailModel$LoaderTask$11;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 715
    .local v2, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v3, v2}, Lcom/tudou/detail/DetailModel;->access$800(Lcom/tudou/detail/DetailModel;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 716
    const/16 v28, 0x1

    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v4    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .end local v5    # "tSuccessF":Z
    .end local v26    # "result":Ljava/lang/String;
    .end local v29    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v32    # "url":Ljava/lang/String;
    :cond_9
    :goto_3
    move/from16 v3, v28

    .line 736
    goto/16 :goto_2

    .line 724
    .restart local v4    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .restart local v21    # "e":Ljava/lang/Exception;
    .restart local v29    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v32    # "url":Ljava/lang/String;
    :cond_a
    new-instance v2, Lcom/tudou/detail/DetailModel$LoaderTask$12;

    move-object v11, v2

    move-object/from16 v12, p0

    move-object v13, v4

    move-object/from16 v14, p1

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lcom/tudou/detail/DetailModel$LoaderTask$12;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 733
    .restart local v2    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v3, v2}, Lcom/tudou/detail/DetailModel;->access$800(Lcom/tudou/detail/DetailModel;Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method private loadAndBindPlaylist(Lcom/youku/vo/NewVideoDetail;)Z
    .locals 16
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 921
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "loadAndBindPlaylist"

    invoke-static {v13, v14}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/tudou/detail/DetailModel;->getVideoListFromCache(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/detail/vo/VideoList;

    move-result-object v12

    .line 923
    .local v12, "videoList":Lcom/tudou/detail/vo/VideoList;
    invoke-virtual/range {p1 .. p1}, Lcom/youku/vo/NewVideoDetail;->getId()Ljava/lang/String;

    move-result-object v3

    .line 924
    .local v3, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v13}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 925
    .local v8, "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    const/4 v6, 0x0

    .line 926
    .local v6, "success":Z
    if-nez v12, :cond_5

    .line 927
    const/4 v11, 0x0

    .line 928
    .local v11, "url":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v10

    .line 929
    .local v10, "type":Lcom/tudou/android/Youku$VideoType;
    sget-object v13, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-ne v13, v10, :cond_3

    .line 930
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v14, v14, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v14, v14, Lcom/youku/vo/NewVideoDetail$Detail;->completed:I

    invoke-static {v3, v13, v14}, Lcom/youku/http/TudouURLContainer;->getVideoListURLV4(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    .line 934
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadAndBindPlaylist id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", type = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    sget-object v13, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    if-eq v13, v10, :cond_1

    sget-object v13, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v13, v10, :cond_4

    .line 936
    :cond_1
    const-class v13, Lcom/youku/network/IHttpRequest;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/youku/network/IHttpRequest;

    .line 938
    .local v7, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    :try_start_0
    const-string v13, "GET"

    const/4 v14, 0x1

    invoke-interface {v7, v11, v13, v14}, Lcom/youku/network/IHttpRequest;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 939
    .local v5, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadAndBindPlaylist result = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-static {v5, v10}, Lcom/tudou/detail/vo/VideoList;->createFromJson(Ljava/lang/String;Lcom/tudou/android/Youku$VideoType;)Lcom/tudou/detail/vo/VideoList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 951
    .end local v5    # "result":Ljava/lang/String;
    .end local v7    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v10    # "type":Lcom/tudou/android/Youku$VideoType;
    .end local v11    # "url":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/tudou/detail/vo/VideoList;->getCount()I

    move-result v13

    if-lez v13, :cond_6

    .line 952
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v13}, Lcom/tudou/detail/DetailModel;->access$1000(Lcom/tudou/detail/DetailModel;)Lcom/tudou/detail/VideoListCache;

    move-result-object v13

    invoke-virtual {v13, v3, v12}, Lcom/tudou/detail/VideoListCache;->add(Ljava/lang/String;Lcom/tudou/detail/vo/VideoList;)V

    .line 953
    const/4 v6, 0x1

    .line 958
    :goto_2
    if-nez v8, :cond_7

    .line 959
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "loadAndBindPlaylist running with no DetailActivity"

    invoke-static {v13, v14}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const/4 v6, 0x0

    .line 974
    .end local v6    # "success":Z
    :goto_3
    return v6

    .line 931
    .restart local v6    # "success":Z
    .restart local v10    # "type":Lcom/tudou/android/Youku$VideoType;
    .restart local v11    # "url":Ljava/lang/String;
    :cond_3
    sget-object v13, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    if-ne v13, v10, :cond_0

    .line 932
    invoke-static {v3}, Lcom/youku/http/TudouURLContainer;->getVideoListUGCURLV4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 942
    .restart local v7    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    :catch_0
    move-exception v1

    .line 943
    .local v1, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v14, "loadAndBindPlaylist"

    invoke-static {v13, v14, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 945
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    :cond_4
    sget-object v13, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    if-ne v13, v10, :cond_2

    .line 946
    invoke-static/range {p1 .. p1}, Lcom/tudou/detail/vo/VideoList;->createFromVideoDetail(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/detail/vo/VideoList;

    move-result-object v12

    goto :goto_1

    .line 949
    .end local v10    # "type":Lcom/tudou/android/Youku$VideoType;
    .end local v11    # "url":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "loadAndBindPlaylist hit from cache."

    invoke-static {v13, v14}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 955
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/tudou/detail/vo/VideoList;->createFromVideoDetail(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/detail/vo/VideoList;

    move-result-object v12

    .line 956
    const/4 v6, 0x1

    goto :goto_2

    .line 962
    :cond_7
    move-object v9, v12

    .line 963
    .local v9, "tVideoList":Lcom/tudou/detail/vo/VideoList;
    move v2, v6

    .line 964
    .local v2, "fSuccess":I
    new-instance v4, Lcom/tudou/detail/DetailModel$LoaderTask$17;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8, v2, v9}, Lcom/tudou/detail/DetailModel$LoaderTask$17;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;ZLcom/tudou/detail/vo/VideoList;)V

    .line 973
    .local v4, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v13, v4}, Lcom/tudou/detail/DetailModel;->access$800(Lcom/tudou/detail/DetailModel;Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method private loadAndBindRecommend(Lcom/youku/vo/NewVideoDetail;Ljava/lang/String;Lcom/tudou/android/Youku$VideoType;)Z
    .locals 18
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/tudou/android/Youku$VideoType;

    .prologue
    .line 501
    const/4 v1, 0x0

    .line 502
    .local v1, "id":Ljava/lang/String;
    const/4 v2, 0x0

    .line 503
    .local v2, "cid":Ljava/lang/String;
    const-string v6, ""

    .line 504
    .local v6, "pcode":Ljava/lang/String;
    const/16 v3, 0xc

    .line 505
    .local v3, "count":I
    sget-object v4, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    const-string v5, "album"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 506
    sget-object p3, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    .line 508
    :cond_0
    sget-object v4, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_1

    .line 509
    const-string v6, "90000321"

    .line 510
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v1, v4, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    .line 511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v5, v5, Lcom/youku/vo/NewVideoDetail$Detail;->cid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 521
    :goto_0
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "loadAndBindRecommend id = "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v17, ", cid = "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v17, ", type = "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v12, 0x0

    .line 523
    .local v12, "success":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 524
    const-class v4, Lcom/youku/network/IHttpRequest;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/youku/network/IHttpRequest;

    .line 525
    .local v13, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    const/4 v4, 0x3

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lcom/youku/http/TudouURLContainer;->getVideoRecomment(Ljava/lang/String;Ljava/lang/String;IILcom/tudou/android/Youku$VideoType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 527
    .local v16, "url":Ljava/lang/String;
    :try_start_0
    const-string v4, "GET"

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v4, v5}, Lcom/youku/network/IHttpRequest;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 528
    .local v10, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "loadAndBindRecommend result = "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 531
    new-instance v15, Lcom/youku/http/ParseJson;

    invoke-direct {v15, v10}, Lcom/youku/http/ParseJson;-><init>(Ljava/lang/String;)V

    .line 532
    .local v15, "tParseJson":Lcom/youku/http/ParseJson;
    const/4 v9, 0x0

    .line 533
    .local v9, "recomment":Lcom/youku/vo/DetailRecomment;
    sget-object v4, Lcom/tudou/android/Youku$VideoType;->ALBUM:Lcom/tudou/android/Youku$VideoType;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_3

    .line 534
    invoke-virtual {v15}, Lcom/youku/http/ParseJson;->parseVideoRecommendByAlbum()Lcom/youku/vo/DetailRecomment;

    move-result-object v9

    .line 538
    :goto_1
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/youku/vo/DetailRecomment;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 539
    move-object v11, v9

    .line 540
    .local v11, "ret":Lcom/youku/vo/DetailRecomment;
    iput-object v1, v11, Lcom/youku/vo/DetailRecomment;->id:Ljava/lang/String;

    .line 541
    move-object/from16 v0, p3

    iput-object v0, v11, Lcom/youku/vo/DetailRecomment;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v4}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 543
    .local v14, "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-nez v14, :cond_4

    .line 544
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "loadAndBindRecommend running with no DetailActivity"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    const/4 v4, 0x0

    .line 565
    .end local v9    # "recomment":Lcom/youku/vo/DetailRecomment;
    .end local v10    # "result":Ljava/lang/String;
    .end local v11    # "ret":Lcom/youku/vo/DetailRecomment;
    .end local v13    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v14    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .end local v15    # "tParseJson":Lcom/youku/http/ParseJson;
    .end local v16    # "url":Ljava/lang/String;
    :goto_2
    return v4

    .line 513
    .end local v12    # "success":Z
    :cond_1
    const/16 v3, 0x14

    .line 514
    sget-object v4, Lcom/tudou/android/Youku$VideoType;->PLAYLIST:Lcom/tudou/android/Youku$VideoType;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_2

    .line 515
    const-string v6, "90000311"

    .line 519
    :goto_3
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 517
    :cond_2
    const-string v6, "90000301"

    goto :goto_3

    .line 536
    .restart local v9    # "recomment":Lcom/youku/vo/DetailRecomment;
    .restart local v10    # "result":Ljava/lang/String;
    .restart local v12    # "success":Z
    .restart local v13    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v15    # "tParseJson":Lcom/youku/http/ParseJson;
    .restart local v16    # "url":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v15}, Lcom/youku/http/ParseJson;->parseVideoRecommend()Lcom/youku/vo/DetailRecomment;

    move-result-object v9

    goto :goto_1

    .line 547
    .restart local v11    # "ret":Lcom/youku/vo/DetailRecomment;
    .restart local v14    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    :cond_4
    new-instance v8, Lcom/tudou/detail/DetailModel$LoaderTask$8;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14, v11}, Lcom/tudou/detail/DetailModel$LoaderTask$8;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;Lcom/youku/vo/DetailRecomment;)V

    .line 556
    .local v8, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v4, v8}, Lcom/tudou/detail/DetailModel;->access$800(Lcom/tudou/detail/DetailModel;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 557
    const/4 v12, 0x1

    .end local v8    # "r":Ljava/lang/Runnable;
    .end local v9    # "recomment":Lcom/youku/vo/DetailRecomment;
    .end local v10    # "result":Ljava/lang/String;
    .end local v11    # "ret":Lcom/youku/vo/DetailRecomment;
    .end local v13    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v14    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .end local v15    # "tParseJson":Lcom/youku/http/ParseJson;
    .end local v16    # "url":Ljava/lang/String;
    :cond_5
    :goto_4
    move v4, v12

    .line 565
    goto :goto_2

    .line 561
    .restart local v13    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v16    # "url":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 562
    .local v7, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v5, "loadAndBindRecommend"

    invoke-static {v4, v5, v7}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private loadAndBindVideoDetail(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 12
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "plId"    # Ljava/lang/String;
    .param p3, "isShowId"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 978
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAndBindVideoDetail id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mAlbumIdUseToLoadInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", plId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isShowId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const/4 v2, 0x0

    .line 980
    .local v2, "success":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 981
    const-class v8, Lcom/youku/network/IHttpRequest;

    invoke-static {v8, v6}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/network/IHttpRequest;

    .line 982
    .local v3, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    const/4 v5, 0x0

    .line 983
    .local v5, "url":Ljava/lang/String;
    iget-object v8, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 984
    iget-object v8, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mAlbumIdUseToLoadInfo:Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/youku/http/TudouURLContainer;->getVideoNewDetailURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 989
    :goto_0
    :try_start_0
    const-string v8, "GET"

    const/4 v9, 0x1

    invoke-interface {v3, v5, v8, v9}, Lcom/youku/network/IHttpRequest;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 990
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAndBindVideoDetail result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-class v8, Lcom/youku/vo/NewVideoDetail;

    invoke-static {v1, v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/NewVideoDetail;

    .line 992
    .local v4, "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    if-eqz v4, :cond_4

    iget-object v8, v4, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    if-eqz v8, :cond_4

    iget-object v8, v4, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v8, v8, Lcom/youku/vo/NewVideoDetail$Detail;->aid:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v4, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v8, v8, Lcom/youku/vo/NewVideoDetail$Detail;->iid:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_0
    move v2, v6

    .line 994
    :goto_1
    if-eqz v2, :cond_6

    .line 995
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 996
    iget-object v6, v4, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail$Detail;->plid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 997
    iget-object v6, v4, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v6, v6, Lcom/youku/vo/NewVideoDetail$Detail;->plid:Ljava/lang/String;

    iput-object v6, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mPlId:Ljava/lang/String;

    .line 1002
    :cond_1
    :goto_2
    iput-object v4, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 1003
    iget-object v6, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    invoke-static {v6}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v6

    iput-object v6, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    .line 1004
    const/4 v6, 0x1

    invoke-direct {p0, v6, p1, v4}, Lcom/tudou/detail/DetailModel$LoaderTask;->bindVideoDetail(ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    .end local v1    # "result":Ljava/lang/String;
    .end local v3    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v4    # "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    :goto_3
    return v2

    .line 986
    .restart local v3    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_3
    invoke-static {p1, p3}, Lcom/youku/http/TudouURLContainer;->getVideoNewDetailURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .restart local v1    # "result":Ljava/lang/String;
    .restart local v4    # "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    :cond_4
    move v2, v7

    .line 992
    goto :goto_1

    .line 1000
    :cond_5
    :try_start_1
    iget-object v6, v4, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iput-object p2, v6, Lcom/youku/vo/NewVideoDetail$Detail;->plid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1008
    .end local v1    # "result":Ljava/lang/String;
    .end local v4    # "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v8, "loadAndBindVideoDetail"

    invoke-static {v6, v8, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1010
    invoke-direct {p0, v7, p1, v11}, Lcom/tudou/detail/DetailModel$LoaderTask;->bindVideoDetail(ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V

    goto :goto_3

    .line 1006
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "result":Ljava/lang/String;
    .restart local v4    # "tVideoDetail":Lcom/youku/vo/NewVideoDetail;
    :cond_6
    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_2
    invoke-direct {p0, v6, p1, v8}, Lcom/tudou/detail/DetailModel$LoaderTask;->bindVideoDetail(ZLjava/lang/String;Lcom/youku/vo/NewVideoDetail;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method private loadAndBindVideoFeature(Ljava/lang/String;)Z
    .locals 13
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 786
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadAndBindVideoFeature vid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const/4 v4, 0x0

    .line 788
    .local v4, "success":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 789
    const-class v9, Lcom/youku/network/IHttpRequest;

    invoke-static {v9, v12}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/network/IHttpRequest;

    .line 790
    .local v5, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    const/16 v9, 0x10

    sget-object v10, Lcom/tudou/android/Youku$VideoType;->UGC:Lcom/tudou/android/Youku$VideoType;

    invoke-static {p1, v12, v9, v10}, Lcom/youku/http/TudouURLContainer;->getVideoFeature(Ljava/lang/String;IILcom/tudou/android/Youku$VideoType;)Ljava/lang/String;

    move-result-object v7

    .line 792
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    const-string v9, "GET"

    const/4 v10, 0x1

    invoke-interface {v5, v7, v9, v10}, Lcom/youku/network/IHttpRequest;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 793
    .local v3, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadAndBindVideoFeature result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-class v9, Lcom/tudou/detail/vo/DetailFeature;

    invoke-static {v3, v9}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/DetailFeature;

    .line 796
    .local v1, "feature":Lcom/tudou/detail/vo/DetailFeature;
    if-eqz v1, :cond_0

    .line 797
    iput-object p1, v1, Lcom/tudou/detail/vo/DetailFeature;->vid:Ljava/lang/String;

    .line 799
    :cond_0
    iget-object v9, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v9}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 800
    .local v6, "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-nez v6, :cond_1

    .line 801
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v9

    const-string v10, "loadAndBindVideoFeature running with no DetailActivity"

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    .end local v1    # "feature":Lcom/tudou/detail/vo/DetailFeature;
    .end local v3    # "result":Ljava/lang/String;
    .end local v5    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v6    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .end local v7    # "url":Ljava/lang/String;
    :goto_0
    return v8

    .line 804
    .restart local v1    # "feature":Lcom/tudou/detail/vo/DetailFeature;
    .restart local v3    # "result":Ljava/lang/String;
    .restart local v5    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v6    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_1
    new-instance v2, Lcom/tudou/detail/DetailModel$LoaderTask$14;

    invoke-direct {v2, p0, v6, v1, p1}, Lcom/tudou/detail/DetailModel$LoaderTask$14;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;Lcom/tudou/detail/vo/DetailFeature;Ljava/lang/String;)V

    .line 813
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v9, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v9, v2}, Lcom/tudou/detail/DetailModel;->access$800(Lcom/tudou/detail/DetailModel;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    const/4 v4, 0x1

    .end local v1    # "feature":Lcom/tudou/detail/vo/DetailFeature;
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v3    # "result":Ljava/lang/String;
    .end local v5    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v6    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .end local v7    # "url":Ljava/lang/String;
    :cond_2
    :goto_1
    move v8, v4

    .line 836
    goto :goto_0

    .line 815
    .restart local v5    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v10, "loadAndBindVideoFeature"

    invoke-static {v9, v10, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 817
    iget-object v9, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v9}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 818
    iget-object v9, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v9}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 819
    .restart local v6    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-nez v6, :cond_3

    .line 820
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v9

    const-string v10, "loadAndBindVideoFeature running with no DetailActivity"

    invoke-static {v9, v10}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 823
    :cond_3
    new-instance v2, Lcom/tudou/detail/DetailModel$LoaderTask$15;

    invoke-direct {v2, p0, v6, p1}, Lcom/tudou/detail/DetailModel$LoaderTask$15;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;Ljava/lang/String;)V

    .line 832
    .restart local v2    # "r":Ljava/lang/Runnable;
    iget-object v8, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v8, v2}, Lcom/tudou/detail/DetailModel;->access$800(Lcom/tudou/detail/DetailModel;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private loadAndBindVideoState(Ljava/lang/String;)Z
    .locals 12
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 840
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAndBindVideoState vid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const/4 v4, 0x0

    .line 842
    .local v4, "success":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 843
    const-class v8, Lcom/youku/network/IHttpRequest;

    invoke-static {v8, v11}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/network/IHttpRequest;

    .line 844
    .local v5, "tHttpRequest":Lcom/youku/network/IHttpRequest;
    invoke-static {p1}, Lcom/youku/http/TudouURLContainer;->getVideoState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 846
    .local v7, "url":Ljava/lang/String;
    :try_start_0
    const-string v8, "GET"

    const/4 v9, 0x1

    invoke-interface {v5, v7, v8, v9}, Lcom/youku/network/IHttpRequest;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 847
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAndBindVideoState result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-static {v2}, Lcom/tudou/detail/vo/VideoState;->createFromJson(Ljava/lang/String;)Lcom/tudou/detail/vo/VideoState;

    move-result-object v3

    .line 849
    .local v3, "state":Lcom/tudou/detail/vo/VideoState;
    if-eqz v3, :cond_1

    .line 850
    invoke-virtual {v3, p1}, Lcom/tudou/detail/vo/VideoState;->setVideoId(Ljava/lang/String;)V

    .line 851
    iput-object v3, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoState:Lcom/tudou/detail/vo/VideoState;

    .line 852
    iget-object v8, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v8}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 853
    .local v6, "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-nez v6, :cond_0

    .line 854
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "loadAndBindVideoState running with no DetailActivity"

    invoke-static {v8, v9}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const/4 v8, 0x0

    .line 873
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "state":Lcom/tudou/detail/vo/VideoState;
    .end local v5    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v6    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .end local v7    # "url":Ljava/lang/String;
    :goto_0
    return v8

    .line 857
    .restart local v2    # "result":Ljava/lang/String;
    .restart local v3    # "state":Lcom/tudou/detail/vo/VideoState;
    .restart local v5    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v6    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/tudou/detail/DetailModel$LoaderTask$16;

    invoke-direct {v1, p0, v6, v3}, Lcom/tudou/detail/DetailModel$LoaderTask$16;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;Lcom/tudou/detail/vo/VideoState;)V

    .line 866
    .local v1, "r":Ljava/lang/Runnable;
    iget-object v8, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v8, v1}, Lcom/tudou/detail/DetailModel;->access$800(Lcom/tudou/detail/DetailModel;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    const/4 v4, 0x1

    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "state":Lcom/tudou/detail/vo/VideoState;
    .end local v5    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .end local v6    # "tOldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    .end local v7    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    move v8, v4

    .line 873
    goto :goto_0

    .line 869
    .restart local v5    # "tHttpRequest":Lcom/youku/network/IHttpRequest;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v9, "loadAndBindVideoState"

    invoke-static {v8, v9, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private transformGoodsJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 777
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    const-string v0, ""

    .line 782
    :goto_0
    return-object v0

    .line 779
    :cond_0
    const-string v0, "\"8\": ["

    const-string v1, "\"mCommodity\": ["

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"10\": ["

    const-string v2, "\"mShop\": ["

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\"11\": ["

    const-string v2, "\"mCommodityActivities\": ["

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 782
    goto :goto_0
.end method

.method private waitForVid()V
    .locals 6

    .prologue
    .line 882
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LoaderTask waitForVid."

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    monitor-enter p0

    .line 884
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 886
    .local v0, "firstPartTime":J
    :goto_0
    iget-boolean v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    :try_start_1
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LoaderTask waitForVid."

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 890
    :catch_0
    move-exception v2

    goto :goto_0

    .line 893
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms for previous step to finish binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    monitor-exit p0

    .line 895
    return-void

    .line 894
    .end local v0    # "firstPartTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 241
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoaderTask run() id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mType:Lcom/tudou/android/Youku$Type;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mFlag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mFlag:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v3, 0x1

    .line 247
    .local v3, "success":Z
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v5}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 248
    .local v2, "oldCallbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-nez v2, :cond_1

    .line 249
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LoaderTask running with no DetailActivity"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 254
    .local v0, "begin":J
    iget v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mFlag:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    .line 255
    iget-object v6, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mId:Ljava/lang/String;

    iget-object v7, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mPlId:Ljava/lang/String;

    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mType:Lcom/tudou/android/Youku$Type;

    sget-object v8, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    if-ne v5, v8, :cond_11

    const/4 v5, 0x1

    :goto_1
    invoke-direct {p0, v6, v7, v5}, Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindVideoDetail(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 257
    :cond_2
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoaderTask step 1: loading VideoDetail done, takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " times."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-boolean v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 263
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v2}, Lcom/tudou/detail/DetailModel$Callbacks;->getCurrentVid()Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "tVideoId":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoaderTask getCurrentVid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lcom/tudou/detail/DetailModel$Callbacks;->getCurrentVid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 266
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v5}, Lcom/tudou/detail/DetailModel;->access$300(Lcom/tudou/detail/DetailModel;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tudou/detail/DetailModel$LoaderTask$1;

    invoke-direct {v6, p0, v2}, Lcom/tudou/detail/DetailModel$LoaderTask$1;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    invoke-direct {p0}, Lcom/tudou/detail/DetailModel$LoaderTask;->waitForVid()V

    .line 292
    iget-boolean v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 300
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 301
    iget v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mFlag:I

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_3

    .line 302
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindVideoState(Ljava/lang/String;)Z

    move-result v3

    .line 304
    :cond_3
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoaderTask step 2: loading VideoState done, takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " times."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-boolean v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 311
    iget v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mFlag:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4

    .line 312
    invoke-direct {p0}, Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindDetailPageSlider()Z

    move-result v3

    .line 314
    :cond_4
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoaderTask step 3: loading PageSlider done, takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " times."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-boolean v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 320
    iget v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mFlag:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_5

    .line 321
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    invoke-direct {p0, v5}, Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindPlaylist(Lcom/youku/vo/NewVideoDetail;)Z

    move-result v3

    .line 323
    :cond_5
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoaderTask step 4: loading VideoList done, takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " times."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-boolean v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 328
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    iget-object v5, v5, Lcom/tudou/detail/vo/Interactive;->mHtml5_3:Lcom/tudou/detail/vo/Interactive$Html5;

    if-eqz v5, :cond_6

    .line 329
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v5}, Lcom/tudou/detail/DetailModel;->access$300(Lcom/tudou/detail/DetailModel;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tudou/detail/DetailModel$LoaderTask$2;

    invoke-direct {v6, p0}, Lcom/tudou/detail/DetailModel$LoaderTask$2;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    :cond_6
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    iget-object v5, v5, Lcom/tudou/detail/vo/Interactive;->mSpecialTopic:Lcom/tudou/detail/vo/Interactive$SpecialTopic;

    if-eqz v5, :cond_7

    .line 345
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v5}, Lcom/tudou/detail/DetailModel;->access$300(Lcom/tudou/detail/DetailModel;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tudou/detail/DetailModel$LoaderTask$3;

    invoke-direct {v6, p0, v2}, Lcom/tudou/detail/DetailModel$LoaderTask$3;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    :cond_7
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    iget-object v5, v5, Lcom/tudou/detail/vo/Interactive;->mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    iget-object v5, v5, Lcom/tudou/detail/vo/Interactive;->mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    iget-object v5, v5, Lcom/tudou/detail/vo/Interactive$SelectnessTab;->mCardInfos:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mInteractive:Lcom/tudou/detail/vo/Interactive;

    iget-object v5, v5, Lcom/tudou/detail/vo/Interactive;->mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    iget-object v5, v5, Lcom/tudou/detail/vo/Interactive$SelectnessTab;->mCardInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_8

    .line 359
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v5}, Lcom/tudou/detail/DetailModel;->access$300(Lcom/tudou/detail/DetailModel;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tudou/detail/DetailModel$LoaderTask$4;

    invoke-direct {v6, p0, v2}, Lcom/tudou/detail/DetailModel$LoaderTask$4;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    :cond_8
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    if-eqz v5, :cond_9

    .line 374
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v5}, Lcom/tudou/detail/DetailModel;->access$300(Lcom/tudou/detail/DetailModel;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tudou/detail/DetailModel$LoaderTask$5;

    invoke-direct {v6, p0, v2}, Lcom/tudou/detail/DetailModel$LoaderTask$5;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    :cond_9
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tFetchFeature = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->tFetchFeature:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-boolean v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->tFetchFeature:Z

    if-eqz v5, :cond_b

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 410
    iget v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mFlag:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_a

    .line 411
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindVideoFeature(Ljava/lang/String;)Z

    .line 413
    :cond_a
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoaderTask step 5: loading feature done, takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " times."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-boolean v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 419
    :cond_b
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoState:Lcom/tudou/detail/vo/VideoState;

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoState:Lcom/tudou/detail/vo/VideoState;

    invoke-virtual {v5}, Lcom/tudou/detail/vo/VideoState;->isHasHD()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 421
    iget v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mFlag:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_c

    .line 422
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindHD(Ljava/lang/String;)Z

    move-result v3

    .line 424
    :cond_c
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoaderTask step 6: loading hd done, takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " times."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-boolean v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 432
    :goto_4
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoState:Lcom/tudou/detail/vo/VideoState;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoState:Lcom/tudou/detail/vo/VideoState;

    invoke-virtual {v5}, Lcom/tudou/detail/vo/VideoState;->isHasGoods()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 434
    iget v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mFlag:I

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_d

    .line 435
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindGoods(Ljava/lang/String;)Z

    move-result v3

    .line 437
    :cond_d
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoaderTask step 7: loading Goods done, takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " times."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-boolean v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 458
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 459
    iget v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mFlag:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_e

    .line 460
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindComments(Ljava/lang/String;)Z

    move-result v3

    .line 462
    :cond_e
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoaderTask step 8: loading Comments done, takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " times."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-boolean v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 469
    iget v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mFlag:I

    and-int/lit16 v5, v5, 0x100

    if-nez v5, :cond_f

    .line 470
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    iget-object v6, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoId:Ljava/lang/String;

    iget-object v7, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoType:Lcom/tudou/android/Youku$VideoType;

    invoke-direct {p0, v5, v6, v7}, Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindRecommend(Lcom/youku/vo/NewVideoDetail;Ljava/lang/String;Lcom/tudou/android/Youku$VideoType;)Z

    move-result v3

    .line 472
    :cond_f
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoaderTask step 9: loading Recommend done, takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " times."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-boolean v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 479
    iget v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mFlag:I

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_10

    .line 480
    invoke-direct {p0}, Lcom/tudou/detail/DetailModel$LoaderTask;->loadAndBindEggs()Z

    move-result v3

    .line 482
    :cond_10
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LoaderTask step 10: loading eggs done, takes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " times."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-boolean v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 487
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v5}, Lcom/tudou/detail/DetailModel;->access$300(Lcom/tudou/detail/DetailModel;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tudou/detail/DetailModel$LoaderTask$7;

    invoke-direct {v6, p0, v2}, Lcom/tudou/detail/DetailModel$LoaderTask$7;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 255
    .end local v4    # "tVideoId":Ljava/lang/String;
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 263
    :cond_12
    iget-object v4, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoId:Ljava/lang/String;

    goto/16 :goto_2

    .line 296
    .restart local v4    # "tVideoId":Ljava/lang/String;
    :cond_13
    invoke-virtual {p0, v4}, Lcom/tudou/detail/DetailModel$LoaderTask;->setVideoId(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LoaderTask already has videoId."

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 429
    :cond_14
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LoaderTask step 6: loading hd skip"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 442
    :cond_15
    iget-object v5, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v5}, Lcom/tudou/detail/DetailModel;->access$300(Lcom/tudou/detail/DetailModel;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/tudou/detail/DetailModel$LoaderTask$6;

    invoke-direct {v6, p0, v2}, Lcom/tudou/detail/DetailModel$LoaderTask$6;-><init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 454
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LoaderTask step 7: loading Goods skip"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 877
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoaderTask setVideoId vid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mVideoId:Ljava/lang/String;

    .line 879
    return-void
.end method

.method public stopLocked()V
    .locals 3

    .prologue
    .line 1152
    monitor-enter p0

    .line 1153
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mStopped:Z

    .line 1154
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v1}, Lcom/tudou/detail/DetailModel;->access$300(Lcom/tudou/detail/DetailModel;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1160
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1161
    return-void

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1160
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method tryGetCallbacks(Lcom/tudou/detail/DetailModel$Callbacks;)Lcom/tudou/detail/DetailModel$Callbacks;
    .locals 5
    .param p1, "oldCallbacks"    # Lcom/tudou/detail/DetailModel$Callbacks;

    .prologue
    const/4 v1, 0x0

    .line 898
    iget-object v2, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v2}, Lcom/tudou/detail/DetailModel;->access$900(Lcom/tudou/detail/DetailModel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 899
    :try_start_0
    iget-boolean v3, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_0

    .line 900
    monitor-exit v2

    move-object v0, v1

    .line 916
    :goto_0
    return-object v0

    .line 903
    :cond_0
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v3}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-nez v3, :cond_1

    .line 904
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 907
    :cond_1
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v3}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/DetailModel$Callbacks;

    .line 908
    .local v0, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 909
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 911
    :cond_2
    if-nez v0, :cond_3

    .line 912
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "no mCallbacks"

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 916
    :cond_3
    monitor-exit v2

    goto :goto_0

    .line 917
    .end local v0    # "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
