.class Lcom/tudou/ui/fragment/TheShowRankFragment$7;
.super Ljava/lang/Object;
.source "TheShowRankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/TheShowRankFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/TheShowRankFragment;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$7;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 516
    const-string v1, "t1.find_theshow.theshowrules"

    .line 517
    .local v1, "refercode":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 518
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 519
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$7;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$2200(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/TheShowRuleActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 521
    iget-object v2, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$7;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$2300(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 522
    return-void
.end method
