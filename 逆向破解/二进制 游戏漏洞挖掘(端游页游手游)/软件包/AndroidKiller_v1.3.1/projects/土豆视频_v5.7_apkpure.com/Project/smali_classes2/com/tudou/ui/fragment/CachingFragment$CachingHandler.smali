.class Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;
.super Landroid/os/Handler;
.source "CachingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CachingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachingHandler"
.end annotation


# instance fields
.field private wr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tudou/ui/fragment/CachingFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tudou/ui/fragment/CachingFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/tudou/ui/fragment/CachingFragment;

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;->wr:Ljava/lang/ref/WeakReference;

    .line 121
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 125
    iget-object v2, p0, Lcom/tudou/ui/fragment/CachingFragment$CachingHandler;->wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/CachingFragment;

    .line 126
    .local v0, "cf":Lcom/tudou/ui/fragment/CachingFragment;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 128
    :pswitch_0
    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFragment;->refreshAdapter()V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/tudou/service/download/DownloadInfo;

    .line 132
    .local v1, "dinfo":Lcom/tudou/service/download/DownloadInfo;
    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/CachingFragment;->pauseInfo(Lcom/tudou/service/download/DownloadInfo;)V

    goto :goto_0

    .line 135
    .end local v1    # "dinfo":Lcom/tudou/service/download/DownloadInfo;
    :pswitch_2
    invoke-virtual {v0}, Lcom/tudou/ui/fragment/CachingFragment;->loadingDismiss()V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
