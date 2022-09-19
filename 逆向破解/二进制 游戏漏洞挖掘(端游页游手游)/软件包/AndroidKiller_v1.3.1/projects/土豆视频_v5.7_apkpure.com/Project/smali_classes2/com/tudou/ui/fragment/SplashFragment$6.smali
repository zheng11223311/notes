.class Lcom/tudou/ui/fragment/SplashFragment$6;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/SplashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SplashFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SplashFragment;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/tudou/ui/fragment/SplashFragment$6;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$6;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/SplashFragment;->access$1602(Lcom/tudou/ui/fragment/SplashFragment;Z)Z

    .line 271
    const-string v0, "t1.find_subrecommend.close"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 272
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashFragment$6;->this$0:Lcom/tudou/ui/fragment/SplashFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SplashFragment;->access$1700(Lcom/tudou/ui/fragment/SplashFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 273
    return-void
.end method
