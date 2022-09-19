.class Lcom/tudou/adapter/ChannelPosterAdapter$1;
.super Landroid/os/Handler;
.source "ChannelPosterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/ChannelPosterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/ChannelPosterAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ChannelPosterAdapter;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tudou/adapter/ChannelPosterAdapter$1;->this$0:Lcom/tudou/adapter/ChannelPosterAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/tudou/adapter/ChannelPosterAdapter$1;->this$0:Lcom/tudou/adapter/ChannelPosterAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/ChannelPosterAdapter;->notifyDataSetChanged()V

    .line 47
    :cond_0
    return-void
.end method
