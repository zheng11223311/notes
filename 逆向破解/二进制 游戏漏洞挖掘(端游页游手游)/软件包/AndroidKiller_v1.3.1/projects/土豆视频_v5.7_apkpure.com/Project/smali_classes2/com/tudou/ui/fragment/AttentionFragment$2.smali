.class Lcom/tudou/ui/fragment/AttentionFragment$2;
.super Ljava/lang/Object;
.source "AttentionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/AttentionFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/AttentionFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AttentionFragment;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/tudou/ui/fragment/AttentionFragment$2;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 240
    const-string v1, "Attention_add"

    const-wide/16 v2, 0x320

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 242
    :cond_0
    const-string v1, "t1.subscribe_mysubscribe.more"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$2;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/AttentionFragment;->context:Landroid/content/Context;

    const-class v2, Lcom/tudou/ui/activity/ChannelSquareActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 245
    iget-object v1, p0, Lcom/tudou/ui/fragment/AttentionFragment$2;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/AttentionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
