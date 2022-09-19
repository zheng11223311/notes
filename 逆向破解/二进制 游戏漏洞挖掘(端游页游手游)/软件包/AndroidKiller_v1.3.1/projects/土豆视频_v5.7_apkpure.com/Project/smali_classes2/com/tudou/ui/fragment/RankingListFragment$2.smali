.class Lcom/tudou/ui/fragment/RankingListFragment$2;
.super Ljava/lang/Object;
.source "RankingListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/RankingListFragment;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/RankingListFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/RankingListFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/tudou/ui/fragment/RankingListFragment$2;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tudou/ui/fragment/RankingListFragment$2;->this$0:Lcom/tudou/ui/fragment/RankingListFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RankingListFragment;->access$100(Lcom/tudou/ui/fragment/RankingListFragment;)Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 112
    return-void
.end method
