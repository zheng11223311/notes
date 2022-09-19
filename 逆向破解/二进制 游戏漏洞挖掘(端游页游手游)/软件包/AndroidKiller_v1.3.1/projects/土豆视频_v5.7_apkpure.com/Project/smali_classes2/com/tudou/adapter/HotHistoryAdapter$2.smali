.class Lcom/tudou/adapter/HotHistoryAdapter$2;
.super Ljava/lang/Object;
.source "HotHistoryAdapter.java"

# interfaces
.implements Lcom/youku/widget/MultipleTextView$OnMultipleTVItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/HotHistoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/HotHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/HotHistoryAdapter;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/tudou/adapter/HotHistoryAdapter$2;->this$0:Lcom/tudou/adapter/HotHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultipleTVItemClick(Landroid/view/View;ILcom/youku/vo/SearchOfHistory;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "history"    # Lcom/youku/vo/SearchOfHistory;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter$2;->this$0:Lcom/tudou/adapter/HotHistoryAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/HotHistoryAdapter;->access$100(Lcom/tudou/adapter/HotHistoryAdapter;)Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/tudou/adapter/HotHistoryAdapter$2;->this$0:Lcom/tudou/adapter/HotHistoryAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/HotHistoryAdapter;->access$100(Lcom/tudou/adapter/HotHistoryAdapter;)Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;

    move-result-object v0

    iget v1, p3, Lcom/youku/vo/SearchOfHistory;->type:I

    iget-object v2, p3, Lcom/youku/vo/SearchOfHistory;->word:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p2}, Lcom/tudou/adapter/HotHistoryAdapter$OnHistoryClickListener;->onHistroyItemClick(ILjava/lang/String;I)V

    .line 153
    :cond_0
    return-void
.end method
