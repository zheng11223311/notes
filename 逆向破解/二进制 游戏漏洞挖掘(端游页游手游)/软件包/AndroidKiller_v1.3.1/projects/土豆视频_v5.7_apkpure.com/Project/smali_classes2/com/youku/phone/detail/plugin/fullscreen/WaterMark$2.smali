.class Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$2;
.super Ljava/lang/Object;
.source "WaterMark.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$detail:Lcom/youku/vo/NewVideoDetail;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Lcom/youku/vo/NewVideoDetail;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$2;->val$detail:Lcom/youku/vo/NewVideoDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$2;->val$detail:Lcom/youku/vo/NewVideoDetail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->userid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const v2, 0x7f0d00a8

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 141
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "type"

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-static {v2}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/detail/widget/SwitchButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "\u53d6\u6d88\u8ba2\u9605"

    :goto_1
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v2}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/DetailActivity;

    .line 135
    .local v1, "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    if-eqz v1, :cond_1

    .line 136
    const-string v2, "vid"

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_1
    const-string v2, "t1.detail_player.subscribe"

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 140
    iget-object v3, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$2;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/SwitchButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-static {v3, v2}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$100(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;Z)V

    goto :goto_0

    .line 133
    .end local v1    # "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_2
    const-string v2, "\u8ba2\u9605"

    goto :goto_1

    .line 140
    .restart local v1    # "tActivity":Lcom/tudou/ui/activity/DetailActivity;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method
