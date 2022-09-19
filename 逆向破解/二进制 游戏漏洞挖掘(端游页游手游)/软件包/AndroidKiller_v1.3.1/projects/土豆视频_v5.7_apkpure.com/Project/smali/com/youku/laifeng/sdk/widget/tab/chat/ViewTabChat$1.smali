.class Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat$1;
.super Ljava/lang/Object;
.source "ViewTabChat.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 62
    if-nez p4, :cond_0

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_0
    add-int v0, p2, p3

    if-ne v0, p4, :cond_1

    if-lez p4, :cond_1

    .line 66
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->isLastRow:Z

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->isLastRow:Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 49
    if-eqz p2, :cond_1

    .line 50
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->access$000(Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    iget-boolean v0, v0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->isLastRow:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->access$100(Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;)V

    .line 54
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat$1;->this$0:Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;->access$000(Lcom/youku/laifeng/sdk/widget/tab/chat/ViewTabChat;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    goto :goto_0
.end method
