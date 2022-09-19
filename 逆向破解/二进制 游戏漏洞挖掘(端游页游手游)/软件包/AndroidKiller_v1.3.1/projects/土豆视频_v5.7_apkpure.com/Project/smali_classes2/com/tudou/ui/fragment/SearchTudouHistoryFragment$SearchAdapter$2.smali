.class Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;I)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;->this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    iput p2, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 298
    const-string v1, "\u641c\u7d22\u9875\u641c\u7d22\u5386\u53f2\u5220\u9664"

    const-class v2, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u641c\u7d22\u9875-\u5386\u53f2\u5220\u9664"

    invoke-static {v1, v2, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;->this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->access$400(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchOfHistory;

    iget-object v2, v1, Lcom/youku/vo/SearchOfHistory;->word:Ljava/lang/String;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;->this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->access$400(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchOfHistory;

    iget v1, v1, Lcom/youku/vo/SearchOfHistory;->type:I

    invoke-static {v2, v1}, Lcom/youku/data/SQLiteManagerTudou;->deleteSearchHistoryByVid(Ljava/lang/String;I)Z

    .line 303
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 304
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;->this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$500(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 305
    const/16 v1, 0xbd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 306
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;->this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$300(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;->this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->access$400(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 308
    sget-boolean v1, Lcom/tudou/android/Youku;->isPad:Z

    if-nez v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;->this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$100(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;->this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->listViewHis:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 322
    :goto_1
    return-void

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;->this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$600(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 315
    :cond_1
    sget-boolean v1, Lcom/tudou/android/Youku;->isPad:Z

    if-nez v1, :cond_2

    .line 316
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;->this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$100(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 320
    :goto_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;->this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->listViewHis:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter$2;->this$1:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment$SearchAdapter;->this$0:Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;->access$600(Lcom/tudou/ui/fragment/SearchTudouHistoryFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2
.end method
