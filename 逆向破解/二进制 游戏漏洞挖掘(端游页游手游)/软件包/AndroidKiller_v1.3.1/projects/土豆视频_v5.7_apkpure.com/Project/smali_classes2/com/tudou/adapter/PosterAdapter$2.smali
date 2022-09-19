.class Lcom/tudou/adapter/PosterAdapter$2;
.super Landroid/content/BroadcastReceiver;
.source "PosterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/PosterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/PosterAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/PosterAdapter;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/tudou/adapter/PosterAdapter$2;->this$0:Lcom/tudou/adapter/PosterAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tudou/adapter/PosterAdapter$2;->this$0:Lcom/tudou/adapter/PosterAdapter;

    iget-object v0, v0, Lcom/tudou/adapter/PosterAdapter;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    return-void
.end method
