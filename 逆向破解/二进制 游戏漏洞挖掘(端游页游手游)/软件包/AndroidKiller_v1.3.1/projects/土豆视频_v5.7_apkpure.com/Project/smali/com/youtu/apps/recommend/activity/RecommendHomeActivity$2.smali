.class Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$2;
.super Ljava/lang/Object;
.source "RecommendHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->initTitle()V
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
    .line 142
    iput-object p1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$2;->this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$2;->this$0:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    invoke-virtual {v0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->finish()V

    .line 147
    return-void
.end method
