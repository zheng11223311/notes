.class Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;
.super Landroid/os/Handler;
.source "ChannelSquareItemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/ChannelSquareItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 181
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 276
    :goto_0
    return-void

    .line 183
    :sswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 184
    .local v0, "isClear":Z
    if-eqz v0, :cond_2

    .line 185
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 194
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$500(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 195
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$500(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v3

    iget v3, v3, Lcom/youku/vo/ChannalSquareTagItems;->total:I

    iput v3, v2, Lcom/youku/vo/ChannalSquareTagItems;->total:I

    .line 196
    invoke-static {}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$700()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$600(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 198
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    sget-object v3, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;->NONE:Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;

    invoke-virtual {v2, v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->setNoContentTips(Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;)V

    .line 214
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$300(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 215
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2, v8}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1102(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Z)Z

    goto :goto_0

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$500(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$500(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 189
    :cond_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$300(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 190
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$100(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    goto/16 :goto_1

    .line 200
    :cond_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    sget-object v3, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;->GONE:Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;

    invoke-virtual {v2, v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->setNoContentTips(Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;)V

    .line 201
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$800(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/tudou/adapter/ChannelSquearAdapter;

    move-result-object v2

    if-nez v2, :cond_5

    .line 202
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    new-instance v3, Lcom/tudou/adapter/ChannelSquearAdapter;

    iget-object v4, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$900(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/tudou/ui/activity/ChannelSquareActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iget-object v6, v6, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$600(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tudou/adapter/ChannelSquearAdapter;-><init>(Lcom/tudou/ui/activity/ChannelSquareActivity;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$802(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/tudou/adapter/ChannelSquearAdapter;)Lcom/tudou/adapter/ChannelSquearAdapter;

    .line 204
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$300(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$800(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/tudou/adapter/ChannelSquearAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    invoke-static {}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1000()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$600(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$800(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/tudou/adapter/ChannelSquearAdapter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 207
    :cond_5
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$800(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/tudou/adapter/ChannelSquearAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/adapter/ChannelSquearAdapter;->notifyDataSetChanged()V

    .line 208
    if-eqz v0, :cond_1

    .line 209
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$300(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setSelection(I)V

    goto/16 :goto_2

    .line 220
    .end local v0    # "isClear":Z
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 221
    .local v1, "isClear1":Z
    if-eqz v1, :cond_6

    .line 222
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1200(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)V

    .line 231
    :goto_3
    const-string v2, "\u81ea\u9891\u9053\u5e7f\u573a\u52a0\u8f7d\u5931\u8d25"

    const-class v3, Lcom/tudou/ui/activity/ChannelSquareActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u81ea\u9891\u9053\u5e7f\u573a\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v2, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :cond_6
    const v2, 0x7f0d0210

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 225
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$200(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_7

    .line 226
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$210(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)I

    .line 228
    :cond_7
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$300(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 229
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2, v8}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1102(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Z)Z

    goto :goto_3

    .line 235
    .end local v1    # "isClear1":Z
    :sswitch_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1200(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)V

    goto/16 :goto_0

    .line 238
    :sswitch_3
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$500(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$500(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 239
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$500(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 241
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$500(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v3

    iget v3, v3, Lcom/youku/vo/ChannalSquareTagItems;->total:I

    iput v3, v2, Lcom/youku/vo/ChannalSquareTagItems;->total:I

    .line 242
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$800(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/tudou/adapter/ChannelSquearAdapter;

    move-result-object v2

    if-nez v2, :cond_9

    .line 243
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    new-instance v3, Lcom/tudou/adapter/ChannelSquearAdapter;

    iget-object v4, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$900(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/tudou/ui/activity/ChannelSquareActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iget-object v6, v6, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$600(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tudou/adapter/ChannelSquearAdapter;-><init>(Lcom/tudou/ui/activity/ChannelSquareActivity;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$802(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/tudou/adapter/ChannelSquearAdapter;)Lcom/tudou/adapter/ChannelSquearAdapter;

    .line 245
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$300(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$800(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/tudou/adapter/ChannelSquearAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    :cond_8
    :goto_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$300(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 252
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2, v8}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1102(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Z)Z

    goto/16 :goto_0

    .line 247
    :cond_9
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$800(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/tudou/adapter/ChannelSquearAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/adapter/ChannelSquearAdapter;->notifyDataSetChanged()V

    .line 248
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$300(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setSelection(I)V

    goto :goto_4

    .line 255
    :sswitch_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 256
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$800(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/tudou/adapter/ChannelSquearAdapter;

    move-result-object v2

    if-nez v2, :cond_a

    .line 257
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    new-instance v3, Lcom/tudou/adapter/ChannelSquearAdapter;

    iget-object v4, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$900(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/tudou/ui/activity/ChannelSquareActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$400(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/youku/vo/ChannalSquareTagItems;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/vo/ChannalSquareTagItems;->results:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    iget-object v6, v6, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v7}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$600(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tudou/adapter/ChannelSquearAdapter;-><init>(Lcom/tudou/ui/activity/ChannelSquareActivity;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$802(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Lcom/tudou/adapter/ChannelSquearAdapter;)Lcom/tudou/adapter/ChannelSquearAdapter;

    .line 259
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$300(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$800(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/tudou/adapter/ChannelSquearAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 264
    :goto_5
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    sget-object v3, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;->FAILED_CLASSFY_ITEMS:Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;

    invoke-virtual {v2, v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->setNoContentTips(Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;)V

    .line 265
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$300(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 266
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2, v8}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1102(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Z)Z

    goto/16 :goto_0

    .line 261
    :cond_a
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$800(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/tudou/adapter/ChannelSquearAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/adapter/ChannelSquearAdapter;->notifyDataSetChanged()V

    .line 262
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$300(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setSelection(I)V

    goto :goto_5

    .line 269
    :sswitch_5
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    sget-object v3, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;->NONE:Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;

    invoke-virtual {v2, v3}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->setNoContentTips(Lcom/tudou/ui/fragment/ChannelSquareItemFragment$NoContentTips;)V

    .line 270
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$300(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 271
    iget-object v2, p0, Lcom/tudou/ui/fragment/ChannelSquareItemFragment$2;->this$0:Lcom/tudou/ui/fragment/ChannelSquareItemFragment;

    invoke-static {v2, v8}, Lcom/tudou/ui/fragment/ChannelSquareItemFragment;->access$1102(Lcom/tudou/ui/fragment/ChannelSquareItemFragment;Z)Z

    goto/16 :goto_0

    .line 181
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x186a3 -> :sswitch_0
        0x186a4 -> :sswitch_1
    .end sparse-switch
.end method
