.class Lio/rong/imkit/fragment/MessageListFragment$4;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lio/rong/imkit/widget/adapter/MessageListAdapter$OnItemHandlerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/fragment/MessageListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 215
    iput-object p1, p0, Lio/rong/imkit/fragment/MessageListFragment$4;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWarningViewClick(ILio/rong/imlib/model/Message;Landroid/view/View;)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "data"    # Lio/rong/imlib/model/Message;
    .param p3, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 219
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$4;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-virtual {v5}, Lio/rong/imkit/fragment/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lio/rong/imkit/util/TudouUtil;->hasInternet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 220
    iget-object v5, p0, Lio/rong/imkit/fragment/MessageListFragment$4;->this$0:Lio/rong/imkit/fragment/MessageListFragment;

    invoke-virtual {v5}, Lio/rong/imkit/fragment/MessageListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string/jumbo v6, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 223
    :cond_0
    const/4 v1, 0x1

    .line 224
    .local v1, "isSendComplete":Z
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 226
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 227
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 232
    :goto_0
    if-nez v1, :cond_2

    .line 280
    :goto_1
    return-void

    .line 229
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 235
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v0

    .line 236
    .local v0, "content":Lio/rong/imlib/model/MessageContent;
    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getTargetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lio/rong/imlib/model/Message;->obtain(Ljava/lang/String;Lio/rong/imlib/model/Conversation$ConversationType;Lio/rong/imlib/model/MessageContent;)Lio/rong/imlib/model/Message;

    move-result-object v2

    .line 237
    .local v2, "message":Lio/rong/imlib/model/Message;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [I

    invoke-virtual {p2}, Lio/rong/imlib/model/Message;->getMessageId()I

    move-result v7

    aput v7, v6, v9

    invoke-virtual {v5, v6}, Lio/rong/imkit/RongIMClientWrapper;->deleteMessages([I)Z

    .line 239
    instance-of v5, v0, Lio/rong/message/ImageMessage;

    if-eqz v5, :cond_3

    move-object v3, v0

    .line 240
    check-cast v3, Lio/rong/message/ImageMessage;

    .line 241
    .local v3, "msg":Lio/rong/message/ImageMessage;
    invoke-virtual {v3}, Lio/rong/message/ImageMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3}, Lio/rong/message/ImageMessage;->getLocalUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3}, Lio/rong/message/ImageMessage;->isFull()Z

    move-result v7

    invoke-static {v5, v6, v7}, Lio/rong/message/ImageMessage;->obtain(Landroid/net/Uri;Landroid/net/Uri;Z)Lio/rong/message/ImageMessage;

    move-result-object v0

    move-object v5, v0

    .line 242
    check-cast v5, Lio/rong/message/ImageMessage;

    invoke-virtual {v3}, Lio/rong/message/ImageMessage;->getExtra()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/message/ImageMessage;->setExtra(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2, v0}, Lio/rong/imlib/model/Message;->setContent(Lio/rong/imlib/model/MessageContent;)V

    .line 245
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v5

    new-instance v6, Lio/rong/imkit/fragment/MessageListFragment$4$1;

    invoke-direct {v6, p0, p3}, Lio/rong/imkit/fragment/MessageListFragment$4$1;-><init>(Lio/rong/imkit/fragment/MessageListFragment$4;Landroid/view/View;)V

    invoke-virtual {v5, v2, v8, v8, v6}, Lio/rong/imkit/RongIMClientWrapper;->sendImageMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendImageMessageCallback;)V

    goto :goto_1

    .line 268
    .end local v3    # "msg":Lio/rong/message/ImageMessage;
    :cond_3
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v5

    invoke-virtual {v5}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v5

    new-instance v6, Lio/rong/imkit/fragment/MessageListFragment$4$2;

    invoke-direct {v6, p0, p3}, Lio/rong/imkit/fragment/MessageListFragment$4$2;-><init>(Lio/rong/imkit/fragment/MessageListFragment$4;Landroid/view/View;)V

    invoke-virtual {v5, v2, v8, v8, v6}, Lio/rong/imkit/RongIMClientWrapper;->sendMessage(Lio/rong/imlib/model/Message;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/RongIMClient$SendMessageCallback;)Lio/rong/imlib/model/Message;

    goto :goto_1
.end method
