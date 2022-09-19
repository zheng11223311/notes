.class Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;
.super Ljava/lang/Object;
.source "PluginFullScreenPauseAD.java"

# interfaces
.implements Lcom/youku/player/goplay/IGetOfflineAdvCallBack;


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
    .line 277
    iput-object p1, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/player/goplay/GoplayException;)V
    .locals 0
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    .line 302
    return-void
.end method

.method public onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;Lcom/youdo/vo/XAdInstance;)V
    .locals 6
    .param p1, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;
    .param p2, "instance"    # Lcom/youdo/vo/XAdInstance;

    .prologue
    const/4 v5, 0x6

    .line 280
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v2, p2}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$002(Lcom/youku/player/plugin/PluginFullScreenPauseAD;Lcom/youdo/vo/XAdInstance;)Lcom/youdo/vo/XAdInstance;

    .line 281
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    iput-object p1, v2, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->pauseADVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    .line 282
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    iget-object v2, v2, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->pauseADVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    iget-object v2, v2, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->pauseADVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v2, v2, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 284
    .local v1, "size":I
    if-nez v1, :cond_0

    .line 285
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$102(Lcom/youku/player/plugin/PluginFullScreenPauseAD;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string/jumbo v3, "\u79bb\u7ebf\u6682\u505c\u5e7f\u544aVC:\u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v2, v5}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$202(Lcom/youku/player/plugin/PluginFullScreenPauseAD;I)I

    .line 289
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v2}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$300(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Lcom/youku/player/ad/pausead/PauseAdContext;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v3}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$000(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Lcom/youdo/vo/XAdInstance;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/player/ad/pausead/PauseAdContext;->setOfflineAdInstance(Lcom/youdo/vo/XAdInstance;)V

    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 291
    iget-object v3, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    iget-object v2, v2, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->pauseADVideoAdvInfo:Lcom/youku/player/goplay/VideoAdvInfo;

    iget-object v2, v2, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/player/goplay/AdvInfo;

    iget-object v2, v2, Lcom/youku/player/goplay/AdvInfo;->RS:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$102(Lcom/youku/player/plugin/PluginFullScreenPauseAD;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    sget-object v2, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u79bb\u7ebf\u6682\u505c\u5e7f\u544a\u5730\u5740 imageURL--->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v4}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$100(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v2}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$200(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)I

    move-result v2

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-static {v2}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->access$100(Lcom/youku/player/plugin/PluginFullScreenPauseAD;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 296
    iget-object v2, p0, Lcom/youku/player/plugin/PluginFullScreenPauseAD$2;->this$0:Lcom/youku/player/plugin/PluginFullScreenPauseAD;

    invoke-virtual {v2}, Lcom/youku/player/plugin/PluginFullScreenPauseAD;->showADImage()V

    .line 298
    :cond_2
    return-void
.end method
