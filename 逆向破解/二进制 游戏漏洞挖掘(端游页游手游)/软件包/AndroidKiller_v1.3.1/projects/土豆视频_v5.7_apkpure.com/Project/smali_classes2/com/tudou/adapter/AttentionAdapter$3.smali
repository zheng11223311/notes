.class Lcom/tudou/adapter/AttentionAdapter$3;
.super Lcom/tudou/service/attention/IAttention$DeleteCallBack;
.source "AttentionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/AttentionAdapter;->removeAttentions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/AttentionAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/AttentionAdapter;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/tudou/adapter/AttentionAdapter$3;->this$0:Lcom/tudou/adapter/AttentionAdapter;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$DeleteCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/tudou/adapter/AttentionAdapter$3;->this$0:Lcom/tudou/adapter/AttentionAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/AttentionAdapter;->access$200(Lcom/tudou/adapter/AttentionAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x4e22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 497
    return-void
.end method

.method public onSucess()V
    .locals 2

    .prologue
    .line 489
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 490
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x4e21

    iput v1, v0, Landroid/os/Message;->what:I

    .line 491
    iget-object v1, p0, Lcom/tudou/adapter/AttentionAdapter$3;->this$0:Lcom/tudou/adapter/AttentionAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/AttentionAdapter;->access$200(Lcom/tudou/adapter/AttentionAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 492
    return-void
.end method
