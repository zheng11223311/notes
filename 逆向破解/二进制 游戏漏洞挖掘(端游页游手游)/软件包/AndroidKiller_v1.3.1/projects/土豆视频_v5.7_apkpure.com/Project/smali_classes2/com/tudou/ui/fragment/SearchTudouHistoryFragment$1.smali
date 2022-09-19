.class Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;
.super Landroid/os/Handler;
.source "SearchTudouHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 71
    :sswitch_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 72
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    new-instance v2, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$000(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6, v6}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;-><init>(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;Ljava/util/ArrayList;ZZ)V

    iput-object v2, v0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->adapterHis:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    .line 73
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->listViewHis:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->adapterHis:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iget-object v2, v0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->listViewHis:Landroid/widget/ListView;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 75
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$000(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$100(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->listViewHis:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$100(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->listViewHis:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 84
    :sswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$200(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;I)V

    goto :goto_0

    .line 87
    :sswitch_2
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 88
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$000(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$100(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->listViewHis:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$100(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->listViewHis:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 97
    :sswitch_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->adapterHis:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->notifyDataSetChanged()V

    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$100(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$1;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->listViewHis:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 69
    :sswitch_data_0
    .sparse-switch
        0xbd -> :sswitch_1
        0xc4 -> :sswitch_2
        0xc5 -> :sswitch_0
        0xc6 -> :sswitch_3
    .end sparse-switch
.end method
