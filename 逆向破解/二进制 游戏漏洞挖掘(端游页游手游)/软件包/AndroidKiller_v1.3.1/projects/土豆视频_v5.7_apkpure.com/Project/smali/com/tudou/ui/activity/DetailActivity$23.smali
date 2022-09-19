.class Lcom/tudou/ui/activity/DetailActivity$23;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity;->showFirstScreenshotCling(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/DetailActivity;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/DetailActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 3785
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$23;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/DetailActivity$23;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3788
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$23;->val$r:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3789
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$23;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3791
    :cond_0
    return-void
.end method
