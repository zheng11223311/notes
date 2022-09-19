.class Lcom/tudou/ui/fragment/RankingListDetailFragment$5;
.super Ljava/lang/Object;
.source "RankingListDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/RankingListDetailFragment;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/RankingListDetailFragment;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$5;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListDetailFragment$5;->this$0:Lcom/tudou/ui/fragment/RankingListDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RankingListDetailFragment;->access$1100(Lcom/tudou/ui/fragment/RankingListDetailFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 195
    return-void
.end method
