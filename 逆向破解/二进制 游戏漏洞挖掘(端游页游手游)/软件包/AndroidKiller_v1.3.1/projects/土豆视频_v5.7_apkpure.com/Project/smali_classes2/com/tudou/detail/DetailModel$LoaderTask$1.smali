.class Lcom/tudou/detail/DetailModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "DetailModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel$LoaderTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel$LoaderTask;Lcom/tudou/detail/DetailModel$Callbacks;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$LoaderTask$1;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$LoaderTask$1;->val$oldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 268
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$LoaderTask$1;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iget-object v4, p0, Lcom/tudou/detail/DetailModel$LoaderTask$1;->val$oldCallbacks:Lcom/tudou/detail/DetailModel$Callbacks;

    invoke-virtual {v3, v4}, Lcom/tudou/detail/DetailModel$LoaderTask;->tryGetCallbacks(Lcom/tudou/detail/DetailModel$Callbacks;)Lcom/tudou/detail/DetailModel$Callbacks;

    move-result-object v0

    .line 269
    .local v0, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    if-eqz v0, :cond_0

    .line 270
    invoke-interface {v0}, Lcom/tudou/detail/DetailModel$Callbacks;->getCurrentVid()Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "tVideoId":Ljava/lang/String;
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoaderTask mainthread getCurrentVid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    if-eqz v0, :cond_0

    .line 274
    invoke-interface {v0}, Lcom/tudou/detail/DetailModel$Callbacks;->setLoadOnVideoChanged()Z

    .line 289
    .end local v2    # "tVideoId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 277
    .restart local v2    # "tVideoId":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$LoaderTask$1;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    invoke-virtual {v3, v2}, Lcom/tudou/detail/DetailModel$LoaderTask;->setVideoId(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/tudou/detail/DetailModel$LoaderTask$1;->this$1:Lcom/tudou/detail/DetailModel$LoaderTask;

    iget-object v3, v3, Lcom/tudou/detail/DetailModel$LoaderTask;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v3}, Lcom/tudou/detail/DetailModel;->access$200(Lcom/tudou/detail/DetailModel;)Lcom/tudou/detail/DetailModel$LoaderTask;

    move-result-object v4

    monitor-enter v4

    .line 280
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :goto_1
    :try_start_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
