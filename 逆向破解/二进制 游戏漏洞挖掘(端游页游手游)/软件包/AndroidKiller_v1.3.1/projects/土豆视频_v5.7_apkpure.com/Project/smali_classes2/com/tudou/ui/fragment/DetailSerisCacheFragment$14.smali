.class Lcom/tudou/ui/fragment/DetailSerisCacheFragment$14;
.super Ljava/lang/Object;
.source "DetailSerisCacheFragment.java"

# interfaces
.implements Lcom/tudou/detail/DetailSeriesShareData$IseriesShareData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/DetailSerisCacheFragment;
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
    .line 1086
    iput-object p1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$14;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$14;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$800(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$14;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$800(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1103
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/vo/DetailSeris;)V
    .locals 2
    .param p1, "detailseris"    # Lcom/youku/vo/DetailSeris;

    .prologue
    .line 1090
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1091
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xfa0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1092
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1093
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$14;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$800(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/tudou/ui/fragment/DetailSerisCacheFragment$14;->this$0:Lcom/tudou/ui/fragment/DetailSerisCacheFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/DetailSerisCacheFragment;->access$800(Lcom/tudou/ui/fragment/DetailSerisCacheFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1096
    :cond_0
    return-void
.end method
