.class Lcom/tudou/detail/fragment/VideoCommentFragment$1;
.super Landroid/os/Handler;
.source "VideoCommentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/fragment/VideoCommentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoCommentFragment;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v14}, Lcom/tudou/detail/fragment/VideoCommentFragment;->isResumed()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 122
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    sparse-switch v14, :sswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 124
    :sswitch_0
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MSG_GET_FEATURE_SUCCESS"

    invoke-static {v14, v15}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v14}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$100(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 129
    .local v2, "b":Landroid/os/Bundle;
    const-string v14, "msg.get.comment.success.bundle.news"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/tudou/detail/vo/CommentsInfo;

    .line 130
    .local v10, "news":Lcom/tudou/detail/vo/CommentsInfo;
    const-string v14, "msg.get.comment.success.bundle.hots"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/tudou/detail/vo/CommentsInfo;

    .line 131
    .local v7, "hots":Lcom/tudou/detail/vo/CommentsInfo;
    const-string v14, "msg.get.comment.success.bundle.pg"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    const/4 v1, 0x1

    .line 132
    .local v1, "add":Z
    :goto_1
    const-string v14, "msg.get.comment.success.bundle.itemcode"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 133
    .local v13, "vid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v14, v10, v7, v1}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$200(Lcom/tudou/detail/fragment/VideoCommentFragment;Lcom/tudou/detail/vo/CommentsInfo;Lcom/tudou/detail/vo/CommentsInfo;Z)V

    .line 134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/tudou/detail/fragment/VideoCommentFragment;->showLoading(ZZZ)V

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$302(Lcom/tudou/detail/fragment/VideoCommentFragment;Z)Z

    goto :goto_0

    .line 131
    .end local v1    # "add":Z
    .end local v13    # "vid":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 138
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v7    # "hots":Lcom/tudou/detail/vo/CommentsInfo;
    .end local v10    # "news":Lcom/tudou/detail/vo/CommentsInfo;
    :sswitch_1
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MSG_GET_FEATURE_FAIL"

    invoke-static {v14, v15}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 140
    .local v3, "b1":Landroid/os/Bundle;
    const-string v14, "msg.get.comment.success.bundle.pg"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 141
    .local v11, "pg":I
    const/4 v14, 0x1

    if-ne v11, v14, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Lcom/tudou/detail/fragment/VideoCommentFragment;->showLoading(ZZZ)V

    .line 144
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v14}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$100(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$302(Lcom/tudou/detail/fragment/VideoCommentFragment;Z)Z

    goto/16 :goto_0

    .line 148
    .end local v3    # "b1":Landroid/os/Bundle;
    .end local v11    # "pg":I
    :sswitch_2
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MSG_GET_FEATURE_NODATA"

    invoke-static {v14, v15}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/tudou/detail/fragment/VideoCommentFragment;->showLoading(ZZZ)V

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v14}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$100(Lcom/tudou/detail/fragment/VideoCommentFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$302(Lcom/tudou/detail/fragment/VideoCommentFragment;Z)Z

    goto/16 :goto_0

    .line 154
    :sswitch_3
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MSG_SEND_COMMENT_SUCCESS"

    invoke-static {v14, v15}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v14}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v14}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const v15, 0x7f0d02ae

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/youku/util/Util;->showToast(Ljava/lang/Object;)V

    .line 157
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 158
    .local v5, "comment":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "imgPath"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, "imgPath":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v14, v5, v9}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$400(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    iget-object v14, v14, Lcom/tudou/detail/fragment/VideoCommentFragment;->mOnSendCommentComplete:Lcom/tudou/detail/fragment/VideoCommentFragment$OnSendCommentComplete;

    if-eqz v14, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    iget-object v14, v14, Lcom/tudou/detail/fragment/VideoCommentFragment;->mOnSendCommentComplete:Lcom/tudou/detail/fragment/VideoCommentFragment$OnSendCommentComplete;

    const/4 v15, 0x1

    invoke-interface {v14, v15, v5}, Lcom/tudou/detail/fragment/VideoCommentFragment$OnSendCommentComplete;->onSendCommentComplete(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 158
    .end local v9    # "imgPath":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 166
    .end local v5    # "comment":Ljava/lang/String;
    :sswitch_4
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MSG_SEND_COMMENT_FAIL"

    invoke-static {v14, v15}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v15}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$600(Lcom/tudou/detail/fragment/VideoCommentFragment;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$502(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$602(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v15}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$800(Lcom/tudou/detail/fragment/VideoCommentFragment;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$702(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$802(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v14}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v14}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const v15, 0x7f0d02ad

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/youku/util/Util;->showToast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 175
    :sswitch_5
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MSG_REPLAY_COMMENT_SUCCESS"

    invoke-static {v14, v15}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v14}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v14}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const v15, 0x7f0d02ac

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/youku/util/Util;->showToast(Ljava/lang/Object;)V

    .line 179
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 180
    .restart local v5    # "comment":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v15, 0x0

    invoke-static {v14, v5, v15}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$400(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    .end local v5    # "comment":Ljava/lang/String;
    :sswitch_6
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MSG_REPLAY_COMMENT_FAIL"

    invoke-static {v14, v15}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-static {v15}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$600(Lcom/tudou/detail/fragment/VideoCommentFragment;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$502(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$602(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v14}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v14}, Lcom/tudou/detail/fragment/VideoCommentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const v15, 0x7f0d02ab

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/youku/util/Util;->showToast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 192
    :sswitch_7
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DialogAddComment.DATA"

    invoke-static {v14, v15}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    invoke-static {v15, v14}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$502(Lcom/tudou/detail/fragment/VideoCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 196
    :sswitch_8
    invoke-static {}, Lcom/tudou/detail/fragment/VideoCommentFragment;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DialogAddComment.SENDCOMMENT"

    invoke-static {v14, v15}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 198
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v14, "comment"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 199
    .local v12, "str":Ljava/lang/String;
    const-string v14, "commentid"

    invoke-virtual {v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 200
    .local v8, "id":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v6, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "type"

    const-string v15, "\u5c55\u5f00\u8f93\u5165"

    invoke-virtual {v6, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 203
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v14, v12}, Lcom/tudou/detail/fragment/VideoCommentFragment;->excueSendComment(Ljava/lang/String;)V

    .line 204
    const-string v14, "subType"

    const-string v15, "\u4e3b\u52a8\u8bc4\u8bba"

    invoke-virtual {v6, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :goto_3
    const-string v14, "t1.detail_sdetail.commentclick"

    invoke-static {v14, v6}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 206
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tudou/detail/fragment/VideoCommentFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoCommentFragment;

    invoke-virtual {v14, v8, v12}, Lcom/tudou/detail/fragment/VideoCommentFragment;->excueReplayComment(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v14, "subType"

    const-string v15, "\u56de\u590d\u8bc4\u8bba"

    invoke-virtual {v6, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 122
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x7d0 -> :sswitch_7
        0x7d1 -> :sswitch_8
    .end sparse-switch
.end method
