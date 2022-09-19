.class Lcom/youku/player/danmaku/DanmakuManager$2;
.super Ljava/lang/Object;
.source "DanmakuManager.java"

# interfaces
.implements Lcom/youku/player/danmaku/IDanmakuInfoCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/danmaku/DanmakuManager;->handleDanmakuInfo(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/danmaku/DanmakuManager;

.field final synthetic val$iid:Ljava/lang/String;

.field final synthetic val$minute_at:I

.field final synthetic val$minute_count:I

.field final synthetic val$myGetDanmakuManager:Lcom/youku/player/danmaku/MyGetDanmakuManager;


# direct methods
.method constructor <init>(Lcom/youku/player/danmaku/DanmakuManager;ILjava/lang/String;ILcom/youku/player/danmaku/MyGetDanmakuManager;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iput p2, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$minute_at:I

    iput-object p3, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$iid:Ljava/lang/String;

    iput p4, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$minute_count:I

    iput-object p5, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$myGetDanmakuManager:Lcom/youku/player/danmaku/MyGetDanmakuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 5

    .prologue
    .line 164
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u83b7\u53d6\u5f39\u5e55\u72b6\u6001\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/player/danmaku/DanmakuManager;->isGetDanmakuStatus:Z

    .line 166
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$iid:Ljava/lang/String;

    iget v2, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$minute_at:I

    iget v3, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$minute_count:I

    iget-object v4, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$myGetDanmakuManager:Lcom/youku/player/danmaku/MyGetDanmakuManager;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/youku/player/danmaku/DanmakuManager;->access$100(Lcom/youku/player/danmaku/DanmakuManager;Ljava/lang/String;IILcom/youku/player/danmaku/MyGetDanmakuManager;)V

    .line 168
    return-void
.end method

.method public onSuccess(Ljava/lang/String;ZZLjava/util/ArrayList;)V
    .locals 5
    .param p1, "danmakuInfo"    # Ljava/lang/String;
    .param p2, "danmakuEnable"    # Z
    .param p3, "isUserShutUp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "starUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 109
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iput-boolean v3, v0, Lcom/youku/player/danmaku/DanmakuManager;->isGetDanmakuStatus:Z

    .line 110
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iput-boolean p3, v0, Lcom/youku/player/danmaku/DanmakuManager;->isUserShutUp:Z

    .line 111
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iput-object p4, v0, Lcom/youku/player/danmaku/DanmakuManager;->starUids:Ljava/util/ArrayList;

    .line 112
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iput-object p1, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuStatus:Ljava/lang/String;

    .line 113
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8fd4\u56de\u72b6\u6001\u662f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v2, v2, Lcom/youku/player/danmaku/DanmakuManager;->danmakuStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",danmakuEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v1, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    .line 116
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    invoke-virtual {v0, p2}, Lcom/youku/player/danmaku/DanmakuManager;->handleDanmakuEnable(Z)V

    .line 117
    if-eqz p2, :cond_0

    if-eqz p1, :cond_6

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v0, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    if-ge v0, v4, :cond_1

    .line 121
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v2, v2, Lcom/youku/player/danmaku/DanmakuManager;->currentPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/youku/player/danmaku/DanmakuManager;->beginDanmaku(Ljava/lang/String;I)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    const/4 v1, 0x0

    iput v1, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    .line 124
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iput-boolean v3, v0, Lcom/youku/player/danmaku/DanmakuManager;->isDanmakuNoData:Z

    .line 125
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v0, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 126
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    const/4 v1, 0x4

    iput v1, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuNoDataStatus:I

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    invoke-static {v0}, Lcom/youku/player/danmaku/DanmakuManager;->access$000(Lcom/youku/player/danmaku/DanmakuManager;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    invoke-static {v0}, Lcom/youku/player/danmaku/DanmakuManager;->access$000(Lcom/youku/player/danmaku/DanmakuManager;)Lcom/youku/player/plugin/MediaPlayerDelegate;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/player/plugin/MediaPlayerDelegate;->isFullScreen:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/youku/player/config/MediaPlayerConfiguration;->getInstance()Lcom/youku/player/config/MediaPlayerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/player/config/MediaPlayerConfiguration;->showTudouPadDanmaku()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    :cond_3
    sget-object v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 132
    sget-object v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuHandler:Landroid/os/Handler;

    new-instance v1, Lcom/youku/player/danmaku/DanmakuManager$2$1;

    invoke-direct {v1, p0}, Lcom/youku/player/danmaku/DanmakuManager$2$1;-><init>(Lcom/youku/player/danmaku/DanmakuManager$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    :cond_4
    :goto_1
    return-void

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iput v4, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuNoDataStatus:I

    goto :goto_0

    .line 143
    :cond_6
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v0, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuStatus:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$minute_at:I

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v1, v1, Lcom/youku/player/danmaku/DanmakuManager;->danmakuStatus:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v0, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuStatus:Ljava/lang/String;

    iget v1, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$minute_at:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_7

    .line 146
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$iid:Ljava/lang/String;

    iget v2, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$minute_at:I

    iget v3, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$minute_count:I

    iget-object v4, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$myGetDanmakuManager:Lcom/youku/player/danmaku/MyGetDanmakuManager;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/youku/player/danmaku/DanmakuManager;->access$100(Lcom/youku/player/danmaku/DanmakuManager;Ljava/lang/String;IILcom/youku/player/danmaku/MyGetDanmakuManager;)V

    goto :goto_1

    .line 149
    :cond_7
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u672c\u5206\u949f\u5185\u6ca1\u6709\u5f39\u5e55"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v0, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequest:Ljava/util/ArrayList;

    iget v1, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$minute_at:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v0, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuJsonArray:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v0, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuStatus:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$minute_at:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v1, v1, Lcom/youku/player/danmaku/DanmakuManager;->danmakuStatus:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 154
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u7531\u4e8e\u89c6\u9891\u6ca1\u6709\u5f39\u5e55\uff0c\u6b63\u5728\u8bf7\u6c42\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$minute_at:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5206\u949f\u6570\u636e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$iid:Ljava/lang/String;

    iget v2, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$minute_at:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/youku/player/danmaku/DanmakuManager$2;->val$minute_count:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/player/danmaku/DanmakuManager;->handleDanmakuInfo(Ljava/lang/String;II)V

    goto/16 :goto_1
.end method
