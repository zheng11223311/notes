.class Lcom/tudou/guide/SplashAdapter$1$4;
.super Ljava/lang/Object;
.source "SplashAdapter.java"

# interfaces
.implements Lcom/tudou/guide/SplashSubManager$OnAddAttention;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/guide/SplashAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/guide/SplashAdapter$1;


# direct methods
.method constructor <init>(Lcom/tudou/guide/SplashAdapter$1;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/tudou/guide/SplashAdapter$1$4;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/tudou/guide/SplashAdapter$1$4;->this$1:Lcom/tudou/guide/SplashAdapter$1;

    iget-object v0, v0, Lcom/tudou/guide/SplashAdapter$1;->this$0:Lcom/tudou/guide/SplashAdapter;

    invoke-static {v0}, Lcom/tudou/guide/SplashAdapter;->access$000(Lcom/tudou/guide/SplashAdapter;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    new-instance v1, Lcom/tudou/guide/SplashAdapter$1$4$1;

    invoke-direct {v1, p0}, Lcom/tudou/guide/SplashAdapter$1$4$1;-><init>(Lcom/tudou/guide/SplashAdapter$1$4;)V

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method
