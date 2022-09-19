.class Lcom/tudou/ui/activity/DetailActivity$13;
.super Lcom/tudou/service/attention/IAttention$GetCallBack;
.source "DetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity;->updateSub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 0

    .prologue
    .line 2056
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$13;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$GetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$13;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v0, :cond_0

    .line 2080
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$13;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->onUnSubscribe()V

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$13;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onUnSubscribe()V

    .line 2082
    return-void
.end method

.method public onSucess(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/attention/IAttention$Results;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2060
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/attention/IAttention$Results;>;"
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$13;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->detailHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 2075
    :cond_0
    :goto_0
    return-void

    .line 2063
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2064
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/service/attention/IAttention$Results;

    iget v0, v0, Lcom/tudou/service/attention/IAttention$Results;->code:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 2065
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$13;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v0, :cond_2

    .line 2066
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$13;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->onUnSubscribe()V

    .line 2067
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$13;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onUnSubscribe()V

    goto :goto_0

    .line 2069
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$13;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    if-eqz v0, :cond_4

    .line 2070
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$13;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v0, v0, Lcom/tudou/ui/activity/DetailActivity;->mPluginFullscreen:Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/PluginFullScreenPlay;->onSubscribe()V

    .line 2071
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$13;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->onSubscribe()V

    goto :goto_0
.end method
