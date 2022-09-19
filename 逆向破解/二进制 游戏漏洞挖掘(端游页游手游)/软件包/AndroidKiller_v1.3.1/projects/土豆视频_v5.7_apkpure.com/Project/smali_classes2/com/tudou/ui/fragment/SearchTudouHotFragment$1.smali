.class Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;
.super Landroid/os/Handler;
.source "SearchTudouHotFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SearchTudouHotFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchHeadLayout;->showSoftInput(Landroid/app/Activity;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0, v2}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$000(Lcom/tudou/ui/fragment/SearchTudouHotFragment;I)Ljava/util/ArrayList;

    move-result-object v8

    .line 70
    .local v8, "hs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchOfHistory;>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$102(Lcom/tudou/ui/fragment/SearchTudouHotFragment;I)I

    .line 71
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$200(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V

    .line 78
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 79
    .local v6, "endTime":J
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v5, "extenalHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 81
    const-string v0, "pltype"

    const-string v1, "searchLoad"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "st"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->startTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "et"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "s"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v2, Lcom/tudou/ui/fragment/SearchTudouFragment;->startTime:J

    sub-long v2, v6, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$400(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    const-string v1, "\u641c\u7d22\u9875\u52a0\u8f7d"

    const-class v2, Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u641c\u7d22\u9875\u52a0\u8f7d"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 74
    .end local v5    # "extenalHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "endTime":J
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hotListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$300(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)Lcom/tudou/adapter/HotHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tudou/adapter/HotHistoryAdapter;->setHistories(Ljava/util/ArrayList;)V

    .line 76
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$300(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)Lcom/tudou/adapter/HotHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/HotHistoryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 91
    .end local v8    # "hs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchOfHistory;>;"
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0, v2}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$000(Lcom/tudou/ui/fragment/SearchTudouHotFragment;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 92
    .local v9, "hs0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchOfHistory;>;"
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hotListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 94
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->hotListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$500(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/youku/widget/HintView;->setVisibility(I)V

    .line 104
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$300(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)Lcom/tudou/adapter/HotHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/tudou/adapter/HotHistoryAdapter;->setHistories(Ljava/util/ArrayList;)V

    .line 105
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$300(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)Lcom/tudou/adapter/HotHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/HotHistoryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$100(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)I

    move-result v0

    if-nez v0, :cond_5

    .line 99
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$200(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V

    goto :goto_2

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$100(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 101
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$600(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V

    goto :goto_2

    .line 108
    .end local v9    # "hs0":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchOfHistory;>;"
    :pswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$102(Lcom/tudou/ui/fragment/SearchTudouHotFragment;I)I

    .line 109
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->curfragment:I

    if-nez v0, :cond_6

    .line 110
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 111
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/SearchTudouFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouFragment;->head:Lcom/youku/widget/SearchHeadLayout;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/SearchHeadLayout;->showSoftInput(Landroid/app/Activity;)V

    .line 114
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0, v2}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$000(Lcom/tudou/ui/fragment/SearchTudouHotFragment;I)Ljava/util/ArrayList;

    move-result-object v10

    .line 115
    .local v10, "hs1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchOfHistory;>;"
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 116
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$300(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)Lcom/tudou/adapter/HotHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/tudou/adapter/HotHistoryAdapter;->setHistories(Ljava/util/ArrayList;)V

    .line 117
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$300(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)Lcom/tudou/adapter/HotHistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/adapter/HotHistoryAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 120
    :cond_7
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$600(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V

    goto/16 :goto_0

    .line 123
    .end local v10    # "hs1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchOfHistory;>;"
    :pswitch_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHotFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHotFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHotFragment;->access$700(Lcom/tudou/ui/fragment/SearchTudouHotFragment;)V

    goto/16 :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
