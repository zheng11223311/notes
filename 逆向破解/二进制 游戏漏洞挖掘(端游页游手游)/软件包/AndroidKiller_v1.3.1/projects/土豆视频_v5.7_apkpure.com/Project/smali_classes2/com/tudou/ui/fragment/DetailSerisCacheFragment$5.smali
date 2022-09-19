.class Lcom/tudou/ui/fragment/DetailSerisCacheFragment$5;
.super Ljava/lang/Thread;
.source "DetailSerisCacheFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$5;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$5;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$5;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$100(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$002(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;[Ljava/lang/String;)[Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$5;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$800(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$5;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$800(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    :cond_0
    return-void
.end method
