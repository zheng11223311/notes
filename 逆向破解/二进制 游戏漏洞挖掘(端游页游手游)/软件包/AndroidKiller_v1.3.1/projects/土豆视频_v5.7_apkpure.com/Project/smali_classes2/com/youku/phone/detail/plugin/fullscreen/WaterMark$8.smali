.class Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$8;
.super Ljava/lang/Object;
.source "WaterMark.java"

# interfaces
.implements Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->setAttention(Z)V
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
    .line 328
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetAttentionComplete(Lcom/youku/vo/NewVideoDetail;ZZLjava/lang/String;)V
    .locals 5
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p2, "attention"    # Z
    .param p3, "success"    # Z
    .param p4, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 331
    invoke-static {}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetAttentionComplete attention = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v0, "album"

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "aid = "

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", success = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    if-eqz p3, :cond_4

    .line 337
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 338
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v2

    if-nez p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/tudou/detail/widget/SwitchButton;->setEnabled(Z)V

    .line 339
    if-eqz p2, :cond_3

    .line 340
    const-string v0, "\u8ba2\u9605\u6210\u529f"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 344
    :goto_2
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-virtual {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0, p1, p2}, Lcom/tudou/ui/activity/DetailActivity;->onAttentionCallBack(Lcom/youku/vo/NewVideoDetail;Z)V

    .line 358
    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark$8;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/WaterMark;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 359
    return-void

    .line 331
    :cond_1
    const-string v0, "uid = "

    goto :goto_0

    :cond_2
    move v0, v1

    .line 338
    goto :goto_1

    .line 342
    :cond_3
    const-string v0, "\u5df2\u53d6\u6d88\u8ba2\u9605"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_2

    .line 346
    :cond_4
    if-eqz p2, :cond_6

    .line 347
    const-string v0, "-5"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 348
    const v0, 0x7f0d01dc

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_3

    .line 349
    :cond_5
    const-string v0, "LIMIT"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    const v0, 0x7f0d01de

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_3

    .line 355
    :cond_6
    const v0, 0x7f0d01e0

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_3
.end method
