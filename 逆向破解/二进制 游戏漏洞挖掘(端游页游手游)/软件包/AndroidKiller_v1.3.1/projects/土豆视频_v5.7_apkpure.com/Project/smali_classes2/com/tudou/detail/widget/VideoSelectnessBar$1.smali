.class Lcom/tudou/detail/widget/VideoSelectnessBar$1;
.super Ljava/lang/Object;
.source "VideoSelectnessBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoSelectnessBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoSelectnessBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoSelectnessBar;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSelectnessBar$1;->this$0:Lcom/tudou/detail/widget/VideoSelectnessBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoSelectnessBar$1;->this$0:Lcom/tudou/detail/widget/VideoSelectnessBar;

    invoke-virtual {v1}, Lcom/tudou/detail/widget/VideoSelectnessBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/tudou/ui/activity/DetailActivity;

    if-eqz v1, :cond_0

    .line 63
    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .end local v0    # "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoSelectnessBar$1;->this$0:Lcom/tudou/detail/widget/VideoSelectnessBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoSelectnessBar;->access$000(Lcom/tudou/detail/widget/VideoSelectnessBar;)Lcom/tudou/detail/vo/Interactive;

    move-result-object v1

    iget-object v1, v1, Lcom/tudou/detail/vo/Interactive;->mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    iget-object v1, v1, Lcom/tudou/detail/vo/Interactive$SelectnessTab;->mTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSelectnessBar$1;->this$0:Lcom/tudou/detail/widget/VideoSelectnessBar;

    invoke-static {v2}, Lcom/tudou/detail/widget/VideoSelectnessBar;->access$000(Lcom/tudou/detail/widget/VideoSelectnessBar;)Lcom/tudou/detail/vo/Interactive;

    move-result-object v2

    iget-object v2, v2, Lcom/tudou/detail/vo/Interactive;->mSelectnessTab:Lcom/tudou/detail/vo/Interactive$SelectnessTab;

    iget-object v2, v2, Lcom/tudou/detail/vo/Interactive$SelectnessTab;->mCardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/tudou/ui/activity/DetailActivity;->onSelectnessTitleClick(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 65
    :cond_0
    return-void
.end method
