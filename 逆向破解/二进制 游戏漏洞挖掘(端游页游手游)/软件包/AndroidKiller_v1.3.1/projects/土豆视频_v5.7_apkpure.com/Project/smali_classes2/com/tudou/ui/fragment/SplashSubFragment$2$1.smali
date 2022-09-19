.class Lcom/tudou/ui/fragment/SplashSubFragment$2$1;
.super Ljava/lang/Object;
.source "SplashSubFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SplashSubFragment$2;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/SplashSubFragment$2;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SplashSubFragment$2;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/tudou/ui/fragment/SplashSubFragment$2$1;->this$1:Lcom/tudou/ui/fragment/SplashSubFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment$2$1;->this$1:Lcom/tudou/ui/fragment/SplashSubFragment$2;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SplashSubFragment$2;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/SplashSubFragment;->setBtnAllBackground()V

    .line 273
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment$2$1;->this$1:Lcom/tudou/ui/fragment/SplashSubFragment$2;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SplashSubFragment$2;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SplashSubFragment;->access$200(Lcom/tudou/ui/fragment/SplashSubFragment;)Lcom/tudou/guide/SplashAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/guide/SplashAdapter;->notifyDataSetChanged()V

    .line 274
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment$2$1;->this$1:Lcom/tudou/ui/fragment/SplashSubFragment$2;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SplashSubFragment$2;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SplashSubFragment;->access$100(Lcom/tudou/ui/fragment/SplashSubFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment$2$1;->this$1:Lcom/tudou/ui/fragment/SplashSubFragment$2;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SplashSubFragment$2;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SplashSubFragment;->access$300(Lcom/tudou/ui/fragment/SplashSubFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 276
    return-void
.end method
