.class Lcom/youku/player/BaseMediaPlayer$1;
.super Ljava/lang/Object;
.source "BaseMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/BaseMediaPlayer;->preparePlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/BaseMediaPlayer;


# direct methods
.method constructor <init>(Lcom/youku/player/BaseMediaPlayer;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 270
    sget-object v1, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    .line 271
    .local v1, "lastHandler":Landroid/os/Handler;
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v2}, Lcom/youku/player/BaseMediaPlayer;->getDataSource()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "dataSource":Ljava/lang/String;
    const-string v2, "BaseMediaPlayer_Handler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preparePlayer,lastHandler="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  mHandler="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v2, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    if-eq v1, v2, :cond_0

    .line 275
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v3, "handler changed, return!"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 278
    :cond_0
    sget-object v2, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 279
    sget-object v2, Lcom/youku/player/BaseMediaPlayer;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/youku/player/BaseMediaPlayer$1$1;

    invoke-direct {v3, p0, v0}, Lcom/youku/player/BaseMediaPlayer$1$1;-><init>(Lcom/youku/player/BaseMediaPlayer$1;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 338
    :cond_1
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v3, "handler is null, start again."

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/youku/player/BaseMediaPlayer$1;->this$0:Lcom/youku/player/BaseMediaPlayer;

    invoke-virtual {v2}, Lcom/youku/player/BaseMediaPlayer;->start()V

    goto :goto_0
.end method
