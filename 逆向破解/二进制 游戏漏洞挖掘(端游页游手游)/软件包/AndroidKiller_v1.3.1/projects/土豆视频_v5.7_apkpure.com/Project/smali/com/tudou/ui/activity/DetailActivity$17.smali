.class Lcom/tudou/ui/activity/DetailActivity$17;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/DetailActivity;->showImgFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
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
    .line 3449
    iput-object p1, p0, Lcom/tudou/ui/activity/DetailActivity$17;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    iput-object p2, p0, Lcom/tudou/ui/activity/DetailActivity$17;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3452
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$17;->this$0:Lcom/tudou/ui/activity/DetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/ui/activity/DetailActivity;->access$1402(Lcom/tudou/ui/activity/DetailActivity;Lcom/tudou/detail/fragment/ImagePreviewFragment;)Lcom/tudou/detail/fragment/ImagePreviewFragment;

    .line 3453
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$17;->val$r:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3454
    iget-object v0, p0, Lcom/tudou/ui/activity/DetailActivity$17;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3456
    :cond_0
    return-void
.end method
