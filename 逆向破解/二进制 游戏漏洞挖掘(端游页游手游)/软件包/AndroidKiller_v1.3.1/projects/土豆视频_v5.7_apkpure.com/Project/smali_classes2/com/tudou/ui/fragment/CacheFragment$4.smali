.class Lcom/tudou/ui/fragment/CacheFragment$4;
.super Ljava/lang/Thread;
.source "CacheFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CacheFragment;->storeProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CacheFragment;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/tudou/ui/fragment/CacheFragment$4;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 293
    :try_start_0
    const-string v1, ""

    .line 294
    .local v1, "freeS":Ljava/lang/String;
    const-string v2, ""

    .line 295
    .local v2, "freey":Ljava/lang/String;
    const-string v7, ""

    .line 296
    .local v7, "total":Ljava/lang/String;
    const/4 v4, 0x0

    .line 297
    .local v4, "mProgress":I
    new-instance v6, Lcom/youku/vo/Room;

    invoke-direct {v6}, Lcom/youku/vo/Room;-><init>()V

    .line 299
    .local v6, "room":Lcom/youku/vo/Room;
    new-instance v3, Lcom/tudou/service/download/SDCardManager;

    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tudou/service/download/DownloadManager;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/tudou/service/download/SDCardManager;-><init>(Ljava/lang/String;)V

    .line 300
    .local v3, "m":Lcom/tudou/service/download/SDCardManager;
    invoke-virtual {v3}, Lcom/tudou/service/download/SDCardManager;->exist()Z

    move-result v8

    if-nez v8, :cond_1

    .line 301
    const/4 v8, -0x1

    iput v8, v6, Lcom/youku/vo/Room;->mProgress:I

    .line 302
    const-string v8, "0"

    iput-object v8, v6, Lcom/youku/vo/Room;->freeS:Ljava/lang/String;

    .line 303
    const-string v8, "0"

    iput-object v8, v6, Lcom/youku/vo/Room;->freey:Ljava/lang/String;

    .line 304
    const-string v8, "0"

    iput-object v8, v6, Lcom/youku/vo/Room;->total:Ljava/lang/String;

    .line 306
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 307
    .local v5, "msg":Landroid/os/Message;
    const/4 v8, 0x1

    iput v8, v5, Landroid/os/Message;->what:I

    .line 308
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 309
    iget-object v8, p0, Lcom/tudou/ui/fragment/CacheFragment$4;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/CacheFragment;->access$900(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 310
    iget-object v8, p0, Lcom/tudou/ui/fragment/CacheFragment$4;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/CacheFragment;->access$900(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    .end local v1    # "freeS":Ljava/lang/String;
    .end local v2    # "freey":Ljava/lang/String;
    .end local v3    # "m":Lcom/tudou/service/download/SDCardManager;
    .end local v4    # "mProgress":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "room":Lcom/youku/vo/Room;
    .end local v7    # "total":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 313
    .restart local v1    # "freeS":Ljava/lang/String;
    .restart local v2    # "freey":Ljava/lang/String;
    .restart local v3    # "m":Lcom/tudou/service/download/SDCardManager;
    .restart local v4    # "mProgress":I
    .restart local v6    # "room":Lcom/youku/vo/Room;
    .restart local v7    # "total":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/tudou/service/download/SDCardManager;->getUsedProgrss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 315
    :try_start_1
    invoke-virtual {v3}, Lcom/tudou/service/download/SDCardManager;->getFreeSize()J

    move-result-wide v8

    long-to-float v8, v8

    invoke-static {v8}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-virtual {v3}, Lcom/tudou/service/download/SDCardManager;->getTotalSize()J

    move-result-wide v8

    long-to-float v8, v8

    invoke-static {v8}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;

    move-result-object v7

    .line 317
    invoke-static {}, Lcom/youku/util/Util;->getSDCardInfo()[J

    move-result-object v8

    if-eqz v8, :cond_2

    .line 318
    invoke-virtual {v3}, Lcom/tudou/service/download/SDCardManager;->getOtherSpace()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/tudou/service/download/SDCardManager;->getTudouVideoSpace()J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-float v8, v8

    invoke-static {v8}, Lcom/youku/util/Util;->formatSize(F)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 323
    :cond_2
    :goto_1
    :try_start_2
    iput v4, v6, Lcom/youku/vo/Room;->mProgress:I

    .line 324
    iput-object v1, v6, Lcom/youku/vo/Room;->freeS:Ljava/lang/String;

    .line 325
    iput-object v2, v6, Lcom/youku/vo/Room;->freey:Ljava/lang/String;

    .line 326
    iput-object v7, v6, Lcom/youku/vo/Room;->total:Ljava/lang/String;

    .line 328
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 329
    .restart local v5    # "msg":Landroid/os/Message;
    const/4 v8, 0x1

    iput v8, v5, Landroid/os/Message;->what:I

    .line 330
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 331
    iget-object v8, p0, Lcom/tudou/ui/fragment/CacheFragment$4;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/CacheFragment;->access$900(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 332
    iget-object v8, p0, Lcom/tudou/ui/fragment/CacheFragment$4;->this$0:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-static {v8}, Lcom/tudou/ui/fragment/CacheFragment;->access$900(Lcom/tudou/ui/fragment/CacheFragment;)Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 333
    .end local v1    # "freeS":Ljava/lang/String;
    .end local v2    # "freey":Ljava/lang/String;
    .end local v3    # "m":Lcom/tudou/service/download/SDCardManager;
    .end local v4    # "mProgress":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "room":Lcom/youku/vo/Room;
    .end local v7    # "total":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "freeS":Ljava/lang/String;
    .restart local v2    # "freey":Ljava/lang/String;
    .restart local v3    # "m":Lcom/tudou/service/download/SDCardManager;
    .restart local v4    # "mProgress":I
    .restart local v6    # "room":Lcom/youku/vo/Room;
    .restart local v7    # "total":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_1
.end method
