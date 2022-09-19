.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1$1;
.super Ljava/lang/Object;
.source "FullScreenFragmentVote.java"

# interfaces
.implements Lcom/tudou/detail/DetailModel$OnVoteComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;

.field final synthetic val$info:Lcom/tudou/detail/vo/VoteInfo;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;Lcom/tudou/detail/vo/VoteInfo;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;

    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1$1;->val$info:Lcom/tudou/detail/vo/VoteInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoteComplete(ZLjava/lang/String;ILjava/lang/String;I)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "widgetId"    # I
    .param p4, "error"    # Ljava/lang/String;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->mSharePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1$1;->val$info:Lcom/tudou/detail/vo/VoteInfo;

    iget v2, v2, Lcom/tudou/detail/vo/VoteInfo;->mWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    invoke-static {v0}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->access$000(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;)V

    .line 127
    const-string v0, "\u6295\u7968\u6210\u529f"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1$1;->this$1:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;

    iget-object v0, v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    invoke-virtual {v0, v1, v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->showLoading(ZZ)V

    .line 130
    const-string v0, "\u6295\u7968\u5931\u8d25"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0
.end method
