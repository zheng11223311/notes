.class Lcom/tudou/adapter/ChannelSquearAdapter$1;
.super Ljava/lang/Object;
.source "ChannelSquearAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/ChannelSquearAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

.field final synthetic val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ChannelSquearAdapter;Lcom/youku/vo/DiscoveryChannelItem;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/tudou/adapter/ChannelSquearAdapter$1;->this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/ChannelSquearAdapter$1;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    const-string v2, "go_podcast"

    const-wide/16 v4, 0x1f4

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/tudou/adapter/ChannelSquearAdapter$1;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget v2, v2, Lcom/youku/vo/DiscoveryChannelItem;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 120
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tudou/adapter/ChannelSquearAdapter$1;->this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/ChannelSquearAdapter;->access$000(Lcom/tudou/adapter/ChannelSquearAdapter;)Lcom/tudou/ui/activity/ChannelSquareActivity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/NewPodcastActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v1, "detailIntent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "userid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/adapter/ChannelSquearAdapter$1;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget v4, v4, Lcom/youku/vo/DiscoveryChannelItem;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "from"

    const-string v3, "attention"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v2, "username"

    iget-object v3, p0, Lcom/tudou/adapter/ChannelSquearAdapter$1;->val$dcItem:Lcom/youku/vo/DiscoveryChannelItem;

    iget-object v3, v3, Lcom/youku/vo/DiscoveryChannelItem;->nick:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v2, "TAG"

    iget-object v3, p0, Lcom/tudou/adapter/ChannelSquearAdapter$1;->this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

    invoke-static {v3}, Lcom/tudou/adapter/ChannelSquearAdapter;->access$100(Lcom/tudou/adapter/ChannelSquearAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 130
    iget-object v2, p0, Lcom/tudou/adapter/ChannelSquearAdapter$1;->this$0:Lcom/tudou/adapter/ChannelSquearAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/ChannelSquearAdapter;->access$000(Lcom/tudou/adapter/ChannelSquearAdapter;)Lcom/tudou/ui/activity/ChannelSquareActivity;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-static {v2, v1, v3}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 136
    const-string v2, "t1.channel_personal.perchannel"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method
