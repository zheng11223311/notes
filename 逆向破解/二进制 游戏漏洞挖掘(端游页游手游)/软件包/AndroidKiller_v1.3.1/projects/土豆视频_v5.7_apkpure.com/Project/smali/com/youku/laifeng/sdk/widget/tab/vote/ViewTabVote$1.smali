.class Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;
.super Landroid/os/Handler;
.source "ViewTabVote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 126
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 128
    :sswitch_0
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/widget/ViewFlipper;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 129
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .line 135
    .local v7, "voteListItems":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v9, :cond_2

    .line 136
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->getVoteListData()Ljava/util/List;

    move-result-object v3

    .line 137
    .local v3, "oldVoteListItems":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v9, :cond_1

    .line 138
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v8}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v9

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v8}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v8

    if-eq v9, v8, :cond_0

    .line 139
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->setVoteListData(Ljava/util/List;)V

    .line 140
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$200(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/widget/ExpandableListView;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 141
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v8}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v6

    .line 142
    .local v6, "voteId":I
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->expandOneVote(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v6    # "voteId":I
    :cond_1
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->setVoteListData(Ljava/util/List;)V

    .line 147
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$200(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/widget/ExpandableListView;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 148
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v8}, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;->getId()I

    move-result v6

    .line 149
    .restart local v6    # "voteId":I
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->expandOneVote(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    .end local v3    # "oldVoteListItems":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;>;"
    .end local v6    # "voteId":I
    :cond_2
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->setVoteListData(Ljava/util/List;)V

    goto/16 :goto_0

    .line 157
    .end local v7    # "voteListItems":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;>;"
    :sswitch_1
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$000(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/widget/ViewFlipper;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto/16 :goto_0

    .line 160
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;

    .line 161
    .local v2, "messageBody":Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v8

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->getOptionsItemListData()Ljava/util/List;

    move-result-object v9

    invoke-static {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->access$300(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->setVoteOptionsListData(Ljava/util/List;I)V

    .line 162
    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->getHolder()Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;

    move-result-object v0

    .line 163
    .local v0, "holder":Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$400(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;->access$500(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;)Landroid/widget/ProgressBar;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 166
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$200(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/widget/ExpandableListView;

    move-result-object v8

    iget-object v9, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v9}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$600(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 168
    :cond_3
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$200(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/widget/ExpandableListView;

    move-result-object v8

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->getGroupPosition()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 169
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->getGroupPosition()I

    move-result v9

    invoke-static {v8, v9}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$602(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;I)I

    .line 170
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$200(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/widget/ExpandableListView;

    move-result-object v8

    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;->getGroupPosition()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(I)V

    .line 171
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8, v11}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$702(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;Z)Z

    goto/16 :goto_0

    .line 174
    .end local v0    # "holder":Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteViewHolder;
    .end local v2    # "messageBody":Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$MessageBody;
    :sswitch_3
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$800(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "\u8bf7\u6c42\u5931\u8d25\u5566\uff5e\uff5e"

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 177
    :sswitch_4
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;

    invoke-virtual {v9, v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->addVoteData(Lcom/youku/laifeng/libcuteroom/model/data/VoteListInfo$VoteListItem;)V

    goto/16 :goto_0

    .line 180
    :sswitch_5
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->setVoteOver(I)V

    goto/16 :goto_0

    .line 183
    :sswitch_6
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->offLineVoteData(I)V

    goto/16 :goto_0

    .line 186
    :sswitch_7
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->offLineVoteData(I)V

    goto/16 :goto_0

    .line 189
    :sswitch_8
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8, v11}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->topVoteData(IZ)V

    goto/16 :goto_0

    .line 192
    :sswitch_9
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v9

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;

    invoke-virtual {v9, v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->updateVoteDataByIM(Lcom/youku/laifeng/libcuteroom/model/socketio/chatdata/VoteMessage;)V

    goto/16 :goto_0

    .line 195
    :sswitch_a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    .line 196
    .local v4, "optionsItemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;>;"
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 197
    .restart local v6    # "voteId":I
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 198
    const/4 v5, 0x0

    .line 199
    .local v5, "optionsItemOne":Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 200
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "optionsItemOne":Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;
    check-cast v5, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;

    .line 201
    .restart local v5    # "optionsItemOne":Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;
    invoke-virtual {v5}, Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;->getQuantity()I

    move-result v8

    if-lez v8, :cond_4

    .line 202
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$100(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;

    move-result-object v8

    invoke-virtual {v8, v6, v9}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$VoteListAdapter;->updateVoteListItemByRestAPI(IZ)V

    .line 199
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 210
    .end local v1    # "i":I
    .end local v4    # "optionsItemList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;>;"
    .end local v5    # "optionsItemOne":Lcom/youku/laifeng/libcuteroom/model/data/VoteOptionsInfo$VoteOptionsItem;
    .end local v6    # "voteId":I
    :sswitch_b
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$800(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 211
    iget-object v8, p0, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;

    invoke-static {v8}, Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;->access$900(Lcom/youku/laifeng/sdk/widget/tab/vote/ViewTabVote;)V

    goto/16 :goto_0

    .line 126
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x20 -> :sswitch_2
        0x21 -> :sswitch_3
        0x50 -> :sswitch_4
        0x51 -> :sswitch_5
        0x52 -> :sswitch_6
        0x53 -> :sswitch_7
        0x54 -> :sswitch_8
        0x55 -> :sswitch_9
        0x120 -> :sswitch_a
        0x121 -> :sswitch_b
        0xf004 -> :sswitch_b
    .end sparse-switch
.end method
