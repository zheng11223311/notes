.class Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$1;
.super Ljava/lang/Object;
.source "SearchTudouHistoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$1;->this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 266
    const-string v0, "\u641c\u7d22\u9875\u641c\u7d22\u5386\u53f2\u6e05\u7a7a"

    const-class v1, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u641c\u7d22\u9875-\u5386\u53f2\u6e05\u7a7a"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$1;->this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$1;->this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->access$400(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->showDeleteDialog(Ljava/util/List;)V

    .line 271
    return-void
.end method
