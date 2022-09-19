.class Lcom/tudou/detail/widget/VideoBriefBar$4;
.super Ljava/lang/Object;
.source "VideoBriefBar.java"

# interfaces
.implements Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoBriefBar;->setAttention(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoBriefBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoBriefBar;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoBriefBar$4;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetAttentionComplete(Lcom/youku/vo/NewVideoDetail;ZZLjava/lang/String;)V
    .locals 4
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p2, "attention"    # Z
    .param p3, "success"    # Z
    .param p4, "uid"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {}, Lcom/tudou/detail/widget/VideoBriefBar;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetAttentionComplete attention = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "album"

    iget-object v3, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v3, v3, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "aid = "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", success = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    if-eqz p3, :cond_5

    .line 187
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar$4;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoBriefBar;->access$000(Lcom/tudou/detail/widget/VideoBriefBar;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 188
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar$4;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoBriefBar;->access$500(Lcom/tudou/detail/widget/VideoBriefBar;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz p2, :cond_2

    const-string v0, "\u5df2\u8ba2\u9605"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar$4;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoBriefBar;->access$500(Lcom/tudou/detail/widget/VideoBriefBar;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz p2, :cond_3

    const-string v0, "#FFA4A4A4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    if-eqz p2, :cond_4

    .line 191
    const-string v0, "\u8ba2\u9605\u6210\u529f"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 195
    :goto_3
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar$4;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-virtual {v0}, Lcom/tudou/detail/widget/VideoBriefBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0, p1, p2}, Lcom/tudou/ui/activity/DetailActivity;->onAttentionCallBack(Lcom/youku/vo/NewVideoDetail;Z)V

    .line 209
    :cond_0
    :goto_4
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar$4;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoBriefBar;->access$000(Lcom/tudou/detail/widget/VideoBriefBar;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 210
    return-void

    .line 181
    :cond_1
    const-string v0, "uid = "

    goto :goto_0

    .line 188
    :cond_2
    const-string v0, "\u8ba2\u9605"

    goto :goto_1

    .line 189
    :cond_3
    const-string v0, "#FF46AEE3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 193
    :cond_4
    const-string v0, "\u5df2\u53d6\u6d88\u8ba2\u9605"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_3

    .line 197
    :cond_5
    if-eqz p2, :cond_7

    .line 198
    const-string v0, "-5"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 199
    const v0, 0x7f0d01dc

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_4

    .line 200
    :cond_6
    const-string v0, "LIMIT"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const v0, 0x7f0d01de

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_4

    .line 206
    :cond_7
    const v0, 0x7f0d01e0

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_4
.end method
