.class Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$4;
.super Ljava/lang/Object;
.source "RecommendHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->noResultsTips()V
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
    .line 273
    iput-object p1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$4;->this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$4;->this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    invoke-static {v0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->access$300(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V

    .line 279
    return-void
.end method
