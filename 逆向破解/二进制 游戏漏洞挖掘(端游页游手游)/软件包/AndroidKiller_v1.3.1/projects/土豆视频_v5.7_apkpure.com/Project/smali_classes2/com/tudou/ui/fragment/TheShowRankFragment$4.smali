.class Lcom/tudou/ui/fragment/TheShowRankFragment$4;
.super Ljava/lang/Object;
.source "TheShowRankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/TheShowRankFragment;->setListViewHeader(Landroid/view/View;Lcom/youku/vo/TheShowRankResults$TheShowRankResult;)V
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
    .line 382
    iput-object p1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$4;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$4;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1700(Lcom/tudou/ui/fragment/TheShowRankFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/TheShowRankFragment$4;->this$0:Lcom/tudou/ui/fragment/TheShowRankFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/TheShowRankFragment;->access$1800(Lcom/tudou/ui/fragment/TheShowRankFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->getYktk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tudou/laifeng/lfJsObj;->getLaiFengYktk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "00014644"

    invoke-static {v0, v1, v2, v3}, Llfsdk/LFSdkManager;->enterLaifengRoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 387
    return-void
.end method
