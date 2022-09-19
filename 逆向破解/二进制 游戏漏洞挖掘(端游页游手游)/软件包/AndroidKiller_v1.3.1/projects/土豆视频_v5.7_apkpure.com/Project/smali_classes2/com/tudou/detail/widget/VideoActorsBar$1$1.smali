.class Lcom/tudou/detail/widget/VideoActorsBar$1$1;
.super Ljava/lang/Object;
.source "VideoActorsBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoActorsBar$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/detail/widget/VideoActorsBar$1;

.field final synthetic val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoActorsBar$1;Lcom/tudou/ui/activity/DetailActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoActorsBar$1$1;->this$1:Lcom/tudou/detail/widget/VideoActorsBar$1;

    iput-object p2, p0, Lcom/tudou/detail/widget/VideoActorsBar$1$1;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    iput-object p3, p0, Lcom/tudou/detail/widget/VideoActorsBar$1$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoActorsBar$1$1;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    iget-object v0, p0, Lcom/tudou/detail/widget/VideoActorsBar$1$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/NewVideoDetail$Detail$Actor;

    invoke-virtual {v1, v0}, Lcom/tudou/ui/activity/DetailActivity;->onBtnActorClick(Lcom/youku/vo/NewVideoDetail$Detail$Actor;)V

    .line 82
    return-void
.end method
