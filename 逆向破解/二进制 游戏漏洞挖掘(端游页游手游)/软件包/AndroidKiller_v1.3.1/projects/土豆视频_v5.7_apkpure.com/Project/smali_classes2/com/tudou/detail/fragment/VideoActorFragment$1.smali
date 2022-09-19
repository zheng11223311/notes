.class Lcom/tudou/detail/fragment/VideoActorFragment$1;
.super Landroid/os/Handler;
.source "VideoActorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/fragment/VideoActorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoActorFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :pswitch_0
    return-void

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
