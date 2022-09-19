.class Lcom/tudou/ui/fragment/HistoryWholeFragment$1;
.super Landroid/os/Handler;
.source "HistoryWholeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/HistoryWholeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HistoryWholeFragment;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0x7f0d02c3

    const/16 v3, 0x8

    const/4 v6, 0x0

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    :pswitch_0
    return-void

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$000(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$200(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 81
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$000(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$200(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    const-string v0, "HistoryWholeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91cd\u65b0\u52a0\u8f7d\u7684\u64ad\u653e\u5386\u53f2\u957f\u5ea6mPlayedVideosList=======------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "HistoryWholeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91cd\u65b0\u52a0\u8f7d\u7684\u64ad\u653e\u5386\u53f2\u957f\u5ea6mPageNo=======------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$300(Lcom/tudou/ui/fragment/HistoryWholeFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-static {}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->hideTabLayout()V

    .line 89
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$400(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$500(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$600(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 92
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    .line 103
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 104
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 105
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0, v6}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$702(Lcom/tudou/ui/fragment/HistoryWholeFragment;Z)Z

    goto/16 :goto_0

    .line 97
    :cond_1
    invoke-static {}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->unHideTabLayout()V

    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$600(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$400(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$500(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 108
    :pswitch_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u5386\u53f2\u4e91\u5168\u90e8\u8bb0\u5f55\u52a0\u8f7d\u51fa\u9519"

    const-class v2, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u64ad\u653e\u5386\u53f2\u9875\u9762\u52a0\u8f7d\u5168\u90e8\u8bb0\u5f55\u51fa\u9519"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 111
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$300(Lcom/tudou/ui/fragment/HistoryWholeFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 113
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$310(Lcom/tudou/ui/fragment/HistoryWholeFragment;)I

    .line 114
    const-string v0, "HistoryWholeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPage--l====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$300(Lcom/tudou/ui/fragment/HistoryWholeFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_2
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 118
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0, v6}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$702(Lcom/tudou/ui/fragment/HistoryWholeFragment;Z)Z

    .line 119
    const-string v0, "\u6570\u636e\u66f4\u65b0\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u91cd\u8bd5\uff01"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :pswitch_4
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 123
    sget-object v0, Lcom/tudou/ui/fragment/HistoryManagerFragment;->mCurrentFragment:Lcom/tudou/ui/fragment/HistoryManagerFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->transformEditableState()V

    .line 124
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->reLoad()V

    goto/16 :goto_0

    .line 127
    :pswitch_5
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 128
    const-string v0, "\u5220\u9664\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u91cd\u8bd5\uff01"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    :pswitch_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$200(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    const-string v0, "HistoryWholeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u8f7d\u672c\u5730\u7684\u64ad\u653e\u5386\u53f2\u957f\u5ea6mPlayedVideosList=======------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 135
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$400(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$500(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    invoke-static {}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->hideTabLayout()V

    .line 139
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$600(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 140
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    .line 150
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 151
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 152
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0, v6}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$702(Lcom/tudou/ui/fragment/HistoryWholeFragment;Z)Z

    goto/16 :goto_0

    .line 145
    :cond_4
    invoke-static {}, Lcom/tudou/ui/fragment/HistoryManagerFragment;->unHideTabLayout()V

    .line 146
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$600(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$400(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$1;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$500(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
