.class Lio/rong/imkit/fragment/MessageListFragment$14;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageListFragment;->onEventMainThread(Lio/rong/imkit/model/Event$MessagesClearEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/fragment/MessageListFragment;


# direct methods
.method constructor <init>(Lio/rong/imkit/fragment/MessageListFragment;)V
    .locals 0

    .prologue
    .line 1106
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$14;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1109
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$14;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 1110
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$14;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 1111
    iget-object v0, p0, Lio/rong/imkit/fragment/MessageListFragment$14;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    iget-object v0, v0, Lio/rong/imkit/fragment/MessageListFragment;->mAdapter:Lio/rong/imkit/widget/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lio/rong/imkit/widget/adapter/MessageListAdapter;->notifyDataSetChanged()V

    .line 1112
    return-void
.end method
