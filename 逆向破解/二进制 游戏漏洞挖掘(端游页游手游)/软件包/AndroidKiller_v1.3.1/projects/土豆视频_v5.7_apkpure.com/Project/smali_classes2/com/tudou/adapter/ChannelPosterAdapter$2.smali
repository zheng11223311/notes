.class Lcom/tudou/adapter/ChannelPosterAdapter$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 117
    iput-object p1, p0, Lcom/tudou/adapter/ChannelPosterAdapter$2;->this$0:Lcom/tudou/adapter/ChannelPosterAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tudou/adapter/ChannelPosterAdapter$2;->this$0:Lcom/tudou/adapter/ChannelPosterAdapter;

    iget-object v0, v0, Lcom/tudou/adapter/ChannelPosterAdapter;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    return-void
.end method
