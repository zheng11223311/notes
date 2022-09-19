.class Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$2;
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


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;Lcom/youku/widget/TudouDialog;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$2;->val$builder:Lcom/youku/widget/TudouDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$2;->val$builder:Lcom/youku/widget/TudouDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 197
    return-void
.end method
