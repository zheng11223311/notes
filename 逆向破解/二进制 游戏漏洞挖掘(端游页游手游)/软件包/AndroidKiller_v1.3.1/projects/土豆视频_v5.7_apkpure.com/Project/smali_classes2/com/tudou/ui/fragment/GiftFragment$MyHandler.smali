.class Lcom/tudou/ui/fragment/GiftFragment$MyHandler;
.super Landroid/os/Handler;
.source "GiftFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/GiftFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private wr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tudou/ui/fragment/GiftFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tudou/ui/fragment/GiftFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/tudou/ui/fragment/GiftFragment;

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/GiftFragment$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    .line 78
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 82
    iget-object v3, p0, Lcom/tudou/ui/fragment/GiftFragment$MyHandler;->wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/fragment/GiftFragment;

    .line 83
    .local v1, "gf":Lcom/tudou/ui/fragment/GiftFragment;
    invoke-virtual {v1}, Lcom/tudou/ui/fragment/GiftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 84
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 108
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 89
    :pswitch_0
    invoke-static {v1}, Lcom/tudou/ui/fragment/GiftFragment;->access$000(Lcom/tudou/ui/fragment/GiftFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/youku/vo/GiftBean;

    .line 91
    .local v2, "gift":Lcom/youku/vo/GiftBean;
    iget-object v3, v2, Lcom/youku/vo/GiftBean;->results:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/youku/vo/GiftBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 92
    :cond_2
    invoke-static {v1}, Lcom/tudou/ui/fragment/GiftFragment;->access$100(Lcom/tudou/ui/fragment/GiftFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/widget/ErrorLayout;->showNoDataLayout()V

    .line 93
    invoke-static {v1}, Lcom/tudou/ui/fragment/GiftFragment;->access$100(Lcom/tudou/ui/fragment/GiftFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/youku/widget/ErrorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 96
    :cond_3
    iget-object v3, v2, Lcom/youku/vo/GiftBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GiftBean$Data;

    invoke-static {v1, v3}, Lcom/tudou/ui/fragment/GiftFragment;->access$200(Lcom/tudou/ui/fragment/GiftFragment;Lcom/youku/vo/GiftBean$Data;)V

    .line 97
    iget-object v3, v2, Lcom/youku/vo/GiftBean;->results:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/GiftBean$Data;

    iget-object v3, v3, Lcom/youku/vo/GiftBean$Data;->top:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/tudou/ui/fragment/GiftFragment;->access$300(Lcom/tudou/ui/fragment/GiftFragment;Ljava/util/ArrayList;)V

    .line 98
    invoke-static {v1}, Lcom/tudou/ui/fragment/GiftFragment;->access$100(Lcom/tudou/ui/fragment/GiftFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/widget/ErrorLayout;->dismiss()V

    goto :goto_1

    .line 101
    .end local v2    # "gift":Lcom/youku/vo/GiftBean;
    :pswitch_1
    invoke-static {v1}, Lcom/tudou/ui/fragment/GiftFragment;->access$000(Lcom/tudou/ui/fragment/GiftFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 102
    invoke-static {v1}, Lcom/tudou/ui/fragment/GiftFragment;->access$100(Lcom/tudou/ui/fragment/GiftFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/widget/ErrorLayout;->showLoadFailedLayout()V

    .line 103
    invoke-static {v1}, Lcom/tudou/ui/fragment/GiftFragment;->access$100(Lcom/tudou/ui/fragment/GiftFragment;)Lcom/youku/widget/ErrorLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/youku/widget/ErrorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
