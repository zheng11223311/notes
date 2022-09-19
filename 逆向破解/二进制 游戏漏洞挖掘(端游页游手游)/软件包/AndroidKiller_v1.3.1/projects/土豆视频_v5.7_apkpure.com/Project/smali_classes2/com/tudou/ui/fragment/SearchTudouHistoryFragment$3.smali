.class Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$3;
.super Ljava/lang/Object;
.source "SearchTudouHistoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->showDeleteDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

.field final synthetic val$builder:Lcom/youku/widget/TudouDialog;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;Ljava/util/List;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$3;->val$list:Ljava/util/List;

    iput-object p3, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$3;->val$builder:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$3;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 204
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$3;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$300(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->dropSearchHistory()V

    .line 207
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$3;->val$builder:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 208
    return-void
.end method
