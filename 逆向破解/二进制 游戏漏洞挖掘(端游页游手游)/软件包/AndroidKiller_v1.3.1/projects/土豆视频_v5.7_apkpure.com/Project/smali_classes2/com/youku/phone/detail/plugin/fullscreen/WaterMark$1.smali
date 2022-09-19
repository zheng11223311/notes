.class Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$1;
.super Lcom/tudou/service/attention/IAttention$GetCallBack;
.source "WaterMark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setData(Lcom/youku/vo/NewVideoDetail;Lcom/youku/player/module/VideoUrlInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$GetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 118
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 119
    return-void
.end method

.method public onSucess(Ljava/util/ArrayList;)V
    .locals 5
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
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/attention/IAttention$Results;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "atte":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/attention/IAttention$Results;

    iget v1, v1, Lcom/tudou/service/attention/IAttention$Results;->code:I

    if-ne v1, v2, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 111
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 112
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-static {v1}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v4

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/tudou/detail/widget/SwitchButton;->setEnabled(Z)V

    .line 113
    return-void

    :cond_1
    move v1, v3

    .line 112
    goto :goto_0
.end method
