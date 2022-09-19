.class Lcom/tudou/ui/fragment/SplashSubFragment$2;
.super Ljava/lang/Object;
.source "SplashSubFragment.java"

# interfaces
.implements Lcom/tudou/guide/SplashSubManager$OnAddAttention;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SplashSubFragment;->subAllFollow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SplashSubFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SplashSubFragment;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/tudou/ui/fragment/SplashSubFragment$2;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment$2;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SplashSubFragment;->access$400(Lcom/tudou/ui/fragment/SplashSubFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/SplashSubFragment$2$1;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/SplashSubFragment$2$1;-><init>(Lcom/tudou/ui/fragment/SplashSubFragment$2;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method
