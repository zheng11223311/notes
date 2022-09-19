.class Lcom/tudou/ui/fragment/CachedFragment$CachedHandler;
.super Landroid/os/Handler;
.source "CachedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CachedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedHandler"
.end annotation


# instance fields
.field private wr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tudou/ui/fragment/CachedFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tudou/ui/fragment/CachedFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/tudou/ui/fragment/CachedFragment;

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachedFragment$CachedHandler;->wr:Ljava/lang/ref/WeakReference;

    .line 99
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 104
    iget-object v1, p0, Lcom/tudou/ui/fragment/CachedFragment$CachedHandler;->wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/CachedFragment;

    .line 105
    .local v0, "cf":Lcom/tudou/ui/fragment/CachedFragment;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 107
    :pswitch_0
    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachedFragment;->refreshAdapter()V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x403
        :pswitch_0
    .end packed-switch
.end method
