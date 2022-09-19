.class Lcom/tudou/adapter/ChannelSquearAdapter$3$2$1;
.super Ljava/lang/Object;
.source "ChannelSquearAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/ChannelSquearAdapter$3$2;->onSucess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tudou/adapter/ChannelSquearAdapter$3$2;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ChannelSquearAdapter$3$2;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$2$1;->this$2:Lcom/tudou/adapter/ChannelSquearAdapter$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 335
    iget-object v0, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$2$1;->this$2:Lcom/tudou/adapter/ChannelSquearAdapter$3$2;

    iget-object v0, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3$2;->this$1:Lcom/tudou/adapter/ChannelSquearAdapter$3;

    iget-object v0, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/vo/DiscoveryChannelItem;->isRunning:Z

    .line 336
    iget-object v0, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$2$1;->this$2:Lcom/tudou/adapter/ChannelSquearAdapter$3$2;

    iget-object v0, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3$2;->this$1:Lcom/tudou/adapter/ChannelSquearAdapter$3;

    iget-object v0, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iput v5, v0, Lcom/youku/vo/DiscoveryChannelItem;->sub_status:I

    .line 337
    iget-object v0, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$2$1;->this$2:Lcom/tudou/adapter/ChannelSquearAdapter$3$2;

    iget-object v0, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3$2;->this$1:Lcom/tudou/adapter/ChannelSquearAdapter$3;

    iget-object v0, v0, Lcom/tudou/adapter/ChannelSquearAdapter$3;->this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

    iget-object v1, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$2$1;->this$2:Lcom/tudou/adapter/ChannelSquearAdapter$3$2;

    iget-object v1, v1, Lcom/tudou/adapter/ChannelSquearAdapter$3$2;->this$1:Lcom/tudou/adapter/ChannelSquearAdapter$3;

    iget-object v1, v1, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$viewholder:Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;

    iget-object v2, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$2$1;->this$2:Lcom/tudou/adapter/ChannelSquearAdapter$3$2;

    iget-object v2, v2, Lcom/tudou/adapter/ChannelSquearAdapter$3$2;->this$1:Lcom/tudou/adapter/ChannelSquearAdapter$3;

    iget-object v2, v2, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget-object v3, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$2$1;->this$2:Lcom/tudou/adapter/ChannelSquearAdapter$3$2;

    iget-object v3, v3, Lcom/tudou/adapter/ChannelSquearAdapter$3$2;->this$1:Lcom/tudou/adapter/ChannelSquearAdapter$3;

    iget-object v3, v3, Lcom/tudou/adapter/ChannelSquearAdapter$3;->val$aListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/tudou/adapter/ChannelSquearAdapter$3$2$1;->this$2:Lcom/tudou/adapter/ChannelSquearAdapter$3$2;

    iget-object v4, v4, Lcom/tudou/adapter/ChannelSquearAdapter$3$2;->val$v1:Landroid/widget/ImageView;

    invoke-static/range {v0 .. v5}, Lcom/tudou/adapter/ChannelSquearAdapter;->access$200(Lcom/tudou/adapter/ChannelSquearAdapter;Lcom/tudou/adapter/ChannelSquearAdapter$ViewHolder;Lcom/youku/vo/DiscoveryChannelItem;Landroid/widget/ListView;Landroid/widget/ImageView;Z)V

    .line 338
    const v0, 0x7f0d01dd

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 339
    invoke-static {}, Lcom/tudou/ui/fragment/ChannelSquareFragment;->changeSub()V

    .line 343
    return-void
.end method
