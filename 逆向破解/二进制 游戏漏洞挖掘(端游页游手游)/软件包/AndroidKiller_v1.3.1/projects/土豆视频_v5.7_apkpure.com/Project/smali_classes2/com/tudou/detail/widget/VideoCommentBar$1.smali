.class Lcom/tudou/detail/widget/VideoCommentBar$1;
.super Landroid/os/Handler;
.source "VideoCommentBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/widget/VideoCommentBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoCommentBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoCommentBar;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 82
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 84
    :sswitch_0
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    iget-object v6, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-static {v6}, Lcom/tudou/detail/widget/VideoCommentBar;->access$000(Lcom/tudou/detail/widget/VideoCommentBar;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/tudou/detail/widget/VideoCommentBar;->access$100(Lcom/tudou/detail/widget/VideoCommentBar;I)V

    .line 85
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-static {v5}, Lcom/tudou/detail/widget/VideoCommentBar;->access$200(Lcom/tudou/detail/widget/VideoCommentBar;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    const-wide/16 v6, 0x1388

    invoke-virtual {p0, v8, v6, v7}, Lcom/tudou/detail/widget/VideoCommentBar$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 89
    :sswitch_1
    invoke-static {}, Lcom/tudou/detail/widget/VideoCommentBar;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MSG_SEND_COMMENT_SUCCESS"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v5}, Lcom/tudou/detail/widget/VideoCommentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 91
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v5}, Lcom/tudou/detail/widget/VideoCommentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d02ae

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/util/Util;->showToast(Ljava/lang/Object;)V

    .line 92
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "comment":Ljava/lang/String;
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v5, v1}, Lcom/tudou/detail/widget/VideoCommentBar;->addToCommentList(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v1    # "comment":Ljava/lang/String;
    :sswitch_2
    invoke-static {}, Lcom/tudou/detail/widget/VideoCommentBar;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MSG_SEND_COMMENT_FAIL"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    iget-object v6, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-static {v6}, Lcom/tudou/detail/widget/VideoCommentBar;->access$500(Lcom/tudou/detail/widget/VideoCommentBar;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tudou/detail/widget/VideoCommentBar;->access$402(Lcom/tudou/detail/widget/VideoCommentBar;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-static {v5, v7}, Lcom/tudou/detail/widget/VideoCommentBar;->access$502(Lcom/tudou/detail/widget/VideoCommentBar;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v5}, Lcom/tudou/detail/widget/VideoCommentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 104
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v5}, Lcom/tudou/detail/widget/VideoCommentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d02ad

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/util/Util;->showToast(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :sswitch_3
    invoke-static {}, Lcom/tudou/detail/widget/VideoCommentBar;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MSG_REPLAY_COMMENT_SUCCESS"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v5}, Lcom/tudou/detail/widget/VideoCommentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 109
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v5}, Lcom/tudou/detail/widget/VideoCommentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d02ac

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/util/Util;->showToast(Ljava/lang/Object;)V

    .line 111
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 112
    .restart local v1    # "comment":Ljava/lang/String;
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v5, v1}, Lcom/tudou/detail/widget/VideoCommentBar;->addToCommentList(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    .end local v1    # "comment":Ljava/lang/String;
    :sswitch_4
    invoke-static {}, Lcom/tudou/detail/widget/VideoCommentBar;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MSG_REPLAY_COMMENT_FAIL"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    iget-object v6, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-static {v6}, Lcom/tudou/detail/widget/VideoCommentBar;->access$500(Lcom/tudou/detail/widget/VideoCommentBar;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tudou/detail/widget/VideoCommentBar;->access$402(Lcom/tudou/detail/widget/VideoCommentBar;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-static {v5, v7}, Lcom/tudou/detail/widget/VideoCommentBar;->access$502(Lcom/tudou/detail/widget/VideoCommentBar;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v5}, Lcom/tudou/detail/widget/VideoCommentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 120
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v5}, Lcom/tudou/detail/widget/VideoCommentBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d02ab

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/youku/util/Util;->showToast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 124
    :sswitch_5
    invoke-static {}, Lcom/tudou/detail/widget/VideoCommentBar;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DialogAddComment.DATA"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v6, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/tudou/detail/widget/VideoCommentBar;->access$402(Lcom/tudou/detail/widget/VideoCommentBar;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 128
    :sswitch_6
    invoke-static {}, Lcom/tudou/detail/widget/VideoCommentBar;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DialogAddComment.SENDCOMMENT"

    invoke-static {v5, v6}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "comment"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "str":Ljava/lang/String;
    const-string v5, "commentid"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "id":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v2, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "type"

    const-string v6, "\u5feb\u901f\u8f93\u5165"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v5, v4}, Lcom/tudou/detail/widget/VideoCommentBar;->excueSendComment(Ljava/lang/String;)V

    .line 137
    const-string v5, "subType"

    const-string v6, "\u4e3b\u52a8\u8bc4\u8bba"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :goto_1
    const-string v5, "t1.detail_sdetail.commentclick"

    invoke-static {v5, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 139
    :cond_1
    iget-object v5, p0, Lcom/tudou/detail/widget/VideoCommentBar$1;->this$0:Lcom/tudou/detail/widget/VideoCommentBar;

    invoke-virtual {v5, v3, v4}, Lcom/tudou/detail/widget/VideoCommentBar;->excueReplayComment(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v5, "subType"

    const-string v6, "\u56de\u590d\u8bc4\u8bba"

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x7d0 -> :sswitch_5
        0x7d1 -> :sswitch_6
    .end sparse-switch
.end method
