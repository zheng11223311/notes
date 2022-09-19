.class Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;
.super Ljava/lang/Object;
.source "ImageInputProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/provider/ImageInputProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AttachRunnable"
.end annotation


# instance fields
.field mUri:Landroid/net/Uri;

.field final synthetic this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;


# direct methods
.method public constructor <init>(Lio/rong/imkit/widget/provider/ImageInputProvider;Landroid/net/Uri;)V
    .locals 0
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 81
    iput-object p1, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;->mUri:Landroid/net/Uri;

    .line 83
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 87
    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-virtual {v0}, Lio/rong/imkit/widget/provider/ImageInputProvider;->getContext()Lio/rong/imkit/RongContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;->mUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_data"

    aput-object v5, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 89
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 90
    :cond_0
    const-string v0, "AttachRunnable"

    const-string v1, "cursor is not available"

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 97
    .local v8, "uri":Landroid/net/Uri;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 99
    const-string v0, "AttachRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert image and save to db, uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lio/rong/imkit/RLog;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {v8, v8}, Lio/rong/message/ImageMessage;->obtain(Landroid/net/Uri;Landroid/net/Uri;)Lio/rong/message/ImageMessage;

    move-result-object v4

    .line 101
    .local v4, "content":Lio/rong/message/ImageMessage;
    iget-object v0, p0, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;->this$0:Lio/rong/imkit/widget/provider/ImageInputProvider;

    invoke-virtual {v0}, Lio/rong/imkit/widget/provider/ImageInputProvider;->getCurrentConversation()Lio/rong/imlib/model/Conversation;

    move-result-object v6

    .line 103
    .local v6, "conversation":Lio/rong/imlib/model/Conversation;
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    .line 106
    invoke-static {}, Lio/rong/imkit/RongIM;->getInstance()Lio/rong/imkit/RongIM;

    move-result-object v0

    invoke-virtual {v0}, Lio/rong/imkit/RongIM;->getRongIMClient()Lio/rong/imkit/RongIMClientWrapper;

    move-result-object v0

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation;->getConversationType()Lio/rong/imlib/model/Conversation$ConversationType;

    move-result-object v1

    invoke-virtual {v6}, Lio/rong/imlib/model/Conversation;->getTargetId()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable$1;

    invoke-direct {v5, p0}, Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable$1;-><init>(Lio/rong/imkit/widget/provider/ImageInputProvider$AttachRunnable;)V

    invoke-virtual/range {v0 .. v5}, Lio/rong/imkit/RongIMClientWrapper;->insertMessage(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/lang/String;Lio/rong/imlib/model/MessageContent;Lio/rong/imlib/RongIMClient$ResultCallback;)V

    goto :goto_0
.end method
