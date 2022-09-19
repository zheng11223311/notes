.class Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;
.super Ljava/lang/Object;
.source "PluginFullScreenPauseAD.java"

# interfaces
.implements Lcom/youku/player/goplay/IGetAdvCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginFullScreenPauseAD;->showPauseAD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/player/goplay/GoplayException;)V
    .locals 2
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$400(Lcom/youku/player/plugin/PluginFullScreenPauseAD;I)V

    .line 356
    return-void
.end method

.method public onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 7
    .param p1, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 321
    iget-object v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    iput-object p1, v4, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->pauseADVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    .line 322
    if-eqz p1, :cond_1

    .line 323
    iget-object v4, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/player/goplay/AdvInfo;

    .line 324
    .local v0, "advInfo":Lcom/youku/player/goplay/AdvInfo;
    const-string v4, "2"

    iget-object v5, v0, Lcom/youku/player/goplay/AdvInfo;->VT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    invoke-static {v0}, Lcom/youku/player/util/DisposableStatsUtils;->disposePausedVC(Lcom/youku/player/goplay/AdvInfo;)V

    .line 327
    iget-object v4, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    .end local v0    # "advInfo":Lcom/youku/player/goplay/AdvInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->pauseADVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    if-eqz v4, :cond_3

    .line 332
    iget-object v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->pauseADVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v4, v4, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 333
    .local v3, "size":I
    if-nez v3, :cond_2

    .line 334
    iget-object v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$102(Lcom/youku/player/plugin/PluginFullScreenPauseAD;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    sget-object v4, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v5, "\u6682\u505c\u5e7f\u544aVC:\u4e3a\u7a7a"

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 338
    iget-object v5, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    iget-object v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->pauseADVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v4, v4, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/player/goplay/AdvInfo;

    iget-object v4, v4, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$102(Lcom/youku/player/plugin/PluginFullScreenPauseAD;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    iget-object v5, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    iget-object v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    iget-object v4, v4, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->pauseADVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v4, v4, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/player/goplay/AdvInfo;

    iget v4, v4, Lcom/youku/player/goplay/AdvInfo;->SDKID:I

    invoke-static {v5, v4}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$202(Lcom/youku/player/plugin/PluginFullScreenPauseAD;I)I

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 346
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_3
    sget-object v4, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6682\u505c\u5e7f\u544a\u5730\u5740 imageURL--->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v6}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$100(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v4}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$200(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v4}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$100(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v4}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$100(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 351
    :cond_4
    :goto_2
    return-void

    .line 350
    :cond_5
    iget-object v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$3;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-virtual {v4}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->showADImage()V

    goto :goto_2
.end method
