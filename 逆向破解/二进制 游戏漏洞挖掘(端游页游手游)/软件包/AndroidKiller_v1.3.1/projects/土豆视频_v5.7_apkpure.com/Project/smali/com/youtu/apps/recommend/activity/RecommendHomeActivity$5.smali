.class Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$5;
.super Ljava/lang/Object;
.source "RecommendHomeActivity.java"

# interfaces
.implements Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$StateChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;


# direct methods
.method constructor <init>(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$5;->this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public StateChanged(I)V
    .locals 2
    .param p1, "selecttab"    # I

    .prologue
    .line 330
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$5;->this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    rem-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->switchTab(I)V

    .line 331
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$5;->this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    invoke-static {v0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->access$400(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)Lcom/youtu/apps/widget/YoutuViewPager;

    move-result-object v0

    rem-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/youtu/apps/widget/YoutuViewPager;->setCurrentItem(I)V

    .line 332
    return-void
.end method
