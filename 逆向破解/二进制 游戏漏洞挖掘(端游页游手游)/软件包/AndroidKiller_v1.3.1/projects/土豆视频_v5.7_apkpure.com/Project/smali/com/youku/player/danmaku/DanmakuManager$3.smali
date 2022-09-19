.class Lcom/youku/player/danmaku/DanmakuManager$3;
.super Ljava/lang/Object;
.source "DanmakuManager.java"

# interfaces
.implements Lcom/youku/player/danmaku/IDanmakuInfoCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/danmaku/DanmakuManager;->handleSuccessfullGetDanmakuStatus(Ljava/lang/String;IILcom/youku/player/danmaku/MyGetDanmakuManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/danmaku/DanmakuManager;

.field final synthetic val$minute_at:I

.field final synthetic val$minute_count:I


# direct methods
.method constructor <init>(Lcom/youku/player/danmaku/DanmakuManager;II)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iput p2, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->val$minute_at:I

    iput p3, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->val$minute_count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 4

    .prologue
    .line 208
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u83b7\u53d6\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->val$minute_at:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5206\u949f\u5f39\u5e55\u6570\u636e\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v0, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequest:Ljava/util/ArrayList;

    iget v1, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->val$minute_at:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v1, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuFailedCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuFailedCount:I

    const/16 v0, 0x1e

    if-le v1, v0, :cond_1

    .line 213
    sget-object v0, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v1, "\u5f39\u5e55\u5931\u8d25\u6b21\u6570\u5927\u4e8e30\u6b21\uff0c\u4e0d\u7ee7\u7eed\u8bf7\u6c42"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    const/4 v1, 0x0

    iput v1, v0, Lcom/youku/player/danmaku/DanmakuManager;->danmakuFailedCount:I

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v1, v1, Lcom/youku/player/danmaku/DanmakuManager;->currentVid:Ljava/lang/String;

    iget v2, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->val$minute_at:I

    iget v3, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->val$minute_count:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/youku/player/danmaku/DanmakuManager;->handleDanmakuInfo(Ljava/lang/String;II)V

    goto :goto_0
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
    .line 181
    .local p4, "starUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 204
    :cond_0
    return-void

    .line 184
    :cond_1
    sget-object v1, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8fd4\u56de\u6570\u636e\u662f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x1e

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v2, v1, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/youku/player/danmaku/DanmakuManager;->danmakuProcessStatus:I

    .line 187
    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v1, v1, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequest:Ljava/util/ArrayList;

    iget v2, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->val$minute_at:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    invoke-virtual {v1, p1}, Lcom/youku/player/danmaku/DanmakuManager;->getDanmakuCount(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v1, v1, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequestTimes:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    .line 192
    sget-object v1, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v2, "\u6b63\u7247\u64ad\u653e\u4e2d\uff0c\u589e\u52a0\u5f39\u5e55"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    invoke-virtual {v1, p1}, Lcom/youku/player/danmaku/DanmakuManager;->addDanmaku(Ljava/lang/String;)V

    .line 198
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v1, v1, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequest:Ljava/util/ArrayList;

    iget v2, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->val$minute_at:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v1, v1, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequest:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 200
    sget-object v1, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u76ee\u524d\u5df2\u7ecf\u6dfb\u52a0\u7684\u6570\u636e\u662f\u7b2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget-object v3, v3, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequest:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5206\u949f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iget v1, v1, Lcom/youku/player/danmaku/DanmakuManager;->danmakuRequestTimes:I

    if-nez v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/youku/player/danmaku/DanmakuManager$3;->this$0:Lcom/youku/player/danmaku/DanmakuManager;

    iput-object p1, v1, Lcom/youku/player/danmaku/DanmakuManager;->danmakuJsonArray:Ljava/lang/String;

    .line 196
    sget-object v1, Lcom/youku/player/LogTag;->TAG_DANMAKU:Ljava/lang/String;

    const-string/jumbo v2, "\u7b2c\u4e00\u6b21\u6dfb\u52a0\u5f39\u5e55"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
