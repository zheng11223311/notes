.class Lcom/tudou/ui/fragment/SearchManager$8;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchManager;->getRecommend(Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchManager;

.field final synthetic val$fromSearch:Z

.field final synthetic val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchManager;ZLandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager$8;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iput-boolean p2, p0, Lcom/tudou/ui/fragment/SearchManager$8;->val$fromSearch:Z

    iput-object p3, p0, Lcom/tudou/ui/fragment/SearchManager$8;->val$mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1259
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager$8;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager$8;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1261
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1262
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1263
    const/16 v1, 0x70

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1264
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager$8;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1265
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 12
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/16 v11, 0x6e

    .line 1191
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v7

    .line 1193
    .local v7, "str":Ljava/lang/String;
    :try_start_0
    const-class v9, Lcom/youku/vo/SearchOfResult;

    invoke-static {v7, v9}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/SearchOfResult;

    .line 1194
    .local v6, "result":Lcom/youku/vo/SearchOfResult;
    const/4 v8, 0x0

    .line 1195
    .local v8, "videoCount":I
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager$8;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v9, v9, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    .line 1196
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager$8;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v9, v9, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1198
    :cond_0
    iget-boolean v9, p0, Lcom/tudou/ui/fragment/SearchManager$8;->val$fromSearch:Z

    if-eqz v9, :cond_2

    .line 1199
    const/4 v5, 0x0

    .line 1200
    .local v5, "num":I
    if-eqz v6, :cond_1

    iget-object v9, v6, Lcom/youku/vo/SearchOfResult;->videos:Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    .line 1201
    iget-object v9, v6, Lcom/youku/vo/SearchOfResult;->videos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1202
    :cond_1
    move v8, v5

    .line 1203
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_3

    .line 1204
    new-instance v0, Lcom/youku/vo/SearchOfData;

    invoke-direct {v0}, Lcom/youku/vo/SearchOfData;-><init>()V

    .line 1205
    .local v0, "data":Lcom/youku/vo/SearchOfData;
    const/4 v9, 0x2

    iput v9, v0, Lcom/youku/vo/SearchOfData;->viewType:I

    .line 1206
    iget-object v9, v6, Lcom/youku/vo/SearchOfResult;->videos:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/SearchOfVideo;

    iput-object v9, v0, Lcom/youku/vo/SearchOfData;->video:Lcom/youku/vo/SearchOfVideo;

    .line 1207
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager$8;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v9, v9, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1210
    .end local v0    # "data":Lcom/youku/vo/SearchOfData;
    .end local v2    # "i":I
    .end local v5    # "num":I
    :cond_2
    iget-object v9, v6, Lcom/youku/vo/SearchOfResult;->videos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1211
    .local v3, "length":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1212
    new-instance v0, Lcom/youku/vo/SearchOfData;

    invoke-direct {v0}, Lcom/youku/vo/SearchOfData;-><init>()V

    .line 1213
    .restart local v0    # "data":Lcom/youku/vo/SearchOfData;
    const/4 v9, 0x2

    iput v9, v0, Lcom/youku/vo/SearchOfData;->viewType:I

    .line 1214
    iget-object v9, v6, Lcom/youku/vo/SearchOfResult;->videos:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/SearchOfVideo;

    iput-object v9, v0, Lcom/youku/vo/SearchOfData;->video1:Lcom/youku/vo/SearchOfVideo;

    .line 1215
    add-int/lit8 v9, v2, 0x1

    if-lt v9, v3, :cond_6

    .line 1216
    add-int/lit8 v8, v8, 0x1

    .line 1217
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager$8;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v9, v9, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    .end local v0    # "data":Lcom/youku/vo/SearchOfData;
    .end local v3    # "length":I
    :cond_3
    const/4 v3, 0x0

    .line 1228
    .restart local v3    # "length":I
    if-eqz v6, :cond_4

    iget-object v9, v6, Lcom/youku/vo/SearchOfResult;->podcasts:Lcom/youku/vo/SearchOfResult$Podcast;

    if-eqz v9, :cond_4

    iget-object v9, v6, Lcom/youku/vo/SearchOfResult;->podcasts:Lcom/youku/vo/SearchOfResult$Podcast;

    iget-object v9, v9, Lcom/youku/vo/SearchOfResult$Podcast;->items:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    .line 1229
    iget-object v9, v6, Lcom/youku/vo/SearchOfResult;->podcasts:Lcom/youku/vo/SearchOfResult$Podcast;

    iget-object v9, v9, Lcom/youku/vo/SearchOfResult$Podcast;->items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1230
    :cond_4
    add-int/2addr v8, v3

    .line 1231
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_5

    .line 1232
    new-instance v0, Lcom/youku/vo/SearchOfData;

    invoke-direct {v0}, Lcom/youku/vo/SearchOfData;-><init>()V

    .line 1233
    .restart local v0    # "data":Lcom/youku/vo/SearchOfData;
    const/4 v9, 0x3

    iput v9, v0, Lcom/youku/vo/SearchOfData;->viewType:I

    .line 1234
    iget-object v9, v6, Lcom/youku/vo/SearchOfResult;->podcasts:Lcom/youku/vo/SearchOfResult$Podcast;

    iget-object v9, v9, Lcom/youku/vo/SearchOfResult$Podcast;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/SearchOfPodcasts;

    iput-object v9, v0, Lcom/youku/vo/SearchOfData;->podcast1:Lcom/youku/vo/SearchOfPodcasts;

    .line 1235
    add-int/lit8 v9, v2, 0x1

    if-lt v9, v3, :cond_7

    .line 1236
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager$8;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v9, v9, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    .end local v0    # "data":Lcom/youku/vo/SearchOfData;
    :cond_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 1245
    .local v4, "msg":Landroid/os/Message;
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 1246
    const/16 v9, 0x6e

    iput v9, v4, Landroid/os/Message;->what:I

    .line 1247
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager$8;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1255
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v6    # "result":Lcom/youku/vo/SearchOfResult;
    .end local v8    # "videoCount":I
    :goto_3
    return-void

    .line 1220
    .end local v4    # "msg":Landroid/os/Message;
    .restart local v0    # "data":Lcom/youku/vo/SearchOfData;
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    .restart local v6    # "result":Lcom/youku/vo/SearchOfResult;
    .restart local v8    # "videoCount":I
    :cond_6
    const/4 v9, 0x2

    iput v9, v0, Lcom/youku/vo/SearchOfData;->viewType:I

    .line 1221
    iget-object v9, v6, Lcom/youku/vo/SearchOfResult;->videos:Ljava/util/ArrayList;

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/SearchOfVideo;

    iput-object v9, v0, Lcom/youku/vo/SearchOfData;->video2:Lcom/youku/vo/SearchOfVideo;

    .line 1222
    add-int/lit8 v8, v8, 0x1

    .line 1223
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager$8;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v9, v9, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_1

    .line 1239
    :cond_7
    const/4 v9, 0x3

    iput v9, v0, Lcom/youku/vo/SearchOfData;->viewType:I

    .line 1240
    iget-object v9, v6, Lcom/youku/vo/SearchOfResult;->podcasts:Lcom/youku/vo/SearchOfResult$Podcast;

    iget-object v9, v9, Lcom/youku/vo/SearchOfResult$Podcast;->items:Ljava/util/ArrayList;

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youku/vo/SearchOfPodcasts;

    iput-object v9, v0, Lcom/youku/vo/SearchOfData;->podcast2:Lcom/youku/vo/SearchOfPodcasts;

    .line 1241
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager$8;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v9, v9, Lcom/tudou/ui/fragment/SearchManager;->searchOfDatas:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 1248
    .end local v0    # "data":Lcom/youku/vo/SearchOfData;
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v6    # "result":Lcom/youku/vo/SearchOfResult;
    .end local v8    # "videoCount":I
    :catch_0
    move-exception v1

    .line 1249
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 1250
    .restart local v4    # "msg":Landroid/os/Message;
    const/4 v9, -0x1

    iput v9, v4, Landroid/os/Message;->arg1:I

    .line 1251
    iput v11, v4, Landroid/os/Message;->what:I

    .line 1252
    iget-object v9, p0, Lcom/tudou/ui/fragment/SearchManager$8;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1253
    const-string v9, "SearchManager getRecommend()"

    invoke-static {v9, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method
