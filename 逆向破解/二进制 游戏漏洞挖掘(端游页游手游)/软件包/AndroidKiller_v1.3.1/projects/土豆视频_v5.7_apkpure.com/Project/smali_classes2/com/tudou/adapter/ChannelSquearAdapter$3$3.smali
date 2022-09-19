.class Lcom/tudou/adapter/ChannelSquearAdapter$3$3;
.super Lcom/tudou/service/attention/IAttention$CallBack;
.source "ChannelSquearAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/ChannelSquearAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/adapter/ChannelSquearAdapter$3;

.field final synthetic val$v1:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ChannelSquearAdapter$3;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$3;->this$1:Lcom/tudou/adapter/ChannelSquearAdapter$3;

    iput-object p2, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$3;->val$v1:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 405
    iget-object v0, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$3;->this$1:Lcom/tudou/adapter/ChannelSquearAdapter$3;

    iget-object v0, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iput-boolean v5, v0, Lcom/youku/vo/DiscoveryChannelItem;->isRunning:Z

    .line 406
    iget-object v0, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$3;->this$1:Lcom/tudou/adapter/ChannelSquearAdapter$3;

    iget-object v0, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

    iget-object v1, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$3;->this$1:Lcom/tudou/adapter/ChannelSquearAdapter$3;

    iget-object v1, v1, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$viewholder:Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;

    iget-object v2, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$3;->this$1:Lcom/tudou/adapter/ChannelSquearAdapter$3;

    iget-object v2, v2, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget-object v3, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$3;->this$1:Lcom/tudou/adapter/ChannelSquearAdapter$3;

    iget-object v3, v3, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$aListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$3;->val$v1:Landroid/widget/ImageView;

    invoke-static/range {v0 .. v5}, Lcom/tudou/adapter/ChannelSquearAdapter;->access$200(Lcom/tudou/adapter/ChannelSquearAdapter;Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;Lcom/youku/vo/DiscoveryChannelItem;Landroid/widget/ListView;Landroid/widget/ImageView;Z)V

    .line 410
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$3;->this$1:Lcom/tudou/adapter/ChannelSquearAdapter$3;

    iget-object v0, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/vo/DiscoveryChannelItem;->isRunning:Z

    .line 368
    iget-object v0, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$3;->this$1:Lcom/tudou/adapter/ChannelSquearAdapter$3;

    iget-object v0, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/ChannelSquearAdapter;->access$300(Lcom/tudou/adapter/ChannelSquearAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tudou/adapter/ChannelSquearAdapter$3$3$1;

    invoke-direct {v1, p0}, Lcom/tudou/adapter/ChannelSquearAdapter$3$3$1;-><init>(Lcom/tudou/adapter/ChannelSquearAdapter$3$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    return-void
.end method
