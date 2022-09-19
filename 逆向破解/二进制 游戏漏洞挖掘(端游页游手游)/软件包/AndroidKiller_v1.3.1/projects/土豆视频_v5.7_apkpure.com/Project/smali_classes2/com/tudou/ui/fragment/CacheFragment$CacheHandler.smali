.class Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;
.super Landroid/os/Handler;
.source "CacheFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/CacheFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheHandler"
.end annotation


# instance fields
.field private wr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tudou/ui/fragment/CacheFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tudou/ui/fragment/CacheFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/tudou/ui/fragment/CacheFragment;

    .prologue
    .line 270
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 271
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;->wr:Ljava/lang/ref/WeakReference;

    .line 272
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 276
    iget-object v1, p0, Lcom/tudou/ui/fragment/CacheFragment$CacheHandler;->wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/CacheFragment;

    .line 277
    .local v0, "cf":Lcom/tudou/ui/fragment/CacheFragment;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 282
    :goto_0
    return-void

    .line 279
    :pswitch_0
    invoke-static {v0, p1}, Lcom/tudou/ui/fragment/CacheFragment;->access$800(Lcom/tudou/ui/fragment/CacheFragment;Landroid/os/Message;)V

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
